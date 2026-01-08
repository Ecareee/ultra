package com.heytap.wearable.support.watchface.complications.rendering.components;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;

import androidx.appcompat.app.d;

import com.heytap.wearable.support.watchface.common.log.SdkDebugLog;
import com.heytap.wearable.support.watchface.common.utils.FontUtils;
import com.heytap.wearable.support.watchface.common.utils.TextUtil;
import com.heytap.wearable.support.watchface.complications.R;
import com.heytap.wearable.support.watchface.complications.proto.PressureHistogramData;
import com.heytap.wearable.support.watchface.complications.rendering.ComplicationStyle;
import com.heytap.wearable.support.watchface.edit.ConfigManager;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;

public class PressureHistogramDrawable extends Drawable implements SensorEventListener {
    private static final int DEFAULT_PRIMARY_COLOR = -9447277;
    private static final int DURATION_BY_MINUTE = 48;
    private static final float HISTOGRAM_ITEM_WIDTH = 4.0F;
    private static final int H_LINE_COLOR = 869849304;
    private static final int H_LINE_NUM = 3;
    private static final float H_LINE_STROKE_WIDTH = 1.0F;
    private static final int LATEST_PRESSURE_EXPIRATION_MINUTES = 10;
    private static final int LATEST_PRESSURE_TIMESTAMP_INVALID = -1;
    private static final int LATEST_PRESSURE_TIMESTAMP_NOW = 0;
    private static final int[] PRESSURE_COLOR = new int[]{-10954795, -12594806, -12236, -37052};
    private static final String TAG = "PressureHistogramDrawable";
    private static final int V_LINE_NUM = 5;
    private static final int[] X_AXIS_VALUES_FIXED = new int[]{0, 6, 12, 18, 24};
    private static final int X_AXIS_VALUE_COLOR = -1711276033;
    private static final int[] Y_AXIS_VALUES_FIXED = new int[]{100, 50};
    private Context mContext;
    private ComplicationStyle mCurrentStyle;
    private Paint mHighlightTextPaint = new Paint();
    private float mHighlightTextSize;
    private Paint mHistogramPaint = new Paint();
    private Rect mHistogramRect = new Rect();
    private int mHistogramRectTop;
    private Paint mHorizontalLinePaint = new Paint();
    private int mHorizontalLineSpace;
    private float mIntervalX;
    private float mIntervalY;
    private Drawable mLatestPressureDrawable;
    private Icon mLatestPressureIcon;
    private Rect mLatestPressureIconRect = new Rect();
    private Rect mLatestPressureTextRect = new Rect();
    private int mLatestPressureValue = 0;
    private String mPressureDefTimestamp = "";
    private String mPressureDefValue;
    private ArrayList<Integer> mPressureHistogramItems = new ArrayList();
    private String mPressureNowTimestamp;
    private Rect mPressureTimeRect = new Rect();
    private String mPressureTimeUnit;
    private String mPressureTipsForPrivacyMode = "";
    private int mPrimaryColor = -9447277;
    private Rect mPrivacyModeTextRect = new Rect();
    private long mStartTime;
    private Paint mTextPaint = new Paint();
    private float mTextSize;
    private int mTranslateX;
    private int mTranslateY;
    private int mUiMode = 0;
    private int mVerticalLineSpace;
    private int mVerticalLineYOffset;
    private int mXAxisEndX;
    private Rect mXAxisFirstLabelRect = new Rect();
    private Rect mYAxisFirstLabelRect = new Rect();
    private Paint mYAxisPaint = new Paint();

    public PressureHistogramDrawable(Context var1) {
        this.mContext = var1;
        this.init();
    }

    private void drawHorizontalLines(Canvas var1) {
        for(int var3 = 0; var3 < 3; ++var3) {
            int var4 = this.mHistogramRectTop;
            float var2 = (float)(this.mHorizontalLineSpace * var3 + var4);
            var1.drawLine(0.0F, var2, (float)this.mXAxisEndX, var2, this.mHorizontalLinePaint);
        }

    }

    private void drawLatestPressure(Canvas var1) {
        if (this.mUiMode == 1) {
            this.drawLatestPressureForPrivacyMode(var1);
        } else {
            this.drawLatestPressureIcon(var1);
            this.drawLatestPressureForNormalMode(var1);
        }

    }

