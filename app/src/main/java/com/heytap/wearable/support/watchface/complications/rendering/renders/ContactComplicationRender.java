package com.heytap.wearable.support.watchface.complications.rendering.renders;

import android.content.Context;
import android.graphics.Paint.Align;
import android.graphics.Typeface;
import android.text.TextPaint;

import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.heytap.wearable.support.watchface.common.utils.ResourcesUtil;
import com.heytap.wearable.support.watchface.complications.R.dimen;
import com.heytap.wearable.support.watchface.complications.rendering.utils.TextPaintUtil;
import com.mosect.smali.annotation.Merge;
import com.mosect.smali.annotation.Replace;

@Merge
public class ContactComplicationRender extends DefaultTextComplicationRender {
    private TextPaint mBackgroundPaint;
    private Typeface mDataTypeface;
    private Typeface mSystemTypeface;
    private int mTextSize;
    private TextPaint mTitlePaint;
    private TextPaint mValuePaint;

    public ContactComplicationRender(Context var1) {
        super(var1);
    }

    @Replace
    private void initPaint() {
        this.mTextSize = (int)ResourcesUtil.getDimension(super.mContext, dimen.doubletext_color_title_textsize_new);
        TextPaint var1 = new TextPaint();
        this.mBackgroundPaint = var1;
        var1.setColor(654311423);
        this.mSystemTypeface = FontUtils.getFont(super.mContext, "OPlusSans-Data-Medium.ttf"); // 联系人小组件字体
        this.mDataTypeface = FontUtils.getFont(super.mContext, "OPlusSans-Data-Medium.ttf");
        var1 = TextPaintUtil.getAntiAliasPaint();
        this.mValuePaint = var1;
        var1.setTextAlign(Align.CENTER);
        this.mValuePaint.setTypeface(this.mSystemTypeface);
        this.mValuePaint.setFakeBoldText(true);
        this.mValuePaint.setTextSize((float)this.mTextSize);
        var1 = TextPaintUtil.getAntiAliasPaint();
        this.mTitlePaint = var1;
        var1.setTextAlign(Align.CENTER);
        this.mTitlePaint.setTypeface(this.mSystemTypeface);
        this.mTitlePaint.setTextSize((float)this.mTextSize);
    }
}