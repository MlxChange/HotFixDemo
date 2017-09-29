package hotfix.mlx.hotfixdemo.Plugin

import android.app.Activity
import android.content.Context
import android.content.res.AssetManager
import dalvik.system.DexClassLoader

/**
 * Created by MLX on 2017/9/22.
 */
class PluginManager private constructor(var context: Context){

    var outdir=context.getDir("opt",Activity.MODE_PRIVATE)

    companion object {
        @JvmField
        var instance:PluginManager?=null
        fun getInstance(context: Context):PluginManager {
            if (instance == null) {
                synchronized(PluginManager.javaClass) {
                    if (instance == null) {
                        instance= PluginManager(context)
                    }
                }
            }
            return instance!!
        }

    }

    fun loadApk(apkPath:String){
        var plugninfo=PluginInfo()
        plugninfo.classloader=createClassLoader(apkPath)

    }

    fun createAssetManager(apkPath:String){
        try{
            var assetManager=AssetManager::class.java.newInstance()
        }catch(e:Exception){
            e.printStackTrace()
        }
    }

    fun createResource(apkPath:String){

    }

    fun createClassLoader(apkPath:String):DexClassLoader{
        try {
            var mClassLoader= DexClassLoader(apkPath,outdir.absolutePath,null,context.classLoader)
            return mClassLoader
        }catch (e:Exception){
            e.printStackTrace()
        }
        return null!!
    }

}