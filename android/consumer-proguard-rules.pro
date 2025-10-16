# --- Huawei HMS Core keep rules ---
-keep class com.huawei.** { *; }
-dontwarn com.huawei.**
-dontnote com.huawei.**

# --- Huawei Hianalytics ---
-keep class com.huawei.hianalytics.** { *; }
-dontwarn com.huawei.hianalytics.**

# --- Huawei AppGallery Service Verify Kit ---
-keep class com.huawei.appgallery.** { *; }
-dontwarn com.huawei.appgallery.**

# --- Huawei Secure Library (SafeBase64, SafeString) ---
-keep class com.huawei.secure.android.common.** { *; }
-dontwarn com.huawei.secure.android.common.**

# --- Bouncycastle (crypto primitives) ---
-keep class org.bouncycastle.** { *; }
-dontwarn org.bouncycastle.**

# --- Preserve class metadata ---
-keepattributes *Annotation*
-keepattributes InnerClasses
-keepattributes EnclosingMethod
