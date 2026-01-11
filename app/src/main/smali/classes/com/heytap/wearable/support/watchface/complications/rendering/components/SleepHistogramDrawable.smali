.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRIMARY_COLOR:I = -0x159fa9

.field private static final DURATION_COLOR:I = -0x1

.field private static final HOUR_COLOR:I = 0x66ffffff

.field private static final LINE_COUNT:I = 0x4

.field private static final SLEEP_DEEP_COLOR:I = -0xafa738

.field private static final SLEEP_DEFAULT_COLOR:I = 0x0

.field private static final SLEEP_LINE_COLOR:I = 0x33d8d8d8

.field private static final SLEEP_LOW_COLOR:I = -0x7c761b

.field private static final SLEEP_REM_COLOR:I = -0x2f2c01

.field private static final SLEEP_WAKE_COLOR:I = -0x2fcc

.field private static final STATUS_BACKGROUND_ALPHA:F = 0.4f

.field private static final STATUS_COLOR_LESS:I = -0x585a7

.field private static final STATUS_COLOR_MORE:I = -0xaa2f81

.field private static final STATUS_NORMAL_COLOR:I = -0x9d3657

.field private static final TAG:Ljava/lang/String; = "SleepHistogramDrawable"

.field private static final TIME_BASIC_UNIT:I = 0x3c


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultTimeText:Ljava/lang/String;

.field private mDurationDefaultText:Ljava/lang/String;

.field private mDurationNumHeight:I

.field private mDurationNumHour:Ljava/lang/String;

.field private mDurationNumHourRect:Landroid/graphics/Rect;

.field private mDurationNumMinute:Ljava/lang/String;

.field private mDurationNumMinuteRect:Landroid/graphics/Rect;

.field private mDurationNumPaint:Landroid/graphics/Paint;

.field private mDurationTextHour:Ljava/lang/String;

.field private mDurationTextHourRect:Landroid/graphics/Rect;

.field private mDurationTextMinute:Ljava/lang/String;

.field private mDurationTextMinuteRect:Landroid/graphics/Rect;

.field private mDurationTextPaint:Landroid/graphics/Paint;

.field private mEndSleepTimeRect:Landroid/graphics/Rect;

.field private mEndTimeText:Ljava/lang/String;

.field private final mHistogramData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;",
            ">;"
        }
    .end annotation
.end field

.field private mHistogramHeight:I

.field private mHistogramMarginTop:I

.field private mHistogramRectPaint:Landroid/graphics/Paint;

.field private mHorizontalLinesHeight:I

.field private mHorizontalLinesMarginTop:I

.field private mHorizontalLinesWidth:I

.field private mHourPaint:Landroid/graphics/Paint;

.field private mIsColorful:Z

.field private mLockedText:Ljava/lang/String;

.field private mMarginLeft:I

.field private mPrimaryColor:I

.field private mSleepTimeHeight:I

.field private mSleepTimeMarginTop:I

.field private mStartSleepTimeRect:Landroid/graphics/Rect;

.field private mStartTimeText:Ljava/lang/String;

.field private mStatus:I

.field private mStatusBgPaint:Landroid/graphics/Paint;

.field private mStatusBgRadius:I

.field private mStatusHeight:I

.field private mStatusMarginLeft:I

.field private mStatusMarginTop:I

.field private mStatusPaint:Landroid/graphics/Paint;

.field private mStatusText:Ljava/lang/String;

.field private mStatusTextRect:Landroid/graphics/Rect;

.field private mTranslateX:I

.field private mTranslateY:I

.field private mUiMode:I

.field private mXAxis1PX:I

.field private mYAxis1PX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mUiMode:I

    const v0, -0x159fa9

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mPrimaryColor:I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramData:Ljava/util/List;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->init()V

    return-void
.end method

.method private calcHistogramEndY(I)I
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramMarginTop:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    mul-int/2addr p1, v1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    mul-int/2addr p1, v2

    :goto_0
    add-int/2addr v0, p1

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    add-int/2addr v0, p1

    :goto_1
    return v0
.end method

.method private calcHistogramStartY(I)I
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramMarginTop:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    add-int/2addr v0, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    mul-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    mul-int/2addr p1, v2

    :goto_0
    add-int/2addr v0, p1

    :cond_3
    :goto_1
    return v0
.end method

