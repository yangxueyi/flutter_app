package com.example.flutterapp

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry


class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        registerCustomPlugin(flutterEngine, this)
        registerCustomPlugin1(flutterEngine, this)
    }

    private fun registerCustomPlugin(flutterEngine: FlutterEngine, activity: Activity) {
        MyFlutterPlugin.registerWith(flutterEngine, activity)
    }

    private fun registerCustomPlugin1(flutterEngine: FlutterEngine, activity: Activity) {
        MyGotoFlutterPlugin.registerWith(flutterEngine, activity)
    }


}
