package hotfix.mlx.hotfixdemo.application

import android.app.Application
import hotfix.mlx.hotfixlibrary.HotfixManager

/**
 * Created by MLX on 2017/9/29.
 */
class HotfixApplication:Application(){


    override fun onCreate() {
        super.onCreate()
        HotfixManager.INSTANCE!!.init(this)
    }

}