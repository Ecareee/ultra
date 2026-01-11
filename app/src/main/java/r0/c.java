package r0;

import static r0.f.colorTextMonth;
import static r0.f.colorcompass;
import static r0.g.outdoor_month_left;
import static r0.g.outdoor_month_top;
import static r0.g.textsize;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.Paint.Align;
import android.text.TextPaint;

import com.ecaree.ultra.Util;
import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.heytap.wearable.support.watchface.common.utils.ResourcesUtil;
import com.mosect.smali.annotation.Merge;
import com.mosect.smali.annotation.Replace;

@Merge
public final class c extends o0.a {
    // m0.d$c 中使用的字段，写在这里只是为了过编译
    public Rect D0;
    public String N0;
    public int O0;
    public RectF P0;
    public Resources Q0;
    public String R0;
    public int S0;
    public int T0;
    public int U0;
    public int V0;
    public int W0;
    public int Z0;
    public float a0;
    public int a1;
    public int b1;
    public Paint c0;
    public int c1;
    public Paint d0;
    public int d1;
    public int e1;
    public int f1;
    public Bitmap g0;
    public int g1;
    public Bitmap h0;
    public Bitmap h1;
    public Bitmap i0;
    public Bitmap j0;
    public boolean j1 = false;
    public Bitmap k0;
    public TextPaint m0;
    public TextPaint n0;
    public TextPaint p0;
    public TextPaint q0;
    public Paint r0;
    public int s0;
    public int t0;
    public float u0;
    public float v0;
    public float w0;
    public float x0;
    public float y0;
    public float z0;

    public c(Context context) {
        super(context);
    }

    @Replace
    public final void B(Canvas var1) {
        this.c0.setTextAlign(Align.CENTER);
        int var3 = super.f.get(5);
        super.f.get(2);
        StringBuilder var4;
        if (androidx.appcompat.widget.g.s()) {
            var4 = new StringBuilder();
            var4.append(Util.formatMonth(super.f.get(2) + 1));
            var4.append("/");
            var4.append(var3);
            var4.append("");
            var4.append(Util.getExtraInfo(super.g, super.f));
        } else {
            var4 = new StringBuilder();
            Context var5 = super.g;
            int var2 = super.f.get(2);
            var4.append(var5.getResources().getStringArray(e.month_number_small)[var2]);
            var4.append(" ");
            var4.append(var3);
        }

        var1.drawText(var4.toString(), super.g.getResources().getDimension(outdoor_month_left), super.g.getResources().getDimension(outdoor_month_top), this.p0);
    }

    @Replace
    public final void E() {
        TextPaint var2 = new TextPaint();
        this.p0 = var2;
        Context var3 = super.g;
        int var1 = textsize;
        var2.setTextSize(ResourcesUtil.getDimension(var3, var1));
        this.p0.setAntiAlias(true);
        this.p0.setTypeface(FontUtils.getFont(super.g, "OPlusSans-Data-Bold.ttf")); // 底部信息字体
        this.p0.setColor(super.g.getColor(colorTextMonth));
        this.p0.setTextAlign(Align.CENTER);
        TextPaint var5 = new TextPaint();
        this.q0 = var5;
        Context var4 = super.g;
        var5.setTextSize(ResourcesUtil.getDimension(var4, var1));
        this.q0.setAntiAlias(true);
        this.q0.setTypeface(FontUtils.getFont(var4, "OPlusSans-Data-Bold.ttf")); // 左上角方向字体
        this.q0.setColor(super.g.getColor(colorcompass));
        this.q0.setTextAlign(Align.CENTER);
    }
}