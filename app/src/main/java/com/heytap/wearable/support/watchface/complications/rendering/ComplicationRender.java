package com.heytap.wearable.support.watchface.complications.rendering;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextUtils;
import androidx.appcompat.app.d;
import com.heytap.wearable.support.watchface.common.log.SdkDebugLog;
import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.heytap.wearable.support.watchface.complications.ComplicationData;
import java.util.Locale;
import java.util.Objects;

public abstract class ComplicationRender {
    public static final int DEFAULT_BG_COLOR = 654311423;
    private static final String TAG = "ComplicationRender";
    public boolean isEnglishRegion;
    public boolean isSmallWidget;
    private boolean mBackgroundEnabled;
    public final Rect mBounds = new Rect();
    public ComplicationData mComplicationData;
    public ComplicationDrawable mComplicationDrawable;
    public Context mContext;
    public ComplicationStyle mCurStyle;
    private ComplicationStyle mDefStyle;
    private int mType;
    private int mUiMode = 0;

    public ComplicationRender(Context var1) {
        this.mContext = var1;
        this.initDefStyle();
    }

    private void initDefStyle() {
        ComplicationStyle var1 = ComplicationStyle.createWithPrimaryColor(-1);
        this.mDefStyle = var1;
        this.mCurStyle = var1;
    }

    public void checkUpdate() {
        long var1 = System.currentTimeMillis();
        if (this.mComplicationData != null) {
            StringBuilder var3 = d.e("checkUpdate starttime:");
            var3.append(this.mComplicationData.getStartTime());
            var3.append(" endtime:");
            var3.append(this.mComplicationData.getEndTime());
            var3.append(" currentTime:");
            var3.append(var1);
            SdkDebugLog.d("ComplicationRender", var3.toString());
        }

        ComplicationData var5 = this.mComplicationData;
        if (var5 != null && !var5.isActive(var1)) {
            PendingIntent var6 = this.mComplicationData.getExpiredAction();
            if (var6 == null) {
                SdkDebugLog.d("ComplicationRender", "[checkUpdate] expiredAction is null");
                return;
            }

            try {
                var6.send();
            } catch (PendingIntent.CanceledException var4) {
                SdkDebugLog.e("ComplicationRender", "[checkUpdate] pendingIntent send error");
            }
        }

    }

    public final void draw(Canvas var1) {
        ComplicationData var2 = this.mComplicationData;
        if (var2 != null && var2.getType() != 0) {
            this.onDraw(var1);
        }

    }

    public ComplicationData getComplicationData() {
        return this.mComplicationData;
    }

    public int getType() {
        return this.mType;
    }

    public Typeface getTypeface() {
        return FontUtils.getFont(this.mContext, "OPlusSans-Data-Bold.ttf"); // 小组件字体
    }

    public int getUiMode() {
        return this.mUiMode;
    }

    public void invalidate() {
        ComplicationDrawable var1 = this.mComplicationDrawable;
        if (var1 != null) {
            var1.invalidateSelf();
        }

    }

    public boolean isBackgroundEnabled() {
        return this.mBackgroundEnabled;
    }

    public boolean isChineseChar(String var1) {
        if (TextUtils.isEmpty(var1)) {
            return false;
        } else {
            boolean var2 = var1.matches("[\\u4e00-\\u9fa5]+");
            StringBuilder var3 = new StringBuilder();
            var3.append("isChineseChar :");
            var3.append(var1);
            var3.append(" isChineseChar:");
            var3.append(var2);
            SdkDebugLog.d("ComplicationRender", var3.toString());
            return var2;
        }
    }

    public boolean isEnglishRegion() {
        String var2 = Locale.getDefault().getLanguage();
        StringBuilder var1 = new StringBuilder();
        var1.append("language:");
        var1.append(var2);
        SdkDebugLog.d("ComplicationRender", var1.toString());
        return TextUtils.equals(var2, "en");
    }

    public boolean isSupportInActiveReset() {
        ComplicationData var2 = this.mComplicationData;
        boolean var1;
        if (var2 != null && var2.isSupportInActiveReset()) {
            var1 = true;
        } else {
            var1 = false;
        }

        return var1;
    }

    public boolean isSupportPrivacyMode() {
        ComplicationData var2 = this.mComplicationData;
        boolean var1;
        if (var2 != null && var2.isSupportPrivacyMode()) {
            var1 = true;
        } else {
            var1 = false;
        }

        return var1;
    }

    public abstract void onBoundsChanged(Rect var1);

    public abstract void onDataChanged();

    public abstract void onDraw(Canvas var1);

    public void onLocaleChanged() {
        this.isEnglishRegion = this.isEnglishRegion();
    }

    public abstract void onStyleChanged();

    public void setAlpha(int var1) {
    }

    public void setBackgroundEnabled(boolean var1) {
        this.mBackgroundEnabled = var1;
    }

    public void setBounds(Rect var1) {
        Rect var4 = this.mBounds;
        int var3 = var4.left;
        int var2 = var1.left;
        if (var3 != var2 || var4.top != var1.top || var4.right != var1.right || var4.bottom != var1.bottom) {
            var4.set(var2, var1.top, var1.right, var1.bottom);
            this.onBoundsChanged(this.mBounds);
        }

    }

    public void setColorFilter(ColorFilter var1) {
    }

    public final void setComplicationData(ComplicationData var1) {
        boolean var2 = Objects.deepEquals(this.mComplicationData, var1) ^ true;
        StringBuilder var3 = new StringBuilder();
        var3.append("[setComplicationData] isDataUpdate:");
        var3.append(var2);
        SdkDebugLog.d("ComplicationRender", var3.toString());
        if (var2) {
            this.mComplicationData = var1;
            this.onDataChanged();
        }

    }

    public void setComplicationDrawable(ComplicationDrawable var1) {
        this.mComplicationDrawable = var1;
    }

    public final void setStyle(ComplicationStyle var1) {
        ComplicationStyle var2 = var1;
        if (var1 == null) {
            var2 = this.mDefStyle;
        }

        this.mCurStyle = var2;
        this.onStyleChanged();
    }

    public void setType(int var1) {
        this.mType = var1;
    }

    public void setUiMode(int var1) {
        this.mUiMode = var1;
    }
}