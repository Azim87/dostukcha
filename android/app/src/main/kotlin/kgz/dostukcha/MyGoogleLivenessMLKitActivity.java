package kgz.dostukcha;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.Size;
import android.view.Display;
import android.view.ViewGroup;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.ViewModelProvider;

import com.android.sdk.dozpsdk.models.CameraXViewModel;
import com.android.sdk.dozpsdk.services.LivenessService;
import com.android.sdk.dozpsdk.utils.BitmapUtil;
import com.android.sdk.dozpsdk.utils.LivenessUtil;
import com.android.sdk.dozpsdk.views.MLKitLiveness.graphic.GraphicOverlay;
import com.android.sdk.dozpsdk.views.MLKitLiveness.processor.FaceDetectorProcessor;
import com.android.sdk.dozpsdk.views.MLKitLiveness.processor.FaceDetectorResult;
import com.android.sdk.dozpsdk.views.MLKitLiveness.processor.VisionImageProcessor;
import com.android.sdk.dozpsdk.views.MLKitLiveness.view.CircleView;
import com.google.mlkit.common.MlKitException;

import java.util.HashMap;

public class MyGoogleLivenessMLKitActivity extends AppCompatActivity implements FaceDetectorResult {

    private static final String FACE_DETECTION = "Face Detection";
    private static final String SELFIE_SEGMENTATION = "Selfie Segmentation";
    private static final String TAG = "MLKitLiveness";
    private static final String STATE_SELECTED_MODEL = "selected_model";
    private PreviewView previewView;
    private GraphicOverlay graphicOverlay;
    @Nullable
    private ProcessCameraProvider cameraProvider;
    @Nullable
    private Preview previewUseCase;
    @Nullable
    private ImageAnalysis analysisUseCase;
    @Nullable
    private VisionImageProcessor imageProcessor;
    @Nullable
    private ImageCapture imageCaptureUseCase;
    private boolean needUpdateGraphicOverlayImageSourceInfo;
    private final int lensFacing = 0;
    private CameraSelector cameraSelector;
    private String selectedModel = "Face Detection";
    private CircleView circleView;
    private HashMap<String, String> templates;
    private int startDelay = 3000;
    private float smileConfidence;
    private float eyeConfidence;

    public MyGoogleLivenessMLKitActivity() {
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.wnd_liveness_ml);
        if (savedInstanceState != null) {
            this.selectedModel = savedInstanceState.getString("selected_model", "Face Detection");
        }

        this.cameraSelector = (new CameraSelector.Builder()).requireLensFacing(0).build();
        this.previewView = (PreviewView) this.findViewById(R.id.preview_view);
        this.graphicOverlay = (GraphicOverlay) this.findViewById(R.id.graphic_overlay);
        if (this.getIntent().getSerializableExtra("Templates") != null) {
            this.templates = (HashMap) this.getIntent().getSerializableExtra("Templates");
        }

        if (this.getIntent().getIntExtra("StartDelay", 0) != 0) {
            this.startDelay = this.getIntent().getIntExtra("StartDelay", 0);
        }

        if (this.getIntent().getFloatExtra("SmileConfidence", 0.0F) != 0.0F) {
            this.smileConfidence = this.getIntent().getFloatExtra("SmileConfidence", 0.0F);
        }

        if (this.getIntent().getFloatExtra("EyeConfidence", 0.0F) != 0.0F) {
            this.eyeConfidence = this.getIntent().getFloatExtra("EyeConfidence", 0.0F);
        }

