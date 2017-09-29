package hotfix.mlx.hotfixdemo.Utils

import android.content.Context
import android.util.Log
import java.io.File



object Utils{

    val SUFFIX=".patch"

    fun Logi(message:String){
        Log.i("mlx",message)
    }

    fun getPatchPath(context: Context):String{
        val path=context.externalCacheDir.absolutePath+"/patch/"
        var file=File(path)
        if(file==null || !file.exists()){
            file.mkdir()
        }
        return path
    }
}