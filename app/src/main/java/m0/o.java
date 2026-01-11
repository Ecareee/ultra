package m0;

import android.os.Handler;
import android.os.Message;

import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.mosect.smali.annotation.*;

@Merge
public final class o implements Handler.Callback {
    public final p a;

    public o(p var1) {
        this.a = var1;
    }

    @Copy("handleMessage2")
    @Replace
    public final boolean handleMessage(Message message) {
        boolean ret = handleMessage2(message);

        p var10 = this.a;
        if (var10 == null) return ret;

        m var35 = var10.a(var10.b);
        if (!(var35 instanceof r0.c)) return ret;

        r0.c var38 = (r0.c) var35;
        if (var38.m0 == null || var38.g == null) return ret;

        var38.m0.setTypeface(FontUtils.getFont(var38.g, "OPlusSans-Data-Bold.ttf"));

        return ret;
    }

    @Ignore
    public final boolean handleMessage2(Message var1) {
        return false;
    }
}