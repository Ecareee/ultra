package com.heytap.wearable.support.watchface.complications.rendering.renders;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.Paint.Align;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.appcompat.app.d;
import com.heytap.wearable.support.watchface.common.log.SdkDebugLog;
import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.heytap.wearable.support.watchface.common.utils.ResourcesUtil;
import com.heytap.wearable.support.watchface.common.utils.TextUtil;
import com.heytap.wearable.support.watchface.complications.R;

public class PointerDoubleTextComplicationRender extends DefaultTextComplicationRender {
    private static final String TAG = "PointerDoubleTextComplicationRender";
    private RectF mBackgroundBounds = new RectF();
    private Paint mBackgroundPaint = new Paint();
    private Drawable mBgIcon;
    private Rect mBgIconBounds = new Rect();
    private Rect mBottomRect = new Rect();
    private Context mContext;
    private Rect mLineRect = new Rect();
    private TextPaint mNumberPaint;
    private int mNumberTextSize;
    private Typeface mNumberTypeface;
    private String mText;
    private TextPaint mTextPaint;
    private int mTextSize;
    private String mTitle;
    private Rect mTopRect = new Rect();
    private Typeface mTypeface;
    private float mValue;

    public PointerDoubleTextComplicationRender(Context var1) {
        super(var1);
        this.mContext = var1;
        this.init();
    }

    private void drawBackground(Canvas var1) {
        RectF var2 = this.mBackgroundBounds;
        var1.drawRoundRect(var2, var2.width() / 2.0F, this.mBackgroundBounds.height() / 2.0F, this.mBackgroundPaint);
    }

    private void drawBgIcon(Canvas var1) {
        if (!super.isSmallWidget) {
            if (this.mBgIcon != null) {
                var1.save();
                var1.rotate(360.0F - this.mValue, this.mBackgroundBounds.centerX(), this.mBackgroundBounds.centerY());
                this.mBgIcon.draw(var1);
                var1.restore();
            }

        }
    }

    private void drawText(Canvas var1) {
        Typeface var3;
        if (super.isEnglishRegion) {
            var3 = this.mNumberTypeface;
        } else {
//            var3 = FontUtils.getFont(this.mContext, "PingFang Medium.ttf"); // 修改会导致异常卡顿
            var3 = FontUtils.getFont(this.mContext, "sys-sans-en"); // 指南针小组件字体
        }

        this.mTypeface = var3;
        int var2;
        Context var4;
        if (super.isSmallWidget) {
            this.mTextSize = (int)ResourcesUtil.getDimension(this.mContext, R.dimen.small_pointer_doubletext_textsize);
            var4 = this.mContext;
            var2 = R.dimen.small_pointer_doubletext_number_textsize;
        } else {
            if (super.isEnglishRegion) {
                var4 = this.mContext;
                var2 = R.dimen.pointer_doubletext_en_textsize;
            } else {
                var4 = this.mContext;
                var2 = R.dimen.pointer_doubletext_textsize;
            }

            this.mTextSize = (int)ResourcesUtil.getDimension(var4, var2);
            var4 = this.mContext;
            var2 = R.dimen.pointer_doubletext_number_textsize;
        }

        this.mNumberTextSize = (int)ResourcesUtil.getDimension(var4, var2);
        this.mTextPaint.setTextSize((float)this.mTextSize);
        this.mNumberPaint.setTextSize((float)this.mNumberTextSize);
        this.mTextPaint.setTypeface(this.mTypeface);
        if (!TextUtils.isEmpty(this.mTitle)) {
            var1.drawText(this.mTitle, (float)this.mTopRect.centerX(), (float)TextUtil.getTextBaseLine(this.mTextPaint, (Rect)this.mTopRect), this.mTextPaint);
        }

        if (!TextUtils.isEmpty(this.mText) && !this.mText.contains("-")) {
            var1.drawText(this.mText, (float)this.mBottomRect.centerX(), (float)TextUtil.getTextBaseLine(this.mNumberPaint, (Rect)this.mBottomRect), this.mNumberPaint);
        }

    }

    private void drawline(Canvas var1) {
        if (!super.isSmallWidget) {
            this.mTextPaint.setColor(super.mComplicationData.getColorfulModeColor());
            var1.drawRect(this.mLineRect, this.mTextPaint);
        }
    }

