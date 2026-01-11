package m0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;

import com.ecaree.ultra.Util;
import com.mosect.smali.annotation.Merge;
import com.mosect.smali.annotation.Original;
import com.mosect.smali.annotation.Replace;

import java.util.Calendar;
import java.util.TimeZone;

/**
 * 直接创建 m0/d$c.java 会导致编译时出现 NPE，因此需要创建 m0/d.java
 * 实际只需修改内部类 d$c，d.java 里除保持编译所需的最小结构外，其他代码已删除
 */
@SuppressLint({"HandlerLeak"})
@Original // 外部类 m0.d 完全用 smali，保住构造方法，避免运行时签名不一致导致 NoSuchMethodError 报错
public abstract class d implements a.a {
    // m0.d$c 中使用的字段，写在这里只是为了过编译
    public boolean s;
    public Calendar f = Calendar.getInstance(TimeZone.getDefault());
    public Context g;
    public boolean r;
    public p b;

    @Merge // 内部类 m0.d$c 合并
    public final class c extends View {
        public final d b;

        public c(d var1, Context var2) {
            super(var2);
            this.b = var1;
        }

        @Replace // 替换 onDraw 方法，和 @Merge 搭配使用
        public final void onDraw(Canvas var1) {
            d var7 = this.b;
            if (!var7.s) {
                var7.f.setTimeInMillis(System.currentTimeMillis());
            }

            r0.c var8 = (r0.c)this.b;
            int var4 = 0;
            StringBuilder var11;
            if (var1 != null) {
                int[] var9 = androidx.appcompat.widget.g.m(var8.g, var8.f);
                var11 = androidx.appcompat.app.d.e("");
                var11.append(var9[0]);
                var11.append("");
                var11.append(var9[1]);
                var11.append(":");
                var11.append("");
                var11.append(var9[2]);
                var11.append("");
                var11.append(var9[3]);
                String var14 = Util.formatSeconds(var8.f);
                var11.append(":");
                var11.append(var14);
                var1.drawText(var11.toString(), (float)var8.s0, (float)var8.t0, var8.n0);
            }

            // === 以下保持原代码 ===
            var8.B(var1);
            var1.save();

            int var5;
            for(var5 = var8.f.get(13); var4 < var5 + 1; ++var4) {
                var1.drawRect(var8.P0, var8.d0);
                var1.rotate(6.0F, (float)var8.f1, (float)var8.g1);
            }

            var1.restore();
            float var2;
            float var3;
            String var12;
            if (!var8.j1) {
                var12 = var8.R0;
                var2 = var8.y0;
                var3 = var8.z0;
            } else {
                var8.N0 = var8.Q0.getStringArray(r0.e.compass_str)[(int)((float)var8.O0 + 22.5F) % 360 / 45];
                var11 = new StringBuilder();
                var11.append(var8.O0);
                var11.append("°");
                var1.drawText(var11.toString(), var8.w0, var8.x0, var8.m0);
                var12 = var8.N0;
                var2 = var8.u0;
                var3 = var8.v0;
            }

            label77: {
                var1.drawText(var12, var2, var3, var8.q0);
                var4 = var8.O0;
                if (var4 > 15 && var4 < 180) {
                    var4 = var8.S0;
                    var8.U0 = var4;
                    var4 += var8.W0 / 2;
                } else {
                    if (var4 >= 180 && var4 < 345) {
                        var5 = var8.S0;
                        var4 = var8.W0;
                        var8.U0 = var4 / 2 + var5;
                        var8.V0 = var5 + var4;
                        break label77;
                    }

                    int var6;
                    if (var4 >= 0 && var4 <= 15) {
                        var6 = var8.S0;
                        var5 = var8.W0;
                        var6 += var5 / 2;
                        var8.U0 = var6 - var5 / 30 * var4;
                        var8.V0 = var6;
                        break label77;
                    }

                    if (var4 < 345 || var4 > 360) {
                        break label77;
                    }

                    var6 = var8.S0;
                    var5 = var8.W0;
                    var6 += var5 / 2;
                    var8.U0 = var6;
                    var4 = (360 - var4) * (var5 / 30) + var6;
                }

                var8.V0 = var4;
            }

            var8.r0.setColor(var8.g.getColor(r0.f.colorcompasswhite));
            var1.drawRect((float)var8.S0, (float)var8.b1, (float)var8.U0, (float)var8.d1, var8.r0);
            var1.drawRect((float)var8.V0, (float)var8.b1, (float)var8.Z0, (float)var8.d1, var8.r0);
            var8.r0.setColor(var8.g.getColor(r0.f.colorcompassred));
            var1.drawRect((float)var8.U0, (float)var8.b1, (float)var8.V0, (float)var8.d1, var8.r0);
            var5 = var8.O0;
            if (var5 > 0 && var5 < 180) {
                var4 = -var8.W0;
            } else {
                var4 = var8.W0;
            }

            var4 = var4 / 2 * (var5 % 15) / 15;
            var1.save();
            var1.translate((float)var4, 0.0F);
            var1.clipRect(var8.T0 - var4, var8.c1, var8.a1 - var4, var8.e1);
            var1.drawBitmap(var8.h1, (float)(var8.T0 - var8.W0 / 2), (float)var8.c1, var8.c0);
            var1.restore();
            var1.drawBitmap(var8.i0, (Rect)null, var8.D0, var8.c0);
            d var10 = this.b;
            if (!var10.r) {
                p var13 = var10.b;
                if (var13 != null) {
                    var10.r = true;
                    var13.d.notifyFirstFrameFinished();
                }
            }

        }
    }
}