package com.google.android.systemui.smartspace;

import android.provider.DeviceConfig;
import java.util.concurrent.Executor;

public final class LazyServerFlagLoader {
    public final String mPropertyKey;
    public Boolean mValue;

    public LazyServerFlagLoader(String propertyKey) {
        this.mPropertyKey = propertyKey;
    }

    public boolean get() {
        if (mValue == null) {
            mValue = DeviceConfig.getBoolean("launcher", mPropertyKey, true);
            DeviceConfig.addOnPropertiesChangedListener("launcher", new Executor() {
                @Override
                public void execute(Runnable command) {
                    command.run();
                }
            }, (properties) -> {
                if (properties.getKeyset().contains(mPropertyKey)) {
                    mValue = properties.getBoolean(mPropertyKey, true);
                }
            });
        }
        return mValue;
    }
}