    private void init() {
        this.mNumberTypeface = FontUtils.getFont(this.mContext, "OPlusSans-Data-Medium.ttf");
        TextPaint var1 = new TextPaint();
        this.mTextPaint = var1;
        var1.setAntiAlias(true);
        this.mTextPaint.setFakeBoldText(true);
        this.mTextPaint.setTextAlign(Align.CENTER);
        var1 = new TextPaint();
        this.mNumberPaint = var1;
        var1.setAntiAlias(true);
        this.mNumberPaint.setFakeBoldText(true);
        this.mNumberPaint.setTextAlign(Align.CENTER);
        this.mNumberPaint.setTypeface(this.mNumberTypeface);
        this.mNumberPaint.setColor(-1);
        this.mBackgroundPaint.setAntiAlias(true);
        this.mBackgroundPaint.setColor(654311423);
    }

    private void loadBackgroundDrawable() {
        if (!super.isSmallWidget) {
            Icon var1 = super.mComplicationData.getIcon();
            if (var1 == null) {
                SdkDebugLog.d(TAG, "[loadBackgroundDrawable] background is null");
            } else {
                Drawable var2 = var1.loadDrawable(this.mContext);
                this.mBgIcon = var2;
                if (var2 == null) {
                    SdkDebugLog.d(TAG, "[loadBackgroundDrawable] background drawable is null");
                } else {
                    var2.setBounds(this.mBgIconBounds);
                }
            }
        }
    }

    private void setBoundChange(Rect var1) {
        String var7 = TAG;
        StringBuilder var6 = d.e("onBoundsChanged isSmallWidget:");
        var6.append(super.isSmallWidget);
        SdkDebugLog.d(var7, var6.toString());
        int var2;
        int var3;
        int var4;
        Context var8;
        if (super.isSmallWidget) {
            var2 = (int)ResourcesUtil.getDimension(this.mContext, R.dimen.small_clock_digital_text_height);
            var3 = (int)ResourcesUtil.getDimension(this.mContext, R.dimen.small_clock_digital_toptext_toppadding);
            var8 = this.mContext;
            var4 = R.dimen.small_clock_digital_bottomtext_toppadding;
        } else {
            this.mBgIconBounds.set(var1);
            var2 = (int)ResourcesUtil.getDimension(this.mContext, R.dimen.clock_digital_text_height);
            var3 = (int)ResourcesUtil.getDimension(this.mContext, R.dimen.clock_digital_toptext_toppadding);
            var8 = this.mContext;
            var4 = R.dimen.clock_digital_bottomtext_toppadding;
        }

        int var5 = (int)ResourcesUtil.getDimension(var8, var4);
        this.mBackgroundBounds.set(var1);
        var4 = var1.top;
        var3 += var4;
        var4 += var5;
        this.mTopRect.set(var1.left, var3, var1.right, var3 + var2);
        this.mBottomRect.set(var1.left, var4, var1.right, var2 + var4);
        if (!super.isSmallWidget) {
            var2 = var1.width();
            var3 = var1.left;
            var3 = var2 / 2 + var3 - 1;
            var2 = var1.top + 2;
            this.mLineRect.set(var3, var2, var3 + 2, var2 + 10);
        }
    }

    public void onBoundsChanged(Rect var1) {
        this.setBoundChange(var1);
    }

    public void onDataChanged() {
        super.onDataChanged();
        SdkDebugLog.d(TAG, " onDataChanged.");
        this.loadBackgroundDrawable();
        this.mTitle = d.b(super.mComplicationData.getTitle(), this.mContext);
        this.mText = d.b(super.mComplicationData.getText(), this.mContext);
        this.mValue = super.mComplicationData.getValue();
        this.mTextPaint.setColor(super.mComplicationData.getColorfulModeColor());
        this.setBoundChange(super.mBounds);
    }

    public void onDraw(Canvas var1) {
        super.onDraw(var1);
        this.drawBackground(var1);
        this.drawBgIcon(var1);
        this.drawText(var1);
        this.drawline(var1);
    }

    public void onLocaleChanged() {
        super.onLocaleChanged();
        this.init();
    }

    public void onStyleChanged() {
    }
}
