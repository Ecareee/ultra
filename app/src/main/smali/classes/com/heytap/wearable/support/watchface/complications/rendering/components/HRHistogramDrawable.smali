.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PRIMARY_COLOR:I = -0x159fa9

.field private static final DURATION_BY_MINUTE:I = 0x5a0

.field private static final FIX_Y_AXIS_VALUES:Z = false

.field private static final HISTOGRAM_ITEM_WIDTH:F = 2.0f

.field private static final H_LINE_COLOR:I = 0x33d8d8d8

.field private static final H_LINE_NUM:I = 0x3

.field private static final H_LINE_STROKE_WIDTH:F = 0.5f

.field private static final LATEST_HR_COLOR:I = -0x1

.field private static final LATEST_HR_EXPIRATION_MINUTES:I = 0xa

.field private static final LATEST_HR_TIMESTAMP_INVALID:I = -0x1

.field private static final LATEST_HR_TIMESTAMP_NOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HRHistogramDrawable"

.field private static final V_LINE_NUM:I = 0x5

.field private static final X_AXIS_VALUES_FIXED:[I

.field private static final X_AXIS_VALUE_COLOR:I = -0x66000001

.field private static final X_AXIS_VALUE_NUM:I = 0x5

.field private static final Y_AXIS_VALUES1:[I

.field private static final Y_AXIS_VALUES2:[I

.field private static final Y_AXIS_VALUES3:[I

.field private static final Y_AXIS_VALUES4:[I

.field private static final Y_AXIS_VALUES5:[I

.field private static final Y_AXIS_VALUES_FIXED:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHRTipsForPrivacyMode:Ljava/lang/String;

.field private mHeartRateValueBottom:I

.field private mHeartRateValueLeft:I

.field private mHeartRateValueTop:I

.field private mHighlightTextPaint:Landroid/graphics/Paint;

.field private mHighlightTextSize:F

.field private mHistogramPaint:Landroid/graphics/Paint;

.field private mHistogramRect:Landroid/graphics/Rect;

.field private mHistogramRectLeft:I

.field private mHistogramRectTop:I

.field private mHorizontalLinePaint:Landroid/graphics/Paint;

.field private mHorizontalLineSpace:I

.field private mIntervalX:F

.field private mIntervalY:F

.field private mLatestHRTimeX:F

.field private mLatestHRTimeY:F

.field private mLatestHRTimestamp:J

.field private mLatestHRValue:I

.field private mLatestHRValueX:F

.field private mLatestHRValueY:F

.field private mPrimaryColor:I

.field private mRHDefTimestamp:Ljava/lang/String;

.field private mRHDefValue:Ljava/lang/String;

.field private mRHNowTimestamp:Ljava/lang/String;

.field private mRHTimeUnit:Ljava/lang/String;

.field private mRHValueUnit:Ljava/lang/String;

.field private mTextHighLightRect:Landroid/graphics/Rect;

.field private mTextLowLightRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTranslateX:I

.field private mTranslateY:I

.field private mUiMode:I

.field private mVerticalLineSpace:I

.field private mXAxisEndX:I

.field private mXAxisFirstLabelRect:Landroid/graphics/Rect;

.field private mXAxisValues:[I

.field private mYAxisFirstLabelRect:Landroid/graphics/Rect;

.field private mYAxisLabelRectSpace:I

.field private mYAxisPaint:Landroid/graphics/Paint;

.field private mYAxisValues:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES1:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES2:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES3:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES4:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES5:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->X_AXIS_VALUES_FIXED:[I

    return-void

    :array_0
    .array-data 4
        0x78
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x96
        0x4b
    .end array-data

    :array_2
    .array-data 4
        0xb4
        0x5a
    .end array-data

    :array_3
    .array-data 4
        0xd2
        0x69
    .end array-data

    :array_4
    .array-data 4
        0xdc
        0x6e
    .end array-data

    :array_5
    .array-data 4
        0xdc
        0x6e
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x6
        0xc
        0x12
        0x18
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, -0x159fa9

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mPrimaryColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mUiMode:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueY:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimeX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimeY:F

    const-string v0, ""

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHDefTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRTipsForPrivacyMode:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->X_AXIS_VALUES_FIXED:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mXAxisValues:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisValues:[I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->init()V

    return-void
.end method

.method private calcStepTextRect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueLeft:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueTop:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueTop:I

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x4:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueTop:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p2

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueBottom:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private calcXYIntervals()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x44b40000    # 1440.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mIntervalX:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mIntervalY:F

    return-void
.end method

.method private calcYAxisValues()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->getDynamicYAxisValues()[I

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisValues:[I

    return-void
.end method

.method private drawHRHistogram(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;

    invoke-direct {p0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawSingleHistogramItem(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p1, "HRHistogramDrawable"

    const-string v0, "[drawHRHistogram] HR points is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawHorizontalLines(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRectTop:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLineSpace:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mXAxisEndX:I

    int-to-float v6, v1

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawLatestHR(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawLatestHRForPrivacyMode(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawLatestHRForNormalMode(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawLatestHRForNormalMode(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->getLatestHRMinutesAgo()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValue:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHNowTimestamp:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHTimeUnit:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHDefValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHDefTimestamp:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHDefValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHValueUnit:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueX:F

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueY:F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHValueUnit:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->calcStepTextRect(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v3, v3

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHValueUnit:Ljava/lang/String;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHDefTimestamp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimeX:F

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimeY:F

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private drawLatestHRForPrivacyMode(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRTipsForPrivacyMode:Ljava/lang/String;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueX:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueY:F

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSingleHistogramItem(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;)V
    .locals 8

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->getMax()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->getTimeIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->getCoordinateX(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->getMin()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->getCoordinateY(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->getMax()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->getCoordinateY(I)I

    move-result p2

    if-ne v1, p2, :cond_1

    int-to-float p2, v0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    int-to-float v5, v0

    int-to-float v4, v1

    int-to-float v6, p2

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawXAxisValues(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v2, -0x66000001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mXAxisValues:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mVerticalLineSpace:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawYAxisValues(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisValues:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisLabelRectSpace:I

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCoordinateX(I)I
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mIntervalX:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    return p1
.end method

.method private getCoordinateY(I)I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mIntervalY:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getDynamicYAxisValues()[I
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->getMaxHR()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES1:[I

    return-object v0

    :cond_0
    const/16 v1, 0x78

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES2:[I

    return-object v0

    :cond_1
    const/16 v1, 0x96

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES3:[I

    return-object v0

    :cond_2
    const/16 v1, 0xb4

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES4:[I

    return-object v0

    :cond_3
    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES5:[I

    return-object v0
.end method

.method private getFixedYAxisValues()[I
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    return-object v0
.end method

.method private getLatestHRMinutesAgo()I
    .locals 10

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimestamp:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    mul-long/2addr v8, v4

    cmp-long v4, v8, v2

    const-string v5, "HRHistogramDrawable"

    if-lez v4, :cond_1

    const-string v0, "[getLatestHRMinutesAgo] latest hr timestamp is future"

    :goto_0
    invoke-static {v5, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    sub-long/2addr v2, v8

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    div-long/2addr v2, v8

    long-to-int v0, v2

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    cmp-long v4, v2, v8

    if-gez v4, :cond_2

    const-string v0, "[getLatestHRMinutesAgo] latest hr timestamp is now"

    invoke-static {v5, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    div-long/2addr v2, v6

    long-to-int v0, v2

    const/16 v2, 0xa

    if-lt v0, v2, :cond_3

    const-string v0, "[getLatestHRMinutesAgo] latest hr timestamp is expired"

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getMaxHR()I
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->getMax()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->getMax()I

    move-result v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->initGlobals(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->initPaints()V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->initLatestHR(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->initHourUnit(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->initXAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->initYAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->initHistogram(Landroid/content/res/Resources;)V

    return-void
.end method

.method private initGlobals(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y28:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextSize:F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextSize:F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x378:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mXAxisEndX:I

    return-void
.end method

.method private initHistogram(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y41:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRectTop:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y32:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLineSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x21:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRectLeft:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x69:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mVerticalLineSpace:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRectLeft:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRectTop:I

    mul-int/lit8 p1, p1, 0x4

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLineSpace:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    add-int/2addr p1, v0

    add-int/2addr v2, v1

    invoke-virtual {v3, v0, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initHourUnit(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y21:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x346:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y113:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    return-void
.end method

.method private initLatestHR(Landroid/content/res/Resources;)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->heart_rate_text_unit:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHValueUnit:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->heart_rate_time_unit:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHTimeUnit:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->heart_rate_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHDefValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->heart_rate_time_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mRHNowTimestamp:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRTipsForPrivacyMode:Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x72:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y25:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x24:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueLeft:I

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y10:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueTop:I

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x113:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueLeft:I

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueTop:I

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHeartRateValueBottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueX:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValueY:F

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimeX:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v4}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimeY:F

    return-void
.end method

.method private initPaints()V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const v2, 0x33d8d8d8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    const-string v3, "sys-sans-en"

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v2, -0x66000001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextSize:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private initXAxis(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y26:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x16:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y111:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-virtual {v3, v2, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initYAxis(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y32:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisLabelRectSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x42:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y26:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y41:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x322:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    add-int/2addr v0, p1

    add-int/2addr v1, v2

    invoke-virtual {v3, p1, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTranslateX:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTranslateY:I

    return-void
.end method

.method private updateHRData(Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "HRHistogramDrawable"

    const-string v0, "[updateHRData] data is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->getLatestHR()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRValue:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->getLatestHRTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mLatestHRTimestamp:J

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->getHistoryHRs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHRHistogramItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->getHistoryHRs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mTranslateY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawHorizontalLines(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawYAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawXAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawLatestHR(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->drawHRHistogram(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->init()V

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

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setHRHistogramData(Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->updateHRData(Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->calcYAxisValues()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->calcXYIntervals()V

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mPrimaryColor:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HRHistogramDrawable;->mUiMode:I

    return-void
.end method