    private void drawLatestPressureForNormalMode(Canvas var1) {
        int var2 = this.getLatestPressureMinutesAgo();
        int var3 = this.mLatestPressureValue;
        String var4;
        String var5;
        if (var3 > 0 && var2 != -1 && var2 <= /*10*/30) {
            if (var2 == 0) {
                var4 = String.valueOf(var3);
                var5 = this.mPressureNowTimestamp;
            } else {
                StringBuilder var6 = new StringBuilder();
                var6.append(var2);
                var6.append(this.mPressureTimeUnit);
                var5 = var6.toString();
                var4 = String.valueOf(var3);
            }
        } else {
            var4 = this.mPressureDefValue;
            var5 = this.mPressureDefTimestamp;
        }

        var2 = TextUtil.getTextBaseLine(this.mHighlightTextPaint, this.mLatestPressureTextRect);
        var1.drawText(var4, (float)this.mLatestPressureTextRect.left, (float)var2, this.mHighlightTextPaint);
        if (!var5.equals(this.mPressureDefTimestamp)) {
            this.mTextPaint.setTextAlign(Align.LEFT);
            var2 = TextUtil.getTextBaseLine(this.mTextPaint, this.mPressureTimeRect);
            var1.drawText(var5, (float)this.mPressureTimeRect.left, (float)var2, this.mTextPaint);
        }

    }

    private void drawLatestPressureForPrivacyMode(Canvas var1) {
        this.mTextPaint.setTextAlign(Align.LEFT);
        int var2 = TextUtil.getTextBaseLine(this.mTextPaint, this.mPrivacyModeTextRect);
        var1.drawText(this.mPressureTipsForPrivacyMode, (float)this.mPrivacyModeTextRect.left, (float)var2, this.mTextPaint);
    }

    private void drawLatestPressureIcon(Canvas var1) {
        Drawable var2 = this.mLatestPressureDrawable;
        if (var2 != null) {
            var2.setBounds(this.mLatestPressureIconRect);
            this.mLatestPressureDrawable.setTint(this.mPrimaryColor);
            this.mLatestPressureDrawable.draw(var1);
        }

    }

    private void drawPressureHistogram(Canvas var1) {
        ArrayList var3 = this.mPressureHistogramItems;
        if (var3 != null && !var3.isEmpty() && this.mUiMode != 1) {
            for(int var2 = 0; var2 < this.mPressureHistogramItems.size(); ++var2) {
                this.drawSingleHistogramItem(var1, (Integer)this.mPressureHistogramItems.get(var2), var2);
            }

        } else {
            SdkDebugLog.d("PressureHistogramDrawable", "[drawPressureHistogram] pressureHistogramItems is empty");
        }
    }

    private void drawSingleHistogramItem(Canvas var1, int var2, int var3) {
        float var6 = this.getCoordinateX(var3);
        float var4 = this.getCoordinateY(0);
        float var5 = this.getCoordinateY(var2);
        if (var4 == var5) {
            this.mHistogramPaint.setColor(this.mCurrentStyle.getQuaternaryColor());
            var1.drawPoint(var6, var4, this.mHistogramPaint);
        } else {
            var2 = this.getIndexByPressureVal(var2);
            if (this.mCurrentStyle.isColorfulStyle()) {
                Paint var7 = this.mHistogramPaint;
                if (var2 == -1) {
                    var2 = this.mCurrentStyle.getQuaternaryColor();
                } else {
                    var2 = PRESSURE_COLOR[var2];
                }

                var7.setColor(var2);
            } else {
                this.mHistogramPaint.setColor(this.mPrimaryColor);
            }

            var1.drawLine(var6, var4, var6, var5, this.mHistogramPaint);
        }

    }

    private void drawXAxisValues(Canvas var1) {
        Rect var5 = new Rect(this.mXAxisFirstLabelRect);
        this.mTextPaint.setTextAlign(Align.CENTER);
        float var2 = (float)TextUtil.getTextBaseLine(this.mTextPaint, var5);
        int var3 = 0;

        while(true) {
            int[] var4 = X_AXIS_VALUES_FIXED;
            if (var3 >= var4.length) {
                return;
            }

            var1.drawText(String.valueOf(var4[var3]), (float)var5.centerX(), var2, this.mTextPaint);
            var5.offset(this.mVerticalLineSpace, 0);
            ++var3;
        }
    }