.method private drawDuration(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mIsColorful:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mPrimaryColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mLockedText:Ljava/lang/String;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mXAxis1PX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinuteRect:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHour:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHour:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHourRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-static {v3, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextHourRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mYAxis1PX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextHour:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextHourRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinute:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinute:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinuteRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-static {v3, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinuteRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mYAxis1PX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinute:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinuteRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHour:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinute:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationDefaultText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinuteRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-static {v3, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private drawHistogram(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramRectPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mIsColorful:Z

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;->access$000(Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;)I

    move-result v3

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mPrimaryColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;->access$100(Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private drawHorizontalLines(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramRectPaint:Landroid/graphics/Paint;

    const v1, 0x33d8d8d8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesWidth:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesMarginTop:I

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesHeight:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    int-to-float v5, v2

    int-to-float v8, v3

    int-to-float v7, v0

    iget-object v9, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramRectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawSleepTime(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStartSleepTimeRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDefaultTimeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDefaultTimeText:Ljava/lang/String;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    int-to-float v3, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesWidth:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDefaultTimeText:Ljava/lang/String;

    :goto_0
    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStartTimeText:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStartSleepTimeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mEndTimeText:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mEndSleepTimeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private drawStatus(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatus:I

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->getStatusColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusBgPaint:Landroid/graphics/Paint;

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ColorUtils;->setAlphaComponent(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusTextRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusText:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusTextRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusBgRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getHistogramColor(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, -0x2f2c01

    return p1

    :cond_1
    const p1, -0xafa738

    return p1

    :cond_2
    const p1, -0x7c761b

    return p1

    :cond_3
    const/16 p1, -0x2fcc

    return p1
.end method

.method private getStatusColor(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mIsColorful:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, -0x9d3657

    return p1

    :cond_0
    const p1, -0xaa2f81

    return p1

    :cond_1
    const p1, -0x585a7

    return p1

    :cond_2
    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mPrimaryColor:I

    return p1
.end method

.method private getStatusText(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->sleep_status_normal:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->sleep_status_more:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->sleep_status_less:I

    goto :goto_0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->initDimen(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->initPaint(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->initText(Landroid/content/res/Resources;)V

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->setHistogramData(Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;)V

    return-void
.end method

.method private initDimen(Landroid/content/res/Resources;)V
    .locals 2

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x25:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mXAxis1PX:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mYAxis1PX:I

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y16:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramHeight:I

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y42:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramMarginTop:I

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x326:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesHeight:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y54:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesMarginTop:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y40:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHeight:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusBgRadius:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y24:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusHeight:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x8:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusMarginLeft:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x9:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusMarginTop:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y26:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mSleepTimeHeight:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y111:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mSleepTimeMarginTop:I

    return-void
.end method

.method private initDurationRect(I)V
    .locals 8

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHour:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinute:Ljava/lang/String;

    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mXAxis1PX:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHour:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextHour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinute:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHour:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    move v3, v6

    :cond_2
    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinute:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v6

    :cond_3
    if-lez v0, :cond_4

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mXAxis1PX:I

    mul-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_4
    move v0, v6

    :goto_2
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v1, p1

    iget v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHeight:I

    invoke-direct {v5, p1, v6, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHourRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHourRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHeight:I

    invoke-direct {p1, v1, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextHourRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHeight:I

    invoke-direct {p1, v0, v6, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinuteRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumMinuteRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumHeight:I

    invoke-direct {p1, v0, v6, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinuteRect:Landroid/graphics/Rect;

    return-void
.end method

.method private initHistogram(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesWidth:I

    int-to-float v1, v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->getTimeValue()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v8, v6, v7

    div-float/2addr v5, v8

    mul-float/2addr v5, v1

    cmpg-float v8, v5, v7

    if-gez v8, :cond_0

    add-float/2addr v3, v7

    goto :goto_1

    :cond_0
    const/high16 v7, 0x41a00000    # 20.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_1

    cmpl-float v7, v3, v2

    if-lez v7, :cond_1

    sub-float/2addr v5, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v1

    add-float v7, v3, v5

    move v3, v2

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    add-float v5, v0, v7

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->getSleepMode()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->getHistogramColor(I)I

    move-result v6

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->getSleepMode()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->calcHistogramStartY(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->getSleepMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->calcHistogramEndY(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v7, v0, v8, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramData:Ljava/util/List;

    new-instance v4, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;

    invoke-direct {v4, v6, v7}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;-><init>(ILandroid/graphics/RectF;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initPaint(Landroid/content/res/Resources;)V
    .locals 6

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    const v3, 0x66ffffff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    const-string v4, "sys-sans-en"

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y28:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusBgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramRectPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initSleepTimeRect()V
    .locals 5

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mSleepTimeMarginTop:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mSleepTimeHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStartTimeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mSleepTimeMarginTop:I

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStartSleepTimeRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHourPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mEndTimeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mMarginLeft:I

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHorizontalLinesWidth:I

    add-int/2addr v2, v3

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mSleepTimeMarginTop:I

    invoke-direct {v3, v1, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mEndSleepTimeRect:Landroid/graphics/Rect;

    return-void
.end method

.method private initStatusRect()V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mXAxis1PX:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinuteRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusMarginLeft:I

    add-int/2addr v0, v2

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusMarginTop:I

    add-int/2addr v1, v0

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusHeight:I

    add-int/2addr v4, v3

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusTextRect:Landroid/graphics/Rect;

    return-void
.end method

.method private initText(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->sleep_duration_text_hour:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextHour:Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->sleep_duration_text_minute:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationTextMinute:Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->sleep_no_data:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDurationDefaultText:Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_tips:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mLockedText:Ljava/lang/String;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->default_time_style:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDefaultTimeText:Ljava/lang/String;

    return-void
.end method

.method private isLocked()Z
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mTranslateX:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mTranslateY:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mTranslateY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->drawHorizontalLines(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->drawDuration(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->drawStatus(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->drawHistogram(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->drawSleepTime(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getShowTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mDefaultTimeText:Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->init()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setHistogramData(Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getDuration()I

    move-result v0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getHistory()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getStatus()I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatus:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getTotalTime()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->initHistogram(Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->setEndTime(J)V

    invoke-virtual {p1, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->setStartTime(J)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mHistogramData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->initDurationRect(I)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getEndTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->getShowTime(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mEndTimeText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getStartTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->getShowTime(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStartTimeText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->initSleepTimeRect()V

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->getStatusText(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mStatusText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->initStatusRect()V

    return-void
.end method

.method public setStyle(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mIsColorful:Z

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mPrimaryColor:I

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->mUiMode:I

    return-void
.end method
