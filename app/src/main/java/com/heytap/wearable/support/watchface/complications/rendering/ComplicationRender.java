package com.heytap.wearable.support.watchface.complications.rendering;

import android.content.Context;
import android.graphics.Typeface;

import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.mosect.smali.annotation.Merge;
import com.mosect.smali.annotation.Replace;

@Merge
public abstract class ComplicationRender {
    public Context mContext;
    // PointerDoubleTextComplicationRender 中使用的字段，写在这里只是为了过编译
    public boolean isEnglishRegion;
    public boolean isSmallWidget;

    public ComplicationRender(Context var1) {
        this.mContext = var1;
    }

    @Replace
    public Typeface getTypeface() {
        return FontUtils.getFont(this.mContext, "OPlusSans-Data-Bold.ttf"); // 小组件字体
    }
}