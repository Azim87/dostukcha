package kgz.dostukcha;


import android.Manifest;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.android.sdk.dozpsdk.services.LivenessService;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

    private byte[] Image;
    private String CHANNEL = "dostukcha/liveness";

    private MethodChannel.Result chanelResult;

    private MyLivenessConfiguration configuration;

    int PERMISSION_ALL = 1;
    String[] PERMISSIONS = {Manifest.permission.CAMERA};

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);

        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
                if (call.method.equals("startLiveness")) {
                    chanelResult = result;

                    final String culture = call.argument("culture");

                    if (culture != null) {
                        if (culture.equals("kg")) {
                            configuration = new MyLivenessConfiguration.Builder()
                                    .setDebug(false)
                                    .setPreviewAspectRationEnable(true)
                                    .setFrontMessage("Камераны түз караңыз\n жана кыймылдабаңыз")
                                    .setRightMessage("Башыңызды оңго буруңуз")
                                    .setLeftMessage("Башыңызды солго буруңуз")
                                    .setSmileMessage("Жылмайып коюңуз ")
                                    .setEyeMessage("Ирмеп коюнуз")
                                    .setDoneMessage("Верификация бутту")
                                    .setLiveViewPortEnable(true)
                                    .setPreviewAspectRationEnable(true)
                                    .build();
                        } else {
                            configuration = new MyLivenessConfiguration.Builder()
                                    .setDebug(true)
                                    .setLiveViewPortEnable(true)
                                    .setPreviewAspectRationEnable(true)
                                    .build();
                        }
                    }


                    PermissionCheck check = new PermissionCheck();
                    check.permissionsCheck(MainActivity.this, PERMISSIONS, PERMISSION_ALL);

                    //LivenessService.getInstance(MainActivity.this).startLiveness(configuration);


                    if (check.havePermission()) {
                        MyLivenessService.getInstance(MainActivity.this).startLiveness(configuration);
                    }
                }
            }
        });
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String permissions[], int[] grantResults) {


        if (requestCode == 1) {
            if (PermissionCheck.hasPermissions(this, PERMISSIONS)) {

                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        MyLivenessService.getInstance(MainActivity.this).startLiveness(configuration);
                    }
                }, 500);
            }
        }
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == RESULT_OK) {
            if (data != null) {
                int dataCode = data.getIntExtra("result", RESULT_OK);
                if (dataCode == LivenessService.LIVENESS_COMPLETE) {

                    Image = LivenessService.LivenessResult.getImage("FrontImage").getImage();

                    if (Image != null) {
                        chanelResult.success(Image);

                    } else {
                        chanelResult.success(null);
                    }
                } else if (dataCode == LivenessService.LIVENESS_ERROR) {
                    chanelResult.success(null);
                }
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    public static class LivenessActivity extends AppCompatActivity {
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
        }
    }
}