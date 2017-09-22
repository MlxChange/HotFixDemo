package hotfix.mlx.hotfixdemo.Plugin

import android.content.res.AssetManager
import android.content.res.Resources

/**
 * Created by MLX on 2017/9/22.
 */
class PluginInfo{
    lateinit var classloader:ClassLoader
    private lateinit var assetManager:AssetManager
    private lateinit var resource:Resources
}