    private void drawYAxisValues(Canvas var1) {
        Rect var7 = new Rect(this.mYAxisFirstLabelRect);
        int[] var6 = Y_AXIS_VALUES_FIXED;
        int var4 = var6.length;

        for(int var3 = 0; var3 < var4; ++var3) {
            int var5 = var6[var3];
            float var2 = (float)TextUtil.getTextBaseLine(this.mYAxisPaint, var7);
            var1.drawText(String.valueOf(var5), (float)var7.right, var2, this.mYAxisPaint);
            var7.offset(0, this.mHorizontalLineSpace);
        }

    }

    private float getCoordinateX(int var1) {
        return (float)var1 * this.mIntervalX + (float)this.mHistogramRect.left;
    }

    private float getCoordinateY(int var1) {
        return (float)this.mHistogramRect.bottom - (float)var1 * this.mIntervalY;
    }

    private int getIndexByPressureVal(int var1) {
        if (var1 <= 0) {
            return -1;
        } else if (var1 > 0 && var1 < 30) {
            return 0;
        } else if (var1 >= 30 && var1 < 60) {
            return 1;
        } else {
            return var1 >= 60 && var1 < 80 ? 2 : 3;
        }
    }

    private int getLatestPressureMinutesAgo() {
        if (this.mStartTime <= 0L) {
            return -1;
        } else {
            long var4 = System.currentTimeMillis();
            long var2 = this.mStartTime;
            String var6;
            if (var2 > var4) {
                var6 = "[getLatestPressureMinutesAgo] latest pressure timestamp is future";
            } else {
                var2 = (long)((int)((var4 - var2) / TimeUnit.SECONDS.toMillis(1L)));
                TimeUnit var7 = TimeUnit.MINUTES;
                if (var2 < var7.toSeconds(1L)) {
                    SdkDebugLog.d("PressureHistogramDrawable", "[getLatestPressureMinutesAgo] latest pressure timestamp is now");
                    return 0;
                }

                int var1 = (int)(var2 / var7.toSeconds(1L));
                if (var1 < 10) {
                    return var1;
                }

                var6 = "[getLatestPressureMinutesAgo] latest pressure timestamp is expired";
            }

            SdkDebugLog.d("PressureHistogramDrawable", var6);
            return -1;
        }
    }

    private void init() {
        Resources var1 = this.mContext.getResources();
        this.initGlobals(var1);
        this.initPaints();
        this.initXAxis(var1);
        this.initYAxis(var1);
        this.initLatestPressure(var1);
        this.initHistogram(var1);
        this.initXYIntervals();
        this.initVib(this.mContext);
    }

    private void initGlobals(Resources var1) {
        this.mHighlightTextSize = var1.getDimension(R.dimen.y28);
        this.mTextSize = var1.getDimension(R.dimen.y18);
        this.mHistogramRectTop = Math.round(var1.getDimension(R.dimen.x41));
        this.mHorizontalLineSpace = Math.round(var1.getDimension(R.dimen.y32));
        this.mXAxisEndX = Math.round(var1.getDimension(R.dimen.x378));
        this.mVerticalLineSpace = Math.round(var1.getDimension(R.dimen.x69));
        this.mVerticalLineYOffset = Math.round(var1.getDimension(R.dimen.y4));
    }

    private void initHistogram(Resources var1) {
        int var2 = Math.round(var1.getDimension(R.dimen.x24));
        int var5 = this.mHistogramRectTop;
        int var3 = this.mVerticalLineSpace;
        int var6 = this.mHorizontalLineSpace;
        int var4 = this.mVerticalLineYOffset;
        this.mHistogramRect.set(var2, var5, var3 * 4 + var2, var6 * 2 - var4 + var5);
    }

