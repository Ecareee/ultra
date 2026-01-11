package com.heytap.wearable.support.watchface.complications.rendering.renders;

import android.content.Context;
import android.graphics.*;
import android.text.TextPaint;
import android.text.TextUtils;

import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.heytap.wearable.support.watchface.common.utils.ResourcesUtil;
import com.heytap.wearable.support.watchface.common.utils.TextUtil;
import com.heytap.wearable.support.watchface.complications.R;
import com.mosect.smali.annotation.Merge;
import com.mosect.smali.annotation.Replace;

@Merge
public class PointerDoubleTextComplicationRender extends DefaultTextComplicationRender {
    private Rect mBottomRect = new Rect();
    private Context mContext;
    private TextPaint mNumberPaint;
    private int mNumberTextSize;
    private Typeface mNumberTypeface;
    private String mText;
    private TextPaint mTextPaint;
    private int mTextSize;
    private String mTitle;
    private Rect mTopRect = new Rect();
    private Typeface mTypeface;

    public PointerDoubleTextComplicationRender(Context var1) {
        super(var1);
        this.mContext = var1;
    }

    @Replace
    private void drawText(Canvas var1) {
        Typeface var3;
        if (super.isEnglishRegion) {
            var3 = this.mNumberTypeface;
        } else {
//            var3 = FontUtils.getFont(this.mContext, "OPlusSans-Data-Bold.ttf.ttf"); // 修改会导致小组件文字刷新异常卡顿
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
}