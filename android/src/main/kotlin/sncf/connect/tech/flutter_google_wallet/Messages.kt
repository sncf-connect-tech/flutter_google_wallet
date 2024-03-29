// Autogenerated from Pigeon (v17.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package sncf.connect.tech.flutter_google_wallet

import android.util.Log
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MessageCodec
import io.flutter.plugin.common.StandardMessageCodec
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

private fun wrapResult(result: Any?): List<Any?> {
  return listOf(result)
}

private fun wrapError(exception: Throwable): List<Any?> {
  if (exception is FlutterError) {
    return listOf(
      exception.code,
      exception.message,
      exception.details
    )
  } else {
    return listOf(
      exception.javaClass.simpleName,
      exception.toString(),
      "Cause: " + exception.cause + ", Stacktrace: " + Log.getStackTraceString(exception)
    )
  }
}

/**
 * Error class for passing custom error details to Flutter via a thrown PlatformException.
 * @property code The error code.
 * @property message The error message.
 * @property details The error details. Must be a datatype supported by the api codec.
 */
class FlutterError (
  val code: String,
  override val message: String? = null,
  val details: Any? = null
) : Throwable()
/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface GoogleWalletApi {
  fun initWalletClient()
  fun getWalletApiAvailabilityStatus(): Boolean
  fun savePasses(jsonPass: String, addToGoogleWalletRequestCode: Long)
  fun savePassesJwt(jsonPass: String, addToGoogleWalletRequestCode: Long)

  companion object {
    /** The codec used by GoogleWalletApi. */
    val codec: MessageCodec<Any?> by lazy {
      StandardMessageCodec()
    }
    /** Sets up an instance of `GoogleWalletApi` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: GoogleWalletApi?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.flutter_google_wallet.GoogleWalletApi.initWalletClient", codec)
        if (api != null) {
          channel.setMessageHandler { _, reply ->
            var wrapped: List<Any?>
            try {
              api.initWalletClient()
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val taskQueue = binaryMessenger.makeBackgroundTaskQueue()
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.flutter_google_wallet.GoogleWalletApi.getWalletApiAvailabilityStatus", codec, taskQueue)
        if (api != null) {
          channel.setMessageHandler { _, reply ->
            var wrapped: List<Any?>
            try {
              wrapped = listOf<Any?>(api.getWalletApiAvailabilityStatus())
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.flutter_google_wallet.GoogleWalletApi.savePasses", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val jsonPassArg = args[0] as String
            val addToGoogleWalletRequestCodeArg = args[1].let { if (it is Int) it.toLong() else it as Long }
            var wrapped: List<Any?>
            try {
              api.savePasses(jsonPassArg, addToGoogleWalletRequestCodeArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.flutter_google_wallet.GoogleWalletApi.savePassesJwt", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val jsonPassArg = args[0] as String
            val addToGoogleWalletRequestCodeArg = args[1].let { if (it is Int) it.toLong() else it as Long }
            var wrapped: List<Any?>
            try {
              api.savePassesJwt(jsonPassArg, addToGoogleWalletRequestCodeArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
