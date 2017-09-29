package hotfix.mlx.hotfixdemo

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import hotfix.mlx.hotfixdemo.Utils.Utils
import hotfix.mlx.hotfixlibrary.HotfixManager


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

}
