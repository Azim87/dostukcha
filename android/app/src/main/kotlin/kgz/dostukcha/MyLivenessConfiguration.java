package kgz.dostukcha;

public class MyLivenessConfiguration {

    private boolean debug;
    private boolean liveViewPortEnable;
    private int startDelay = 0;
    private boolean setAspectRation;
    private String messageFront;
    private String messageRight;
    private String messageLeft;
    private String messageSmile;
    private String messageEye;
    private String doneMessage;
    private float smileConfidence = 0.8F;
    private float eyeConfidence = 0.2F;

    public MyLivenessConfiguration() {
    }

    public String getMessageFront() {
        return this.messageFront;
    }

    public String getMessageRight() {
        return this.messageRight;
    }

    public String getMessageLeft() {
        return this.messageLeft;
    }

    public String getMessageSmile() {
        return this.messageSmile;
    }

    public  String getDoneMessage() {
        return  this.doneMessage;
    }

    public String getMessageEye() {
        return this.messageEye;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isLiveViewPortEnable() {
        return this.liveViewPortEnable;
    }

    public int getStartDelay() {
        return this.startDelay == 0 ? 3000 : this.startDelay;
    }

    public boolean isSetAspectRation() {
        return this.setAspectRation;
    }

    public float getEyeConfidence() {
        return this.eyeConfidence;
    }

    public float getSmileConfidence() {
        return this.smileConfidence;
    }

    public static class Builder {
        private final MyLivenessConfiguration configuration = new MyLivenessConfiguration();

        public Builder() {
        }

        public MyLivenessConfiguration.Builder setDebug(boolean debug) {
            this.configuration.debug = debug;
            return this;
        }

        public MyLivenessConfiguration.Builder setLiveViewPortEnable(boolean enable) {
            this.configuration.liveViewPortEnable = enable;
            return this;
        }

        public MyLivenessConfiguration.Builder setStartDelay(int delay) {
            this.configuration.startDelay = delay;
            return this;
        }

        public MyLivenessConfiguration.Builder setFrontMessage(String message) {
            this.configuration.messageFront = message;
            return this;
        }

        public MyLivenessConfiguration.Builder setLeftMessage(String message) {
            this.configuration.messageLeft = message;
            return this;
        }

        public MyLivenessConfiguration.Builder setRightMessage(String message) {
            this.configuration.messageRight = message;
            return this;
        }

        public MyLivenessConfiguration.Builder setSmileMessage(String message) {
            this.configuration.messageSmile = message;
            return this;
        }

        public MyLivenessConfiguration.Builder setEyeMessage(String message) {
            this.configuration.messageEye = message;
            return this;
        }

        public MyLivenessConfiguration.Builder setPreviewAspectRationEnable(boolean value) {
            this.configuration.setAspectRation = value;
            return this;
        }

        public MyLivenessConfiguration.Builder setSmileConfidence(float value) {
            this.configuration.smileConfidence = value;
            return this;
        }

        public MyLivenessConfiguration.Builder setEyeConfidence(float value) {
            this.configuration.eyeConfidence = value;
            return this;
        }

        public MyLivenessConfiguration.Builder setDoneMessage(String message) {
            this.configuration.doneMessage = message;
            return this;
        }

        public MyLivenessConfiguration build() {
            return this.configuration;
        }
    }
}