    private void initLatestPressure(Resources var1) {
        this.mPressureDefValue = this.mContext.getString(R.string.complicationDrawable_noDataText);
        this.mPressureNowTimestamp = this.mContext.getString(R.string.heart_rate_time_now);
        this.mPressureTimeUnit = this.mContext.getResources().getQuantityString(R.plurals.heart_rate_time_unit, 1);
        this.mPressureTipsForPrivacyMode = this.mContext.getString(R.string.privacy_mode_tips);
        int var2 = Math.round(Math.min(var1.getDimension(R.dimen.x36), var1.getDimension(R.dimen.y36)));
        int var3 = Math.round(var1.getDimension(R.dimen.x18));
        int var4 = Math.round(var1.getDimension(R.dimen.y4));
        this.mLatestPressureIconRect.set(0, 0, var2, var2);
        this.mLatestPressureIconRect.offset(var3, var4);
        var4 = Math.round(var1.getDimension(R.dimen.x121));
        var2 = Math.round(var1.getDimension(R.dimen.y26));
        int var5 = Math.round(var1.getDimension(R.dimen.x24));
        var3 = R.dimen.y10;
        int var6 = Math.round(var1.getDimension(var3));
        this.mPrivacyModeTextRect.set(0, 0, var4, var2);
        this.mPrivacyModeTextRect.offset(var5, var6);
        var4 = Math.round(var1.getDimension(R.dimen.x28));
        var5 = Math.round(var1.getDimension(R.dimen.x58));
        var3 = Math.round(var1.getDimension(var3));
        this.mLatestPressureTextRect.set(0, 0, var4, var2);
        this.mLatestPressureTextRect.offset(var5, var3);
        var2 = Math.round(var1.getDimension(R.dimen.x80));
        var4 = Math.round(var1.getDimension(R.dimen.x98));
        var3 = Math.round(var1.getDimension(R.dimen.y12));
        this.mPressureTimeRect.set(var4, var3, var2 + var4, this.mLatestPressureTextRect.bottom);
    }

    private void initPaints() {
        this.mHorizontalLinePaint.setAntiAlias(true);
        this.mHorizontalLinePaint.setColor(869849304);
        this.mHorizontalLinePaint.setStyle(Style.STROKE);
        this.mHorizontalLinePaint.setStrokeWidth(1.0F);
        this.mHighlightTextPaint.setAntiAlias(true);
        this.mHighlightTextPaint.setColor(-1);
        this.mHighlightTextPaint.setTextSize(this.mHighlightTextSize);
        this.mHighlightTextPaint.setTextAlign(Align.LEFT);
        this.mHighlightTextPaint.setTypeface(FontUtils.getFont(this.mContext, "OPlusSans-Data-Bold.ttf")); // 修改字体
        this.mHighlightTextPaint.setFakeBoldText(true);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setColor(-1711276033);
        this.mTextPaint.setTextSize(this.mTextSize);
        this.mTextPaint.setTextAlign(Align.LEFT);
        this.mTextPaint.setTypeface(FontUtils.getFont(this.mContext, "OPlusSans-Data-Bold.ttf")); // 修改字体
        this.mTextPaint.setFakeBoldText(true);
        this.mYAxisPaint.setAntiAlias(true);
        this.mYAxisPaint.setColor(-1711276033);
        this.mYAxisPaint.setTextSize(this.mTextSize);
        this.mYAxisPaint.setTextAlign(Align.RIGHT);
        this.mYAxisPaint.setTypeface(FontUtils.getFont(this.mContext, "OPlusSans-Data-Bold.ttf")); // 修改字体
        this.mYAxisPaint.setFakeBoldText(true);
        this.mHistogramPaint.setAntiAlias(true);
        this.mHistogramPaint.setStrokeWidth(4.0F);
        this.mHistogramPaint.setStyle(Style.STROKE);
        this.mHistogramPaint.setStrokeCap(Cap.ROUND);
    }

    private void initXAxis(Resources var1) {
        int var4 = Math.round(var1.getDimension(R.dimen.x12));
        int var5 = Math.round(var1.getDimension(R.dimen.y26));
        int var2 = Math.round(var1.getDimension(R.dimen.x16));
        int var3 = Math.round(var1.getDimension(R.dimen.y111));
        this.mXAxisFirstLabelRect.set(var2, var3, var4 + var2, var5 + var3);
    }

