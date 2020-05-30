package com.example.flutterapp

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


/**
 * @author
 * @description:  flutter调用原生插件（包含传参）
 * @date :2020/5/30 10:36
 */
class MyFlutterPlugin(private var activity: Activity) : MethodChannel.MethodCallHandler {

    companion object{
        val CHANNEL = "com.yxy/xyPlugin"//插件名称要与flutter中一样
        private lateinit var channel: MethodChannel

        //注册
        fun registerWith(flutterEngine: FlutterEngine, activity: Activity){
            channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            val instance = MyFlutterPlugin(activity)
            //setMethodCallHandler在此通道上接收方法调用的回调
            channel.setMethodCallHandler(instance)
        }
    }


    //onMethodCall这个方法是插件的回调，通过MethodCall可以获取参数和方法名，然后再寻找对应的平台业务。
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "1" -> {

                val intent = Intent(activity, OneActivity::class.java)
                activity.startActivity(intent)

                //返回给flutter
                result.success("牛8888逼")

            }
            "2" -> {
                //解析参数
                val text = call.argument<String>("url")
                val intent = Intent(activity, TwoActivity::class.java)
                intent.putExtra("url",text);
                activity.startActivity(intent)
                //返回给flutter
                result.success("999999999")
            }
            else -> {

            }
        }
    }
}