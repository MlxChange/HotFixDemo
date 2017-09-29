package hotfix.mlx.hotfixdemo

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import hotfix.mlx.hotfixdemo.Utils.Utils
import hotfix.mlx.hotfixlibrary.HotfixManager
import dalvik.system.DexClassLoader
import hotfix.mlx.hotfixdemo.Plugin.PluginManager


class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun error(v:View){
        Utils.Logi("after")
    }

    fun fix(v:View){
        val path = Utils.getPatchPath(this)
        val instance = HotfixManager.INSTANCE
        instance?.addPatch(path+"/patch.apatch")
    }
    fun plugin(v:View){
        var path=externalCacheDir.absolutePath+"/plugin/plugin.apk"
        val classloader=PluginManager.getInstance(this).createClassLoader(path)
        try {
            val cls = classloader.loadClass("hotfix.mlx.pluginmodule.PluginTest")
            if (cls != null) {
                val instacne = cls.newInstance()
                val method = cls.getMethod("LogPlugin")
                method.invoke(instacne)
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }

    }

}
