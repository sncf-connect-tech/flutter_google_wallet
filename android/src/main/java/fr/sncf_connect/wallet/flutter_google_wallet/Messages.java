// Autogenerated from Pigeon (v4.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package fr.sncf_connect.wallet.flutter_google_wallet;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class Messages {
  /** Generated interface from Pigeon that represents a handler of messages from Flutter. */
  public interface GoogleWalletApi {
    void initWalletClient();
    @NonNull Boolean getWalletApiAvailabilityStatus();
    void savePasses(@NonNull String jsonPass, @NonNull Long addToGoogleWalletRequestCode);

    /** The codec used by GoogleWalletApi. */
    static MessageCodec<Object> getCodec() {
      return       new StandardMessageCodec();    }
    /**Sets up an instance of `GoogleWalletApi` to handle messages through the `binaryMessenger`. */
    static void setup(BinaryMessenger binaryMessenger, GoogleWalletApi api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.GoogleWalletApi.initWalletClient", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              api.initWalletClient();
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BinaryMessenger.TaskQueue taskQueue = binaryMessenger.makeBackgroundTaskQueue();
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.GoogleWalletApi.getWalletApiAvailabilityStatus", getCodec(), taskQueue);
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              Boolean output = api.getWalletApiAvailabilityStatus();
              wrapped.put("result", output);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.GoogleWalletApi.savePasses", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              assert args != null;
              String jsonPassArg = (String)args.get(0);
              if (jsonPassArg == null) {
                throw new NullPointerException("jsonPassArg unexpectedly null.");
              }
              Number addToGoogleWalletRequestCodeArg = (Number)args.get(1);
              if (addToGoogleWalletRequestCodeArg == null) {
                throw new NullPointerException("addToGoogleWalletRequestCodeArg unexpectedly null.");
              }
              api.savePasses(jsonPassArg, (addToGoogleWalletRequestCodeArg == null) ? null : addToGoogleWalletRequestCodeArg.longValue());
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  @NonNull private static Map<String, Object> wrapError(@NonNull Throwable exception) {
    Map<String, Object> errorMap = new HashMap<>();
    errorMap.put("message", exception.toString());
    errorMap.put("code", exception.getClass().getSimpleName());
    errorMap.put("details", "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorMap;
  }
}