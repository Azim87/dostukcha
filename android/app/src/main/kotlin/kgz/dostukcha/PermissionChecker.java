package kgz.dostukcha;

import android.app.Activity;
import android.content.Context;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

class PermissionCheck {

    private static PermissionCheck instance = null;
    protected static boolean hasPermissions = false;

    public PermissionCheck() {
    }

    public static PermissionCheck getInstance() {
        if (instance == null) {
            instance = new PermissionCheck();
        }

        return instance;
    }

    public void permissionsCheck(Activity activity, String[] permission, int requestCode) {
        String[] var4 = permission;
        int var5 = permission.length;

        for (int var6 = 0; var6 < var5; ++var6) {
            String perm = var4[var6];
            if (ContextCompat.checkSelfPermission(activity, perm) != 0) {
                ActivityCompat.requestPermissions(activity, permission, requestCode);
                hasPermissions = false;
                break;
            }

            hasPermissions = true;
        }

    }

    public boolean havePermission() {
        return hasPermissions;
    }

    public static boolean hasAllPermissionsGranted(int[] grantResults) {
        int[] var1 = grantResults;
        int var2 = grantResults.length;

        for (int var3 = 0; var3 < var2; ++var3) {
            int grantResult = var1[var3];
            if (grantResult == -1) {
                return false;
            }
        }

        return true;
    }

    public static boolean hasPermissions(Context context, String... permissions) {
        if (context != null && permissions != null) {
            String[] var2 = permissions;
            int var3 = permissions.length;

            for (int var4 = 0; var4 < var3; ++var4) {
                String permission = var2[var4];
                if (ActivityCompat.checkSelfPermission(context, permission) != 0) {
                    return false;
                }
            }
        }

        return true;
    }


}