    private void initXYIntervals() {
        this.mIntervalX = (float)this.mHistogramRect.width() * 1.0F / 48.0F;
        this.mIntervalY = (float)this.mHistogramRect.height() * 1.0F / (float)Y_AXIS_VALUES_FIXED[0];
    }

    private void initYAxis(Resources var1) {
        int var4 = Math.round(var1.getDimension(R.dimen.x31));
        int var2 = Math.round(var1.getDimension(R.dimen.y26));
        int var3 = Math.round(var1.getDimension(R.dimen.y41));
        int var5 = Math.round(var1.getDimension(R.dimen.x333));
        this.mYAxisFirstLabelRect.set(var5, var3, var4 + var5, var2 + var3);
    }

    private void loadLatestPressureIcon() {
        Icon var1 = this.mLatestPressureIcon;
        String var2;
        if (var1 == null) {
            var2 = "[drawLatestPressureIcon] icon is null";
        } else {
            Drawable var3 = var1.loadDrawable(this.mContext);
            this.mLatestPressureDrawable = var3;
            if (var3 != null) {
                var3.mutate();
                return;
            }

            var2 = "[drawLatestPressureIcon] IconDrawable is null";
        }

        SdkDebugLog.e("PressureHistogramDrawable", var2);
    }

    private void onBoundsChanged(Rect var1) {
        this.mTranslateX = var1.left;
        this.mTranslateY = var1.top;
    }

    private void updatePressureData(PressureHistogramData var1) {
        if (var1 == null) {
            SdkDebugLog.e("PressureHistogramDrawable", "[updatePressureData] data is empty");
        } else {
            StringBuilder var5 = d.e("[updatePressureData] ");
            var5.append(var1.toString());
            SdkDebugLog.d("PressureHistogramDrawable", var5.toString());
            this.mLatestPressureValue = var1.getLatestPressure();
            this.mLatestPressureIcon = var1.getIcon();
            this.mStartTime = var1.getStartTime();
            this.loadLatestPressureIcon();
            int[] var6 = var1.getPressures();
            if (var6 != null) {
                this.mPressureHistogramItems.clear();
                int var3 = var6.length;

                for(int var2 = 0; var2 < var3; ++var2) {
                    int var4 = var6[var2];
                    this.mPressureHistogramItems.add(var4);
                }
            }

        }
    }

