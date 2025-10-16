package com.ikuruzum.sdk_availability

import android.content.Context
import androidx.annotation.NonNull
import com.google.android.gms.common.GoogleApiAvailability
import com.huawei.hms.api.HuaweiApiAvailability
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class SDKAvailabilityPlugin: FlutterPlugin, MethodCallHandler, ActivityAware {
  private lateinit var channel : MethodChannel
  private lateinit var context: Context

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "sdk_availability")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
        "isGoogleServiceAvailable" -> isGoogleServiceAvailable(result)
        "isHuaweiServiceAvailable" -> isHuaweiServiceAvailable(result)
        else -> result.notImplemented()
    }
  }

  private fun isGoogleServiceAvailable(@NonNull result: Result) {
    try {
      val service = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context)
      result.success(service == com.google.android.gms.common.ConnectionResult.SUCCESS)
    } catch (e: Exception) {
      result.success(false)
    }
  }

  private fun isHuaweiServiceAvailable(@NonNull result: Result) {
    try {
      val service = HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(context)
      result.success(service == com.huawei.hms.api.ConnectionResult.SUCCESS)
    } catch (e: Exception) {
      result.success(false)
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {}
  override fun onDetachedFromActivity() {}
  override fun onDetachedFromActivityForConfigChanges() {}
  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {}
}
