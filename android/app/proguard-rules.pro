# Flutter
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }
-dontwarn io.flutter.embedding.**

# Freezed
-keep class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
-keep,allowobfuscation,allowshrinking class * extends com.google.gson.reflect.TypeToken
-keep,allowobfuscation,allowshrinking class * implements com.google.gson.TypeAdapterFactory
-keep,allowobfuscation,allowshrinking class * implements com.google.gson.JsonSerializer
-keep,allowobfuscation,allowshrinking class * implements com.google.gson.JsonDeserializer

# json_serializable
-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.AnnotationsKt
-keepclassmembers class kotlinx.serialization.json.** {
    *** Companion;
}
-keepclasseswithmembers class kotlinx.serialization.json.** {
    kotlinx.serialization.KSerializer serializer(...);
}

# Preserve all native method names and the names of their classes.
-keepclasseswithmembernames class * {
    native <methods>;
}

# Preserve all model classes (adjust package name to your models)
-keep class ru.mosprom.mikron_mobile.data.models.** { *; }
-keep class ru.mosprom.mikron_mobile.domain.entities.** { *; }

# Keep all @JsonSerializable annotated classes
-keep @com.google.gson.annotations.JsonAdapter class * { *; }
-keep class **$Companion { *; }

# Dio
-keep class com.squareup.okhttp3.** { *; }
-keep interface com.squareup.okhttp3.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**

# Retrofit (if used with Dio)
-keepattributes Signature
-keepattributes Exceptions
-keepattributes *Annotation*

# Keep generic signatures
-keepattributes Signature
-keepattributes EnclosingMethod
-keepattributes InnerClasses

# For reflection-based serialization
-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
  @com.squareup.moshi.Json <fields>;
  @com.fasterxml.jackson.annotation.* <fields>;
}

# Keep all enums
-keepclassmembers enum * { *; }

# Prevent stripping of line numbers for debugging crashes
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