    private void drawTestStroke(Canvas canvas) {
        Paint borderPaint = new Paint();
        borderPaint.setColor(Color.WHITE);
        borderPaint.setStyle(Paint.Style.STROKE);
        borderPaint.setStrokeWidth(1);

        RectF iconRect = new RectF(this.mLatestPressureIconRect);
        RectF histogramRect = new RectF(this.mHistogramRect);
        RectF timeRect = new RectF(this.mPressureTimeRect);
        RectF textRect = new RectF(this.mLatestPressureTextRect);
        RectF privacyRect = new RectF(this.mPrivacyModeTextRect);
        RectF xRect = new RectF(this.mXAxisFirstLabelRect);
        RectF yRect = new RectF(this.mYAxisFirstLabelRect);
        float right = mVerticalLineSpace * 4 + 24;
//        canvas.drawRect(iconRect, borderPaint);
        canvas.drawRect(histogramRect, borderPaint);
//        canvas.drawRect(timeRect, borderPaint);
//        canvas.drawRect(textRect, borderPaint);
//        canvas.drawRect(privacyRect, borderPaint);
//        canvas.drawRect(xRect, borderPaint);
        canvas.drawRect(yRect, borderPaint);
    }
    public void drawGradientRect(Canvas var1) {
        // 直方图最右端到整个小组件最右端的距离，由于 mYAxisFirstLabelRect 最右端超出了一点距离所以使用 centerX
        float gap = mYAxisFirstLabelRect.centerX() - mHistogramRect.right;
        // 三个矩形加四个间隔的总宽度
        float totalWidth = mHistogramRect.right + gap;
        // 矩形间的间隔宽度（两个）
        float rectGap = 5.0f;
        // 最外侧矩形与边缘的间隔宽度（两个）
        float rectToEdgeGap = 10.0f;
        // 矩形圆角半径
        float cornerRadius = 80.0f;
        // 每个矩形的宽度
        float rectWidth = (totalWidth - 2 * rectGap - 2 * rectToEdgeGap) / 3;
        // 每个矩形的高度
        float rectHeight = (float) mHistogramRect.height() / 2;

        float top = (float) mHistogramRect.top + rectHeight;
        float bottom = mHistogramRect.bottom;

        // 第一个矩形
        Paint rectPain1 = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
        LinearGradient gradient1 = new LinearGradient(
                mHistogramRect.left, 0, mHistogramRect.left + rectWidth, 0,
                Color.rgb(223, 99,103), Color.rgb(152,141,189), Shader.TileMode.CLAMP);
        rectPain1.setShader(gradient1);
        RectF rect1 = new RectF(
                rectToEdgeGap, top,
                rectToEdgeGap + rectWidth, bottom);
        var1.drawRoundRect(rect1, cornerRadius, cornerRadius, rectPain1);

        // 第二个矩形
        Paint rectPaint2 = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
        LinearGradient gradient2 = new LinearGradient(
                rect1.right + rectGap, 0, rect1.right + rectGap + rectWidth, 0,
                Color.rgb(152,141,189), Color.rgb(106,157,205), Shader.TileMode.CLAMP);
        rectPaint2.setShader(gradient2);
        RectF rect2 = new RectF(
                rect1.right + rectGap, top,
                rect1.right + rectGap + rectWidth, bottom);
        var1.drawRoundRect(rect2, cornerRadius, cornerRadius, rectPaint2);

        // 第三个矩形
        Paint rectPaint3 = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
        LinearGradient gradient3 = new LinearGradient(
                rect2.right + rectGap, 0, rect2.right + rectGap + rectWidth, 0,
                Color.rgb(106,157,205), Color.rgb(207,170, 67), Shader.TileMode.CLAMP);
        rectPaint3.setShader(gradient3);
        RectF rect3 = new RectF(
                rect2.right + rectGap, top,
                rect2.right + rectGap + rectWidth, bottom);
        var1.drawRoundRect(rect3, cornerRadius, cornerRadius, rectPaint3);

        Paint borderPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        borderPaint.setColor(Color.WHITE);
        borderPaint.setStyle(Paint.Style.STROKE);
        borderPaint.setStrokeWidth(1);
        RectF rects = new RectF(rectToEdgeGap, top, rect2.right + rectGap + rectWidth, bottom);
        var1.drawRect(rects, borderPaint);
    }

    public void originalDraw(Canvas canvas) {
        canvas.save();
        canvas.translate((float)this.mTranslateX, (float)this.mTranslateY);
        this.drawHorizontalLines(canvas);
        this.drawYAxisValues(canvas);
        this.drawXAxisValues(canvas);
        this.drawLatestPressure(canvas);
        this.drawPressureHistogram(canvas);
        canvas.restore();
    }

    private Vibrator vibrator;
    private SensorManager sensorManager;
    private Sensor accelerometer;
    private boolean isSensorRegistered = false;
    private boolean vibrating;
    private boolean shaking;

    private void initVib(Context context) {
        vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
        sensorManager = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
        accelerometer = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        // 防止多个实例调用 onSensorChanged 方法
        if (!isSensorRegistered) {
            sensorManager.registerListener(this, accelerometer, 1000);
            isSensorRegistered = true;
        }
    }

    // 在 24:00 到 06:00 之间跳过执行
    private boolean isNightTime() {
        Calendar calendar = Calendar.getInstance();
        int hourOfDay = calendar.get(Calendar.HOUR_OF_DAY);
        return (hourOfDay >= 0 && hourOfDay < 6) || (hourOfDay == 24);
    }

