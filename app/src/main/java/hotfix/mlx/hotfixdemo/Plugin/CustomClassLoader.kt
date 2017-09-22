package hotfix.mlx.hotfixdemo.Plugin

import dalvik.system.DexClassLoader
import java.io.ByteArrayOutputStream
import java.io.FileInputStream
import java.io.FileNotFoundException

/**
 * Created by MLX on 2017/9/22.
 */
class CustomClassLoader(dexPath: String?, optimizedDirectory: String?, librarySearchPath: String?, parent: ClassLoader?) : DexClassLoader(dexPath, optimizedDirectory, librarySearchPath, parent) {


    override fun findClass(name: String?): Class<*> {
        var bytes=getClassByName(name)
        if(bytes!=null){
            return defineClass(name,bytes,0,bytes.size)
        }else{
            throw FileNotFoundException()
        }
    }

    private fun getClassByName(name: String?):ByteArray{
        try {
            var inputstream=FileInputStream(name)
            var byteoutputstream=ByteArrayOutputStream()
            var buffsize=4*1024
            var bytes= ByteArray(buffsize)
            var buffReadNum=-1
            while(true){
                buffReadNum=inputstream.read(bytes)
                if(buffReadNum!=-1){
                    byteoutputstream.write(bytes,0,buffReadNum)
                }
            }
            inputstream.close()
            byteoutputstream.close()
            return bytes
        }catch (e:Exception){
            e.printStackTrace()
        }
        return null!!
    }

}