        ((CameraXViewModel) (new ViewModelProvider(this, ViewModelProvider.AndroidViewModelFactory.getInstance(this.getApplication()))).get(CameraXViewModel.class)).getProcessCameraProvider().observe(this, (provider) -> {
            this.cameraProvider = provider;
            this.bindAllCameraUseCases();
        });
    }

    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selected_model", this.selectedModel);
    }

    public void onResume() {
        super.onResume();
        this.bindAllCameraUseCases();
    }

    protected void onPause() {
        super.onPause();
        if (this.imageProcessor != null) {
            this.imageProcessor.stop();
        }

    }

    public void onDestroy() {
        super.onDestroy();
        if (this.imageProcessor != null) {
            this.imageProcessor.stop();
        }

    }

    private void bindAllCameraUseCases() {
        if (this.cameraProvider != null) {
            this.cameraProvider.unbindAll();
            this.bindPreviewUseCase();
            this.bindAnalysisUseCase();
            this.addCircle();
        }

    }

    private void bindPreviewUseCase() {
        if (LivenessUtil.isCameraLiveViewportEnabled(this)) {
            if (this.cameraProvider != null) {
                if (this.previewUseCase != null) {
                    this.cameraProvider.unbind(new UseCase[]{this.previewUseCase});
                }

                Preview.Builder builder = new Preview.Builder();
                if (LivenessUtil.isAspectRationEnable) {
                    builder.setTargetAspectRatio(1);
                } else {
                    Size defSize = this.getPreviewSize();
                    Size targetResolution = LivenessUtil.getCameraXTargetResolution(this, 0, defSize);
                    if (targetResolution != null) {
                        builder.setTargetResolution(targetResolution);
                    }
                }

                this.previewUseCase = builder.build();
                this.previewUseCase.setSurfaceProvider(this.previewView.getSurfaceProvider());
                this.cameraProvider.bindToLifecycle(this, this.cameraSelector, new UseCase[]{this.previewUseCase});
            }
        }
    }

    private void bindAnalysisUseCase() {
        if (this.cameraProvider != null) {
            if (this.analysisUseCase != null) {
                this.cameraProvider.unbind(new UseCase[]{this.analysisUseCase});
            }

            if (this.imageCaptureUseCase != null) {
                this.cameraProvider.unbind(new UseCase[]{this.imageCaptureUseCase});
            }

            if (this.imageProcessor != null) {
                this.imageProcessor.stop();
            }

            try {
                switch (this.selectedModel) {
                    case "Face Detection":
                        Log.i("MLKitLiveness", "Using Face Detector Processor");
                        this.imageProcessor = (new FaceDetectorProcessor(this, this, this.startDelay)).setConfidence(this.smileConfidence, this.eyeConfidence);
                    case "Selfie Segmentation":
                        break;
                    default:
                        throw new IllegalStateException("Invalid model name");
                }
            } catch (Exception var4) {
                Log.e("MLKitLiveness", "Can not create image processor: " + this.selectedModel, var4);
                Toast.makeText(this.getApplicationContext(), "Can not create image processor: " + var4.getLocalizedMessage(), 1).show();
                return;
            }

            ImageAnalysis.Builder builder = new ImageAnalysis.Builder();
            Size targetResolution = null;
            if (LivenessUtil.isAspectRationEnable) {
                builder.setTargetAspectRatio(1);
            } else {
                Size defSize = this.getPreviewSize();
                targetResolution = LivenessUtil.getCameraXTargetResolution(this, 0, defSize);
                if (targetResolution != null) {
                    builder.setTargetResolution(targetResolution);
                }
            }

            this.analysisUseCase = builder.build();
            this.needUpdateGraphicOverlayImageSourceInfo = true;
            this.analysisUseCase.setAnalyzer(ContextCompat.getMainExecutor(this), (imageProxy) -> {
                if (this.needUpdateGraphicOverlayImageSourceInfo) {
                    boolean isImageFlipped = true;
                    int rotationDegrees = imageProxy.getImageInfo().getRotationDegrees();
                    if (rotationDegrees != 0 && rotationDegrees != 180) {
                        this.graphicOverlay.setImageSourceInfo(imageProxy.getHeight(), imageProxy.getWidth(), isImageFlipped);
                    } else {
                        this.graphicOverlay.setImageSourceInfo(imageProxy.getWidth(), imageProxy.getHeight(), isImageFlipped);
                    }

                    this.needUpdateGraphicOverlayImageSourceInfo = false;
                }

                try {
                    if (this.imageProcessor != null) {
                        this.imageProcessor.processImageProxy(imageProxy, this.graphicOverlay);
                    }
                } catch (MlKitException var4) {
                    Log.e("MLKitLiveness", "Failed to process image. Error: " + var4.getLocalizedMessage());
                    Toast.makeText(this.getApplicationContext(), var4.getLocalizedMessage(), 0).show();
                }

            });
            ImageCapture.Builder imageBuilder = new ImageCapture.Builder();
            if (LivenessUtil.isAspectRationEnable) {
                imageBuilder.setTargetAspectRatio(1);
            } else if (targetResolution != null) {
                imageBuilder.setTargetResolution(targetResolution);
            }

            this.imageCaptureUseCase = imageBuilder.build();
            this.cameraProvider.bindToLifecycle(this, this.cameraSelector, new UseCase[]{this.imageCaptureUseCase, this.analysisUseCase});
        }
    }

    private void addCircle() {
        Size size = this.getDeviceScreenSize();
        int screenCenterX = size.getWidth() / 2;
        int screenCenterY = size.getHeight() / 3;
        int textSize = 68;
        if (size.getWidth() < 1024) {
            textSize = 30;
        }

        this.circleView = new CircleView(this, screenCenterX, screenCenterY, textSize);
        if (this.templates != null && this.templates.get("TemplateFront") != null) {
            this.circleView.setText((String) this.templates.get("TemplateFront"));
        } else {
            this.circleView.setText(this.getString(R.string.liveness_look_at_front));
        }

        this.addContentView(this.circleView, new ViewGroup.LayoutParams(-2, -2));
    }

    private Size getDeviceScreenSize() {
        Display display = this.getWindowManager().getDefaultDisplay();
        Point size = new Point();
        display.getSize(size);
        return new Size(size.x, size.y);
    }

    private Size getPreviewSize() {
        Size[] availableSize = LivenessUtil.querySupportResolution(this, 0);
        float tolerance = 0.1F;
        Size screenSize = this.getDeviceScreenSize();
        if (availableSize == null) {
            return screenSize;
        } else {
            Size previewSize = availableSize[0];
            float best_ratio = (float) screenSize.getHeight() / (float) screenSize.getWidth();
            float preview_ratio_diff = Math.abs((float) previewSize.getWidth() / (float) previewSize.getHeight() - best_ratio);

            for (int i = 1; i < availableSize.length; ++i) {
                Size tempSize = availableSize[i];
                if (tempSize.getWidth() >= 1024) {
                    float tmp_ratio_diff = Math.abs((float) tempSize.getWidth() / (float) tempSize.getHeight() - best_ratio);
                    if (Math.abs(tmp_ratio_diff - preview_ratio_diff) < 0.1F && tempSize.getWidth() > previewSize.getWidth() || tmp_ratio_diff < preview_ratio_diff) {
                        previewSize = tempSize;
                        preview_ratio_diff = tmp_ratio_diff;
                    }
                }
            }

            return previewSize;
        }
    }

    private void takePicture(final FaceDetectorProcessor.Stage stage) {
        if (this.imageCaptureUseCase != null) {
            this.imageCaptureUseCase.takePicture(ContextCompat.getMainExecutor(this), new ImageCapture.OnImageCapturedCallback() {
                @SuppressLint({"UnsafeExperimentalUsageError"})
                public void onCaptureSuccess(@NonNull ImageProxy image) {
                    Bitmap imageBmp = LivenessUtil.imageProxyToBitmap(image);
                    if (imageBmp != null && imageBmp.getWidth() > imageBmp.getHeight()) {
                        imageBmp = BitmapUtil.RotateBitmap(imageBmp, 270.0F);
                    }

                    LivenessService.LivenessResult.addImage(stage, imageBmp);
                    if (MyGoogleLivenessMLKitActivity.this.imageProcessor != null) {
                        FaceDetectorProcessor.Stage nextSate = FaceDetectorProcessor.Stage.Wait;
                        switch (stage) {
                            case Front:
                                nextSate = FaceDetectorProcessor.Stage.Right;
                                break;
                            case Right:
                                nextSate = FaceDetectorProcessor.Stage.Left;
                                break;
                            case Left:
                                nextSate = FaceDetectorProcessor.Stage.Smile;
                                break;
                            case Smile:
                                nextSate = FaceDetectorProcessor.Stage.Eye;
                                break;
                            case Done:
                                nextSate = FaceDetectorProcessor.Stage.Done;
                        }

                        ((FaceDetectorProcessor) MyGoogleLivenessMLKitActivity.this.imageProcessor).setStage(nextSate);
                    }

                    image.close();
                }

                public void onError(@NonNull ImageCaptureException exception) {
                    MyGoogleLivenessMLKitActivity.this.finish(1);
                    super.onError(exception);
                }
            });
        }

    }

    public void onStageChange(FaceDetectorProcessor.Stage stage) {
        switch (stage) {
            case Right:
                if (this.templates != null && this.templates.get("TemplateRight") != null) {
                    this.circleView.setText((String) this.templates.get("TemplateRight"));
                } else {
                    this.circleView.setText(this.getString(R.string.liveness_look_at_right));
                }
                break;
            case Left:
                if (this.templates != null && this.templates.get("TemplateLeft") != null) {
                    this.circleView.setText((String) this.templates.get("TemplateLeft"));
                } else {
                    this.circleView.setText(this.getString(R.string.liveness_look_at_left));
                }
                break;
            case Smile:
                if (this.templates != null && this.templates.get("TemplateSmile") != null) {
                    this.circleView.setText((String) this.templates.get("TemplateSmile"));
                } else {
                    this.circleView.setText(this.getString(R.string.liveness_smile));
                }
                break;
            case Done:
                if (this.templates != null && this.templates.get("TemplateDone") != null) {
                    this.circleView.setText((String) this.templates.get("TemplateDone"));
                } else {
                    this.circleView.setText(this.getString(R.string.liveness_verification_complete));
                }
                (new Handler(Looper.getMainLooper())).postDelayed(() -> {
                    this.finish(0);
                }, 1500L);


                break;
            case Eye:
                if (this.templates != null && this.templates.get("TemplateEye") != null) {
                    this.circleView.setText((String) this.templates.get("TemplateEye"));
                } else {
                    this.circleView.setText(this.getString(R.string.liveness_blink));
                }
        }

    }

    public void onComplete(boolean success, boolean takePhoto, FaceDetectorProcessor.Stage stage) {
        if (success) {
            this.circleView.setStyleAndColor(Paint.Style.STROKE, -16711936);
            (new Handler(Looper.getMainLooper())).postDelayed(() -> {
                this.circleView.setStyleAndColor(Paint.Style.STROKE, -1);
            }, 1000L);
        }

        if (takePhoto) {
            this.takePicture(stage);
        }

    }

    private void finish(int resultCode) {
        Intent intent = new Intent();
        intent.putExtra("result", resultCode);
        this.setResult(-1, intent);
        this.finish();
    }
}