    public void vib() {
        if (isNightTime()) return;

        String myTag = "PressureHistogramDrawable#vib()";
        Log.d(myTag, "invoking vib()");
//        Bundle bundle = new Bundle();
//        bundle.putBoolean("show_heytap_indicator", true);
//        Notification.Builder builder = null;
//        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
//            builder = new Notification.Builder
//                    (mContext.getApplicationContext(), "channel");
//            builder.setOngoing(true)
//                    .addExtras(bundle)
//                    .setCategory("workout");
//        }

        int pressureValue = this.mLatestPressureValue;
        int minutesAgo = this.getLatestPressureMinutesAgo();
        int threshold = 35/*60*/;
        Vibrator vib = (Vibrator) this.mContext.getSystemService(Context.VIBRATOR_SERVICE);
        long[] pattern = {500, 1000, 500, 1000}; // 等待半秒，振动一秒
        Log.d(myTag, "pressure data: pressureValue: " + pressureValue + ", minutesAgo: " + minutesAgo);

        if (vib != null &&
                minutesAgo >= 0 && pressureValue != -1 && minutesAgo <= 5 && // 检测数据是否正常
                pressureValue > threshold && // 当压力值小于临界值
                Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && // 检查是否支持 VibrationEffect
                !vibrating) {
            VibrationEffect effect = VibrationEffect.createWaveform(pattern, 0); // 无限循环
            vib.vibrate(effect);
            vibrating = true;
        }
    }

    private void updateVibrationStatus() {
        if (!vibrator.hasVibrator()) {
            return;
        }

        if (isScreenOff()) {
            if (vibrating) {
                vibrator.cancel();
                vibrating = false;
            }
        }
    }

    private boolean isScreenOff() {
        PowerManager powerManager = (PowerManager) mContext.getSystemService(Context.POWER_SERVICE);
        return !powerManager.isInteractive();
    }

    long lastUpdateTime = 0;
    final long updateInterval = 1000000000; // 1 秒
    @Override
    public void onSensorChanged(SensorEvent event) {
        if (isNightTime()) return;

        long currentTime = System.nanoTime();
        if (currentTime - lastUpdateTime >= updateInterval) {
            lastUpdateTime = currentTime;

            if (event.sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
                // 检测设备的加速度变化来判断是否摇动
                float x = event.values[0];
                float y = event.values[1];
                float z = event.values[2];
                boolean shakingNow = Math.abs(x) > 15 || Math.abs(y) > 15 || Math.abs(z) > 15;

                String myTag = "PressureHistogramDrawable#onSensorChanged()";
                Log.d(myTag, "accelerometer data: " + Math.abs(x) + " " + Math.abs(y) + " " + Math.abs(z));
                Log.d(myTag, "status: vibrating: " + vibrating + " this.shaking: " + this.shaking + " screenoff: " + isScreenOff());

                updateVibrationStatus();
                this.shaking = shakingNow;


                // 如果停止摇动且符合条件，启动振动
                if (!shakingNow && !vibrating) {
                    vib();
                }

                // 如果正在摇动且振动中，停止振动
                if (shakingNow && vibrating) {
                    vibrator.cancel();
                    vibrating = false;
                }
            }
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i) { }

    public void draw(Canvas var1) {
        var1.save();
        var1.translate((float)this.mTranslateX, (float)this.mTranslateY);
        this.drawHorizontalLines(var1);
        this.drawYAxisValues(var1);
        this.drawXAxisValues(var1);
        this.drawLatestPressure(var1);
        this.drawPressureHistogram(var1);
        // migrated to originDraw()
//        this.originalDraw(var1);

//        this.drawTestStroke(var1);
//        this.drawGradientRect(var1);
        var1.restore();
    }

    public int getOpacity() {
        return -2;
    }

    public void onLocaleChanged() {
        this.init();
    }

    public void setAlpha(int var1) {
    }

    public void setBounds(int var1, int var2, int var3, int var4) {
        super.setBounds(var1, var2, var3, var4);
        this.onBoundsChanged(new Rect(var1, var2, var3, var4));
    }

    public void setBounds(Rect var1) {
        super.setBounds(var1);
        this.onBoundsChanged(var1);
    }

    public void setColorFilter(ColorFilter var1) {
    }

    public void setPressureData(PressureHistogramData var1) {
        this.updatePressureData(var1);
    }

    public void setStyle(ComplicationStyle var1) {
        this.mCurrentStyle = var1;
        this.mPrimaryColor = var1.getPrimaryColor();
    }

    public void setUiMode(int var1) {
        this.mUiMode = var1;
    }
}