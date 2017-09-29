package hotfix.mlx.hotfixlibrary

import android.content.Context
import com.alipay.euler.andfix.patch.PatchManager

/**
 * Created by MLX on 2017/9/29.
 */
class HotfixManager private constructor(){

    private var mpathManager:PatchManager?=null

    companion object {
        var INSTANCE:HotfixManager?=null
        get(){
            if (field == null) {
                synchronized(HotfixManager.javaClass) {
                    if (field == null) {
                        field= HotfixManager()
                    }
                }
            }
            return field!!
        }
    }

    fun init(context: Context){
        mpathManager= PatchManager(context)
        mpathManager?.init(context.packageManager.getPackageInfo(context.packageName,0).versionName)
        mpathManager?.loadPatch()
    }

    fun addPatch(path: String){
        if(mpathManager==null)return
        mpathManager!!.addPatch(path)
    }

}