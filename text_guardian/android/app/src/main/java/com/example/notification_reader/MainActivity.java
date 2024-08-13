package com.example.notification_reader;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.service.notification.NotificationListenerService;
import android.text.TextUtils;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "com.example.notification_reader/notifications";

    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                    (call, result) -> {
                        if (call.method.equals("checkNotificationAccess")) {
                            result.success(isNotificationServiceEnabled());
                        } else {
                            result.notImplemented();
                        }
                    }
                );
    }

    private boolean isNotificationServiceEnabled() {
        String pkgName = getPackageName();
        String enabledNotificationListeners = Settings.Secure.getString(getContentResolver(), "enabled_notification_listeners");
        return enabledNotificationListeners.contains(pkgName);
    }
}
