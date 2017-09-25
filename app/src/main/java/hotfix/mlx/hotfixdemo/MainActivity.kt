package hotfix.mlx.hotfixdemo

import android.app.Activity
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.os.Environment
import android.util.Log
import dalvik.system.DexClassLoader
import hotfix.mlx.hotfixdemo.Plugin.PluginManager

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        var apkPath=externalCacheDir.absolutePath+"/plugin.apk"
        Log.i("mlx",apkPath)
        loadApk(apkPath)
    }

    private fun loadApk(apkPath: String) {
        var manager=PluginManager.getInstance(this)
        var mclassLoadr=manager.createClassLoader(apkPath)
        try {
            var cls=mclassLoadr.loadClass("hotfix.mlx.pluginmodule.PluginTest")
            if(cls!=null){
                var obj=cls.newInstance()
                var method=cls.getMethod("LogPlugin")
                method.invoke(obj)
            }
        }catch (e:Exception){
            e.printStackTrace()
        }
    }


}
