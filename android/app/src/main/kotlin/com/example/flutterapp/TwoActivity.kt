package com.example.flutterapp

import android.app.Activity
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import kotlinx.android.synthetic.main.activity_two.*


class TwoActivity : FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_two)


        val url = intent.getStringExtra("url")

        btn.text = url

        btn.setOnClickListener {

        }

    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        registerCustomPlugin(flutterEngine,this)
    }

    private fun registerCustomPlugin(flutterEngine: FlutterEngine, activity : Activity) {
        MyGotoFlutterPlugin.registerWith(flutterEngine,activity)
    }
}
