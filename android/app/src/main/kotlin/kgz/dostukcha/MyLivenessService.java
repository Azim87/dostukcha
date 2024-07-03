package kgz.dostukcha;

//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//


import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import com.android.sdk.dozpsdk.models.LivenessConfiguration;
import com.android.sdk.dozpsdk.utils.BitmapUtil;
import com.android.sdk.dozpsdk.utils.LivenessUtil;
import com.android.sdk.dozpsdk.views.MLKitLiveness.processor.FaceDetectorProcessor;
import com.android.sdk.dozpsdk.views.MLKitLiveness.view.GoogleLivenessMLKitActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MyLivenessService {
    public static final String TEMPLATE_RIGHT = "TemplateRight";
    public static final String TEMPLATE_LEFT = "TemplateLeft";
    public static final String TEMPLATE_SMILE = "TemplateSmile";
    public static final String TEMPLATE_EYE = "TemplateEye";
    public static final String TEMPLATE_FRONT = "TemplateFront";
    public static final String TEMPLATES = "Templates";
    public static final String START_DELAY = "StartDelay";
    public static final String SMILE_CONFIDENCE = "SmileConfidence";
    public static final String EYE_CONFIDENCE = "EyeConfidence";
    private final Activity mActivity;
    public static final int LIVENESS_COMPLETE = 0;
    public static final int LIVENESS_ERROR = 1;

    private MyLivenessService(Activity activity) {
        this.mActivity = activity;
    }

    public static MyLivenessService getInstance(Activity activity) {
        com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.init();
        return new MyLivenessService(activity);
    }

    public void startLiveness(MyLivenessConfiguration configuration) {
        if (configuration.isLiveViewPortEnable()) {
            LivenessUtil.isCameraLiveViewportEnabled = 1;
        }

        if (configuration.isDebug()) {
            LivenessUtil.isDebug = 1;
        }

        LivenessUtil.isAspectRationEnable = configuration.isSetAspectRation();
        HashMap<String, String> templates = new HashMap();
        if (configuration.getMessageFront() != null) {
            templates.put("TemplateFront", configuration.getMessageFront());
        }

        if (configuration.getMessageLeft() != null) {
            templates.put("TemplateLeft", configuration.getMessageLeft());
        }

        if (configuration.getMessageRight() != null) {
            templates.put("TemplateRight", configuration.getMessageRight());
        }

        if (configuration.getMessageSmile() != null) {
            templates.put("TemplateSmile", configuration.getMessageSmile());
        }

        if (configuration.getMessageEye() != null) {
            templates.put("TemplateEye", configuration.getMessageEye());
        }

        if(configuration.getDoneMessage() != null) {
            templates.put("TemplateDone", configuration.getDoneMessage());
        }

        Intent i = new Intent(this.mActivity, MyGoogleLivenessMLKitActivity.class);
        i.putExtra("Templates", templates);
        i.putExtra("TemplateDone", configuration.getDoneMessage());
        i.putExtra("StartDelay", configuration.getStartDelay());
        i.putExtra("SmileConfidence", configuration.getSmileConfidence());
        i.putExtra("EyeConfidence", configuration.getEyeConfidence());
        this.mActivity.startActivityForResult(i, 10);
    }

    public static class LivenessResult {
        private static final List<com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel> models = new ArrayList();

        public LivenessResult() {
        }

        public static void init() {
            models.clear();
        }

        public static void addImage(String imageName, Bitmap image) {
            com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel model = new com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel(imageName, image);
            models.add(model);
        }

        public static void addImage(FaceDetectorProcessor.Stage stage, Bitmap image) {
            com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel model = new com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel(stage, image);
            models.add(model);
        }

        public static com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel getImage(String imageName) {
            Iterator var1 = models.iterator();

            while(var1.hasNext()) {
                com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel model = (com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel)var1.next();
                if (model.ImageName.equals(imageName)) {
                    return model;
                }
            }

            return null;
        }

        public static List<com.android.sdk.dozpsdk.services.LivenessService.LivenessResult.LivenessModel> getModels() {
            return models;
        }

        public static class LivenessModel {
            public String ImageName;
            public Bitmap ImageBmp;

            public LivenessModel() {
            }

            public LivenessModel(String name, Bitmap image) {
                this.ImageName = name;
                this.ImageBmp = image;
            }

            public LivenessModel(FaceDetectorProcessor.Stage stage, Bitmap image) {
                this.ImageName = this.imageNameFromStage(stage);
                this.ImageBmp = image;
            }

            public byte[] getImage() {
                return this.ImageBmp == null ? null : BitmapUtil.BitmapToByteArray(this.ImageBmp);
            }

            private String imageNameFromStage(FaceDetectorProcessor.Stage stage) {
                switch (stage) {
                    case Front:
                        return "FrontImage";
                    case Right:
                        return "RightImage";
                    case Left:
                        return "LeftImage";
                    case Eye:
                        return "EyeImage";
                    case Smile:
                        return "SmileImage";
                    case Done:
                        return "FinishImage";
                    default:
                        return "default";
                }
            }
        }
    }
}
