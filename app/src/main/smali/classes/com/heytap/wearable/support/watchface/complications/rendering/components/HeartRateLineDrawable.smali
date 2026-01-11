.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final CURVE_STROKE_WIDTH:F = 2.0f

.field private static final DEFAULT_COLOR:I = -0x66000001

.field private static final DURATION_BY_MINUTE_DEF:I = 0x5a0

.field private static final FIX_Y_AXIS_VALUES:Z = false

.field private static final H_LINE_COLOR:I = 0x3fd8d8d8

.field private static final H_LINE_COLOR_END:I = 0x6fd8d8d8

.field private static final H_LINE_NUM:I = 0x4

.field private static final H_LINE_STROKE_WIDTH:F = 1.0f

.field private static final LATEST_HR_EXPIRATION_MINUTES:I = 0xa

.field private static final LATEST_HR_TIMESTAMP_INVALID:I = -0x1

.field private static final LATEST_HR_TIMESTAMP_NOW:I = 0x0

.field private static final NEIGHBOURING_THRESHOLD:I = 0x18

.field private static final TAG:Ljava/lang/String; = "HeartRateLineDrawable"

.field private static final TEXT_COLOR:I = 0x66ffffff

.field private static final V_LINE_COLOR:I = 0x1affffff

.field private static final V_LINE_NUM:I = 0x5

.field private static final V_LINE_STROKE_WIDTH:F = 2.0f

