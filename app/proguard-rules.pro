# Keep necessary classes for CameraX
-keepnames class androidx.camera.** { *; }
-dontwarn androidx.camera.**

# Keep necessary classes for Google Mobile Ads (critical for pop-up ads)
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}
-keep class com.google.android.gms.ads.** { *; }
-keep class com.google.android.gms.dynamite.** { *; }
-dontwarn com.google.android.gms.ads.**
