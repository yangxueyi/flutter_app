package com.example.flutterapp

import android.app.Activity
import android.util.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel


/**
 * @author
 * @description: 原生主动发送参数给flutter
 * @date :2020/5/30 15:13
 */
class MyGotoFlutterPlugin(private var activity: Activity) : EventChannel.StreamHandler {
    companion object{
        private const val CHANNEL = "com.yxy/xyPlugin2"//插件名称要与flutter中一样
        private lateinit var channel: EventChannel

        //注册
        fun registerWith(flutterEngine: FlutterEngine, activity: Activity){
            channel = EventChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            val instance = MyGotoFlutterPlugin(activity)
            //setMethodCallHandler在此通道上接收方法调用的回调
            channel.setStreamHandler(instance)
        }
    }


    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        //给flutter发送数据
        events?.success("6666666663333333");
    }

    override fun onCancel(arguments: Any?) {
        Log.i("FlutterPluginCounter", "FlutterPluginCounter:onCancel");
    }
}