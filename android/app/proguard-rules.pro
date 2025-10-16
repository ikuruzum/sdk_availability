# HMS Core ProGuard Rules
-keep class com.huawei.hms.** {*;}
-keep class com.huawei.hianalytics.** {*;}
-keep class com.huawei.hms.framework.** {*;}
-keep class com.huawei.secure.android.common.** {*;}
-keep class org.bouncycastle.** {*;}
-keep class com.huawei.updatesdk.** {*;}
-keep class com.huawei.android.hms.agent.** {*;}

# Keep all classes that might be accessed via reflection
-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}

# Keep the special static methods that are required in all enumeration classes.
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep the annotation class
-keepattributes *Annotation*
-keepattributes InnerClasses
-keepattributes Signature

# Keep the serialization class
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Keep the native methods
-keepclasseswithmembernames class * {
    native <methods>;
}
