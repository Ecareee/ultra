.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PRIMARY_COLOR:I = -0x90276d

.field private static final DURATION_BY_MINUTE:I = 0x30

.field private static final HISTOGRAM_ITEM_WIDTH:F = 4.0f

.field private static final H_LINE_COLOR:I = 0x33d8d8d8

.field private static final H_LINE_NUM:I = 0x3

.field private static final H_LINE_STROKE_WIDTH:F = 1.0f

.field private static final LATEST_PRESSURE_EXPIRATION_MINUTES:I = 0xa

.field private static final LATEST_PRESSURE_TIMESTAMP_INVALID:I = -0x1

.field private static final LATEST_PRESSURE_TIMESTAMP_NOW:I = 0x0

.field private static final PRESSURE_COLOR:[I

.field private static final TAG:Ljava/lang/String; = "PressureHistogramDrawable"

.field private static final V_LINE_NUM:I = 0x5

.field private static final X_AXIS_VALUES_FIXED:[I

.field private static final X_AXIS_VALUE_COLOR:I = -0x66000001

.field private static final Y_AXIS_VALUES_FIXED:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mHighlightTextPaint:Landroid/graphics/Paint;

.field private mHighlightTextSize:F

.field private mHistogramPaint:Landroid/graphics/Paint;

.field private mHistogramRect:Landroid/graphics/Rect;

.field private mHistogramRectTop:I

.field private mHorizontalLinePaint:Landroid/graphics/Paint;

.field private mHorizontalLineSpace:I

.field private mIntervalX:F

.field private mIntervalY:F

.field private mLatestPressureDrawable:Landroid/graphics/drawable/Drawable;

.field private mLatestPressureIcon:Landroid/graphics/drawable/Icon;

.field private mLatestPressureIconRect:Landroid/graphics/Rect;

.field private mLatestPressureTextRect:Landroid/graphics/Rect;

.field private mLatestPressureValue:I

.field private mPressureDefTimestamp:Ljava/lang/String;

.field private mPressureDefValue:Ljava/lang/String;

.field private mPressureHistogramItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPressureNowTimestamp:Ljava/lang/String;

.field private mPressureTimeRect:Landroid/graphics/Rect;

.field private mPressureTimeUnit:Ljava/lang/String;

.field private mPressureTipsForPrivacyMode:Ljava/lang/String;

.field private mPrimaryColor:I

.field private mPrivacyModeTextRect:Landroid/graphics/Rect;

.field private mStartTime:J

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTranslateX:I

.field private mTranslateY:I

.field private mUiMode:I

.field private mVerticalLineSpace:I

.field private mVerticalLineYOffset:I

.field private mXAxisEndX:I

.field private mXAxisFirstLabelRect:Landroid/graphics/Rect;

.field private mYAxisFirstLabelRect:Landroid/graphics/Rect;

.field private mYAxisPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->PRESSURE_COLOR:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->X_AXIS_VALUES_FIXED:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xa7282b
        -0xc02e76
        -0x2fcc
        -0x90bc
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x32
    .end array-data

    :array_2
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

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mUiMode:I

    const v1, -0x90276d    # -3.1881E38f

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrimaryColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureIconRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureTextRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTimeRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrivacyModeTextRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureValue:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureHistogramItems:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTipsForPrivacyMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureDefTimestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->init()V

    return-void
.end method

.method private drawHorizontalLines(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRectTop:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLineSpace:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mXAxisEndX:I

    int-to-float v6, v1

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawLatestPressure(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawLatestPressureForPrivacyMode(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawLatestPressureIcon(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawLatestPressureForNormalMode(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawLatestPressureForNormalMode(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->getLatestPressureMinutesAgo()I

    move-result v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureValue:I

    if-lez v1, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureNowTimestamp:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTimeUnit:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureDefValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureDefTimestamp:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureTextRect:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureDefTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTimeRect:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTimeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private drawLatestPressureForPrivacyMode(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrivacyModeTextRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTipsForPrivacyMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrivacyModeTextRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLatestPressureIcon(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawPressureHistogram(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureHistogramItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawSingleHistogramItem(Landroid/graphics/Canvas;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p1, "PressureHistogramDrawable"

    const-string v0, "[drawPressureHistogram] pressureHistogramItems is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawSingleHistogramItem(Landroid/graphics/Canvas;II)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->getCoordinateX(I)F

    move-result v3

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->getCoordinateY(I)F

    move-result v2

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->getCoordinateY(I)F

    move-result v4

    cmpl-float p3, v2, v4

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getQuaternaryColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->getIndexByPressureVal(I)I

    move-result p2

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getQuaternaryColor()I

    move-result p2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->PRESSURE_COLOR:[I

    aget p2, v0, p2

    :goto_0
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrimaryColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method private drawXAxisValues(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->X_AXIS_VALUES_FIXED:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mVerticalLineSpace:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawYAxisValues(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLineSpace:I

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCoordinateX(I)F
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mIntervalX:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private getCoordinateY(I)F
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mIntervalY:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method private getIndexByPressureVal(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 v0, 0x1e

    if-lez p1, :cond_1

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/16 v1, 0x3c

    if-lt p1, v0, :cond_2

    if-ge p1, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-lt p1, v1, :cond_3

    const/16 v0, 0x50

    if-ge p1, v0, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    const/4 p1, 0x3

    return p1
.end method

.method private getLatestPressureMinutesAgo()I
    .locals 9

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mStartTime:J

    cmp-long v0, v4, v2

    const-string v6, "PressureHistogramDrawable"

    if-lez v0, :cond_1

    const-string v0, "[getLatestPressureMinutesAgo] latest pressure timestamp is future"

    :goto_0
    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    sub-long/2addr v2, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    div-long/2addr v2, v7

    long-to-int v0, v2

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-gez v7, :cond_2

    const-string v0, "[getLatestPressureMinutesAgo] latest pressure timestamp is now"

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v0, v2

    const/16 v2, 0xa

    if-lt v0, v2, :cond_3

    const-string v0, "[getLatestPressureMinutesAgo] latest pressure timestamp is expired"

    goto :goto_0

    :cond_3
    return v0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->initGlobals(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->initPaints()V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->initXAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->initYAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->initLatestPressure(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->initHistogram(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->initXYIntervals()V

    return-void
.end method

.method private initGlobals(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y28:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextSize:F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextSize:F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x41:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRectTop:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y32:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLineSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x378:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mXAxisEndX:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x69:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mVerticalLineSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y4:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mVerticalLineYOffset:I

    return-void
.end method

.method private initHistogram(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x24:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRectTop:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mVerticalLineSpace:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLineSpace:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mVerticalLineYOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    add-int/2addr v1, p1

    add-int/2addr v2, v0

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initLatestPressure(Landroid/content/res/Resources;)V
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->complicationDrawable_noDataText:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureDefValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->heart_rate_time_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureNowTimestamp:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->heart_rate_time_unit:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTimeUnit:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTipsForPrivacyMode:Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x36:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y36:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y4:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureIconRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x121:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y26:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x24:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y10:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrivacyModeTextRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrivacyModeTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x28:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x58:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureTextRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x80:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x98:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y12:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureTimeRect:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initPaints()V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const v2, 0x33d8d8d8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    const-string v3, "sys-sans-en"

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v2, -0x66000001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextSize:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private initXAxis(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y26:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x16:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y111:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-virtual {v3, v2, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initXYIntervals()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x42400000    # 48.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mIntervalX:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mIntervalY:F

    return-void
.end method

.method private initYAxis(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x31:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y26:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y41:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x333:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    add-int/2addr v0, p1

    add-int/2addr v1, v2

    invoke-virtual {v3, p1, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private loadLatestPressureIcon()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "PressureHistogramDrawable"

    if-nez v0, :cond_0

    const-string v0, "[drawLatestPressureIcon] icon is null"

    :goto_0
    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "[drawLatestPressureIcon] IconDrawable is null"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTranslateX:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTranslateY:I

    return-void
.end method

.method private updatePressureData(Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;)V
    .locals 4

    const-string v0, "PressureHistogramDrawable"

    if-nez p1, :cond_0

    const-string p1, "[updatePressureData] data is empty"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "[updatePressureData] "

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;->getLatestPressure()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureValue:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mLatestPressureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mStartTime:J

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->loadLatestPressureIcon()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;->getPressures()[I

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPressureHistogramItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mTranslateY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawHorizontalLines(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawYAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawXAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawLatestPressure(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->drawPressureHistogram(Landroid/graphics/Canvas;)V

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

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->init()V

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

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setPressureData(Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->updatePressureData(Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;)V

    return-void
.end method

.method public setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mPrimaryColor:I

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/PressureHistogramDrawable;->mUiMode:I

    return-void
.end method
