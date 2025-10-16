# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# HMS Core ProGuard Rules for consumers
-keep class com.huawei.** {*;}
-keep class org.bouncycastle.** {*;}

# Keep all classes that might be accessed via reflection
-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}

# Keep enum methods
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep annotations and signatures
-keepattributes *Annotation*,InnerClasses,Signature,SourceFile,LineNumberTable

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep specific Huawei packages
-keep class com.huawei.android.telephony.** { *; }
-keep class com.huawei.appgallery.** { *; }
-keep class com.huawei.hianalytics.** { *; }
-keep class com.huawei.hms.framework.** { *; }
-keep class com.huawei.libcore.io.** { *; }
-keep class com.huawei.secure.android.common.** { *; }
-keep class com.huawei.secure.android.common.encrypt.** { *; }
