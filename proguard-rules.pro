# ProGuard rules for VengaX

# Keep main application class
-keep class com.vengax.** { *; }

# Keep WebView and any interfaces used via reflection
-keep class android.webkit.** { *; }

# Avoid obfuscation of AppCompat (optional for stability)
-keep class androidx.appcompat.** { *; }

# Keep annotations
-keepattributes *Annotation*

# Keep classes used in XML layouts
-keepclassmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

# Keep Activity classes
-keep public class * extends android.app.Activity
-keep public class * extends androidx.appcompat.app.AppCompatActivity
