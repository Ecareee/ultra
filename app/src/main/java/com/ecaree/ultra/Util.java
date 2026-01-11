package com.ecaree.ultra;

import android.content.Context;

import com.android.calendar.LunarHelper;
import com.heytap.wearable.support.watchface.data.time.WFSolarTimeData;

import java.util.Calendar;

/**
 * SmaliPlugin 的 @Replace 只能替换 smali 中已存在的方法/字段
 * 在 @Merge 类里新增方法不会进入最终 dex，导致运行时 NoSuchMethodError
 * 因此需要新建一个 smali 里不存在的类，再由 @Replace 的方法调用
 */
public class Util {
    public static String formatSeconds(Calendar calendar) {
        int sec = calendar.get(Calendar.SECOND);
        if (sec < 10) {
            return "0" + sec;
        } else {
            return Integer.toString(sec);
        }
    }

    public static String formatMonth(int month) {
        if (month < 10) {
            return "0".concat(Integer.toString(month));
        }
        return Integer.toString(month);
    }

    public static String getExtraInfo(Context context, Calendar calendar) {
        StringBuilder sb = new StringBuilder();
        sb.append(" ");
        WFSolarTimeData solar = new WFSolarTimeData(context);
        WFSolarTimeData.Data data = (WFSolarTimeData.Data) solar.createDefaultData();

        // 星期
        String weekStr = data.getWeek1Str();
        sb.append(weekStr);

        sb.append(" ");

        // 农历日期
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH) + 1;
        int day = calendar.get(Calendar.DAY_OF_MONTH);
        LunarHelper lunar = LunarHelper.getInstance(context);
        String lunarStr = lunar.getLunarMonthDayString(year, month, day);
        sb.append(lunarStr);

        return sb.toString();
    }
}