.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_GOAL_STEP:I = 0x2710

.field private static final DEFAULT_PRIMARY_COLOR:I = -0x9d3657

.field private static final DURATION_BY_MINUTE:I = 0x30

.field private static final HISTOGRAM_ITEM_WIDTH:F = 4.0f

.field private static final H_LINE_COLOR:I = 0x33d8d8d8

.field private static final H_LINE_NUM:I = 0x3

.field private static final H_LINE_STROKE_WIDTH:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "StepHistogramDrawable"

.field private static final V_LINE_NUM:I = 0x5

.field private static final X_AXIS_VALUES_FIXED:[I

.field private static final X_AXIS_VALUE_COLOR:I = -0x66000001

.field private static final Y_AXIS_VALUES_FIXED:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mGoalStepValue:I

.field private mHighlightTextPaint:Landroid/graphics/Paint;

.field private mHighlightTextSize:F

.field private mHistogramPaint:Landroid/graphics/Paint;

.field private mHistogramRect:Landroid/graphics/Rect;

.field private mHistogramRectTop:I

.field private mHorizontalLinePaint:Landroid/graphics/Paint;

.field private mHorizontalLineSpace:I

.field private mIntervalX:F

.field private mIntervalY:F

.field private mLatestStepRect:Landroid/graphics/Rect;

.field private mLatestStepValue:I

.field private mPrimaryColor:I

.field private mSeparator:Ljava/lang/String;

.field private mStepDefValue:Ljava/lang/String;

.field private mStepHistogramItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStepTipsForPrivacyMode:Ljava/lang/String;

.field private mStepValueLeft:I

.field private mStepValueTop:I

.field private mStepValueUnit:Ljava/lang/String;

.field private mTextHighLightRect:Landroid/graphics/Rect;

.field private mTextLowLightRect:Landroid/graphics/Rect;

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

.field private mYAxisLabelRectSpace:I

.field private mYAxisPaint:Landroid/graphics/Paint;

.field private mYAxisValues:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->X_AXIS_VALUES_FIXED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f4
        0xfa
    .end array-data

    :array_1
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

    const v0, -0x9d3657

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mPrimaryColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mUiMode:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisValues:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepValue:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mGoalStepValue:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepTipsForPrivacyMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->init()V

    return-void
.end method

.method private calcStepTextRect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueLeft:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueTop:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueTop:I

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueTop:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private calcXYIntervals()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x42400000    # 48.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mIntervalX:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mIntervalY:F

    return-void
.end method

.method private calcYAxisValues()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->getDynamicYAxisValues()[I

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisValues:[I

    return-void
.end method

.method private drawHorizontalLines(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRectTop:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLineSpace:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mXAxisEndX:I

    int-to-float v6, v1

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawLatestStep(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawLatestStepForPrivacyMode(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawLatestStepForNormalMode(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawLatestStepForNormalMode(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepValue:I

    if-ltz v0, :cond_2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mGoalStepValue:I

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x1869f

    if-ltz v0, :cond_1

    if-nez v1, :cond_1

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/DataUtils;->getFormatActivityData(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/DataUtils;->getFormatActivityData(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mGoalStepValue:I

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepDefValue:Ljava/lang/String;

    move-object v1, v0

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->calcStepTextRect(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextHighLightRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueUnit:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextLowLightRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLatestStepForPrivacyMode(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepTipsForPrivacyMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSingleHistogramItem(Landroid/graphics/Canvas;II)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->getCoordinateX(I)F

    move-result v3

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->getCoordinateY(I)F

    move-result v2

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->getCoordinateY(I)F

    move-result v4

    cmpl-float p2, v2, v4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getQuaternaryColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mPrimaryColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawStepHistogram(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawSingleHistogramItem(Landroid/graphics/Canvas;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p1, "StepHistogramDrawable"

    const-string v0, "[drawStepHistogram] stepHistogramItems is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawXAxisValues(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->X_AXIS_VALUES_FIXED:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mVerticalLineSpace:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawYAxisValues(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisValues:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v5}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->getYAxisValuesStr(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisLabelRectSpace:I

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCoordinateX(I)F
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mIntervalX:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private getCoordinateY(I)F
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mIntervalY:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method private getDynamicYAxisValues()[I
    .locals 4

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->getMaxStep()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->Y_AXIS_VALUES_FIXED:[I

    return-object v0

    :cond_0
    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    div-int/2addr v0, v1

    aput v0, v2, v3

    return-object v2
.end method

.method private getMaxStep()I
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

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

.method private getYAxisValuesStr(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "k"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->initGlobals(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->initPaints()V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->initLatestStep(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->initXAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->initYAxis(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->initHistogram(Landroid/content/res/Resources;)V

    return-void
.end method

.method private initGlobals(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y28:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextSize:F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextSize:F

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x378:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mXAxisEndX:I

    return-void
.end method

.method private initHistogram(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y41:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRectTop:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y32:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLineSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x69:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mVerticalLineSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y4:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mVerticalLineYOffset:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x24:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRectTop:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mVerticalLineSpace:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLineSpace:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mVerticalLineYOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramRect:Landroid/graphics/Rect;

    add-int/2addr v1, p1

    add-int/2addr v2, v0

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initLatestStep(Landroid/content/res/Resources;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->complicationDrawable_noDataText:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepDefValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->daily_activity_step_unit:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueUnit:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepTipsForPrivacyMode:Ljava/lang/String;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->complicationDrawable_separator:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mSeparator:Ljava/lang/String;

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

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueLeft:I

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y10:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueTop:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueLeft:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepValueTop:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method private initPaints()V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const v2, 0x33d8d8d8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHorizontalLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    const-string v3, "sys-sans-en"

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHighlightTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v2, -0x66000001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextSize:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mHistogramPaint:Landroid/graphics/Paint;

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

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mXAxisFirstLabelRect:Landroid/graphics/Rect;

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

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisLabelRectSpace:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x42:I

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

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x322:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mYAxisFirstLabelRect:Landroid/graphics/Rect;

    add-int/2addr v0, p1

    add-int/2addr v1, v2

    invoke-virtual {v3, p1, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTranslateX:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTranslateY:I

    return-void
.end method

.method private updateStepData(Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;)V
    .locals 4

    const-string v0, "StepHistogramDrawable"

    if-nez p1, :cond_0

    const-string p1, "[updateStepData] data is empty"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "[updateStepData] "

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->getLatestSteps()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mLatestStepValue:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->getGoalSteps()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mGoalStepValue:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->getSteps()[I

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mStepHistogramItems:Ljava/util/ArrayList;

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

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mTranslateY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawHorizontalLines(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawYAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawXAxisValues(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawLatestStep(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->drawStepHistogram(Landroid/graphics/Canvas;)V

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

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->init()V

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

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setStepHistogramData(Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->updateStepData(Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->calcYAxisValues()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->calcXYIntervals()V

    return-void
.end method

.method public setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mCurrentStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mPrimaryColor:I

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/StepHistogramDrawable;->mUiMode:I

    return-void
.end method