.field private static final X_AXIS_VALUES_FIXED:[I

.field private static final X_AXIS_VALUE_NUM:I = 0x5

.field private static final Y_AXIS_VALUES1:[I

.field private static final Y_AXIS_VALUES2:[I

.field private static final Y_AXIS_VALUES3:[I

.field private static final Y_AXIS_VALUES4:[I

.field private static final Y_AXIS_VALUES5:[I

.field private static final Y_AXIS_VALUES_FIXED:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurvePaint:Landroid/graphics/Paint;

.field private mCurveRect:Landroid/graphics/Rect;

.field private mCurveRectLeft:I

.field private mCurveRectTop:I

.field private mDurationByMinute:I

.field private mHRPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mHRTipsForPrivacyMode:Ljava/lang/String;

.field private mHeight:I

.field private mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

.field private mHorizontalLinePaint:Landroid/graphics/Paint;

.field private mHorizontalLineSpace:I

.field private mHourUnit:Ljava/lang/String;

.field private mHourUnitRect:Landroid/graphics/Rect;

.field private mIntervalX:F

.field private mIntervalY:F

.field private mLatestHRTimeX:F

.field private mLatestHRTimeY:F

.field private mLatestHRTimestamp:J

.field private mLatestHRValue:I

.field private mLatestHRValueX:F

.field private mLatestHRValueY:F

.field private mRHDefTimestamp:Ljava/lang/String;

.field private mRHDefValue:Ljava/lang/String;

.field private mRHNowTimestamp:Ljava/lang/String;

.field private mRHTimeUnit:Ljava/lang/String;

.field private mRHValueUnit:Ljava/lang/String;

.field private mRightBorderX:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTranslateX:I

.field private mTranslateY:I

.field private mUiMode:I

.field private mVerticalLinePaint:Landroid/graphics/Paint;

.field private mVerticalLineSpace:I

.field private mWidth:I

.field private mXAxisFirstLabelRect:Landroid/graphics/Rect;

.field private mXAxisValues:[I

.field private mYAxisFirstLabelRect:Landroid/graphics/Rect;

.field private mYAxisLabelRectSpace:I

.field private mYAxisPaint:Landroid/graphics/Paint;

.field private mYAxisValues:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES1:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES2:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES3:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES4:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES5:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES_FIXED:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->X_AXIS_VALUES_FIXED:[I

    return-void

    :array_0
    .array-data 4
        0x78
        0x50
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x96
        0x64
        0x32
    .end array-data

    :array_2
    .array-data 4
        0xb4
        0x78
        0x3c
    .end array-data

    :array_3
    .array-data 4
        0xd2
        0x8c
        0x46
    .end array-data

    :array_4
    .array-data 4
        0xdc
        0x96
        0x50
    .end array-data

    :array_5
    .array-data 4
        0xdc
        0x96
        0x50
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

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mUiMode:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLinePaint:Landroid/graphics/Paint;

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueY:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimeX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimeY:F

    const-string v0, ""

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHDefTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRTipsForPrivacyMode:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHourUnitRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->X_AXIS_VALUES_FIXED:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mXAxisValues:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES_FIXED:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisValues:[I

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mDurationByMinute:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->init()V

    return-void
.end method

.method private calcXYIntervals()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mDurationByMinute:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mIntervalX:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mIntervalY:F

    return-void
.end method

.method private calcYAxisValues()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getDynamicYAxisValues()[I

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisValues:[I

    return-void
.end method

.method private drawHRCurve(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    :goto_0
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-direct {p0, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->isNeighbouring(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawHRSegment(Landroid/graphics/Canvas;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawHRSegment(Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "HeartRateLineDrawable"

    const-string v0, "[drawHRCurve] HR points is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawHRPoint(Landroid/graphics/Canvas;Landroid/graphics/Point;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getPointCoordinateX(Landroid/graphics/Point;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getPointCoordinateY(Landroid/graphics/Point;)I

    move-result p2

    int-to-float v0, v0

    int-to-float p2, p2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHRSegment(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawHRPoint(Landroid/graphics/Canvas;Landroid/graphics/Point;)V

    goto :goto_1

    :cond_1
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getPointCoordinateX(Landroid/graphics/Point;)I

    move-result v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getPointCoordinateY(Landroid/graphics/Point;)I

    move-result v1

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v8, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_2

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-direct {p0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getPointCoordinateX(Landroid/graphics/Point;)I

    move-result v9

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-direct {p0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getPointCoordinateY(Landroid/graphics/Point;)I

    move-result v10

    add-int/2addr v0, v9

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    int-to-float v2, v1

    int-to-float v6, v10

    int-to-float v5, v9

    move-object v0, v7

    move v1, v3

    move v4, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v8, v8, 0x1

    move v0, v9

    move v1, v10

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p1, "HeartRateLineDrawable"

    const-string p2, "[drawHRSegment] points is empty"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawHorizontalLines(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const v2, 0x3fd8d8d8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRectTop:I

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLineSpace:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    int-to-float v8, v3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const v2, 0x6fd8d8d8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRightBorderX:F

    :cond_0
    iget-object v9, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, v8

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawLatestHeart(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawLatestHeartForPrivacyMode(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawLatestHeartForNormalMode(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawLatestHeartForNormalMode(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getLatestHeartRateMinutesAgo()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValue:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHValueUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHNowTimestamp:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHValueUnit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHTimeUnit:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHDefValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHValueUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHDefTimestamp:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueX:F

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueY:F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimeX:F

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimeY:F

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLatestHeartForPrivacyMode(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRTipsForPrivacyMode:Ljava/lang/String;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueX:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueY:F

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawVerticalLines(Landroid/graphics/Canvas;)V
    .locals 13

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRectTop:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLineSpace:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRectLeft:I

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLineSpace:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    int-to-float v4, v5

    const/4 v5, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_0

    const/high16 v6, 0x40800000    # 4.0f

    add-float/2addr v5, v6

    add-float v10, v5, v1

    iget-object v11, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLinePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v4

    move v8, v5

    move v9, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawXAxisValues(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x66ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mXAxisValues:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLineSpace:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHourUnitRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHourUnit:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHourUnitRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawYAxisValues(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisValues:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisLabelRectSpace:I

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDynamicYAxisValues()[I
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->getMaxHeartValue()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES1:[I

    return-object v0

    :cond_0
    const/16 v1, 0x78

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES2:[I

    return-object v0

    :cond_1
    const/16 v1, 0x96

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES3:[I

    return-object v0

    :cond_2
    const/16 v1, 0xb4

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES4:[I

    return-object v0

    :cond_3
    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES5:[I

    return-object v0
.end method

.method private getFixedYAxisValues()[I
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->Y_AXIS_VALUES_FIXED:[I

    return-object v0
.end method

.method private getLatestHeartRateMinutesAgo()I
    .locals 10

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimestamp:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    mul-long/2addr v8, v4

    cmp-long v4, v8, v2

    const-string v5, "HeartRateLineDrawable"

    if-lez v4, :cond_1

    const-string v0, "[getLatestHeartRateMinutesAgo] latest hr timestamp is future"

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

    const-string v0, "[getLatestHeartRateMinutesAgo] lastest hr timestamp is now"

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

    const-string v0, "[getLatestHeartRateMinutesAgo] latest hr timestamp is expired"

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getMaxHeartValue()I
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private getPointCoordinateX(Landroid/graphics/Point;)I
    .locals 1

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mIntervalX:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    return p1
.end method

.method private getPointCoordinateY(Landroid/graphics/Point;)I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mIntervalY:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->initGlobals(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->initPaints()V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->initLatestHR(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->initHourUnit(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->initXAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->initYAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->initCurve(Landroid/content/res/Resources;)V

    return-void
.end method

.method private initCurve(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y31:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRectTop:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y25:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLineSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x30:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRectLeft:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x71:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLineSpace:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRectLeft:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRectTop:I

    mul-int/lit8 p1, p1, 0x4

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLineSpace:I

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurveRect:Landroid/graphics/Rect;

    add-int/2addr p1, v0

    add-int/2addr v2, v1

    invoke-virtual {v3, v0, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initGlobals(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x335:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mWidth:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y140:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHeight:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextSize:F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x378:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRightBorderX:F

    return-void
.end method

.method private initHourUnit(Landroid/content/res/Resources;)V
    .locals 5

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y21:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x346:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y113:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHourUnitRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHourUnitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->hour_unit:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHourUnit:Ljava/lang/String;

    return-void
.end method

.method private initLatestHR(Landroid/content/res/Resources;)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->heart_rate_text_unit:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHValueUnit:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->heart_rate_time_unit:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHTimeUnit:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->heart_rate_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHDefValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->heart_rate_time_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mRHNowTimestamp:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRTipsForPrivacyMode:Ljava/lang/String;

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

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y4:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x102:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueX:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v4}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValueY:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimeX:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimeY:F

    return-void
.end method

.method private initPaints()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const v2, 0x3fd8d8d8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLinePaint:Landroid/graphics/Paint;

    const v2, 0x1affffff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mVerticalLinePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x66ffffff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextSize:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    const-string v4, "sys-sans-en"

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    const v3, -0x66000001

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTextSize:F

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private initXAxis(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x22:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y25:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x20:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y111:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-virtual {v3, v2, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initYAxis(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y25:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisLabelRectSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x35:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y21:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y20:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x329:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    add-int/2addr v0, p1

    add-int/2addr v1, v2

    invoke-virtual {v3, p1, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private isNeighbouring(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 0

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p1

    const/16 p1, 0x18

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTranslateX:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTranslateY:I

    return-void
.end method

.method private updateHRData(Lcom/heytap/wearable/support/watchface/complications/MixHRData;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "HeartRateLineDrawable"

    const-string v0, "[updateHRData] data is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->getLatestHRData()Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->getLatestHRData()Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->getValue()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRValue:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->getLatestHRData()Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mLatestHRTimestamp:J

    :cond_1
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->getHistoryHRData()Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->getHistoryHRData()Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHRPoints:Ljava/util/List;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;->getEndTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    const/16 p1, 0x5a0

    goto :goto_0

    :cond_2
    long-to-int p1, v0

    :goto_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mDurationByMinute:I

    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mTranslateY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawHorizontalLines(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawVerticalLines(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawYAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawXAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawLatestHeart(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->drawHRCurve(Landroid/graphics/Canvas;)V

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

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->init()V

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

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setHeartRateComplicationData(Lcom/heytap/wearable/support/watchface/complications/MixHRData;)V
    .locals 2

    const-string v0, "HeartRateLineDrawable"

    const-string v1, "[setHeartRateComplicationData]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->updateHRData(Lcom/heytap/wearable/support/watchface/complications/MixHRData;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->calcYAxisValues()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->calcXYIntervals()V

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/HeartRateLineDrawable;->mUiMode:I

    return-void
.end method
