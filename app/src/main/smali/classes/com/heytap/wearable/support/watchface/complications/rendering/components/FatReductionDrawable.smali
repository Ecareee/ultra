.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final ARC_BASIC_BG_COLOR:I = 0x66fd9c5c

.field private static final ARC_BASIC_PG_COLOR:I = -0x263a4

.field private static final ARC_BASIC_START_ANGLE:F = -90.0f

.field private static final ARC_DYNAMIC_BG_COLOR:I = -0xb9b9ba

.field private static final ARC_DYNAMIC_PG_COLOR:I = -0x1338

.field private static final ARC_INTERVAL_ANGLE:F = 1.0f

.field private static final ARC_MIN_ANGLE:F = 5.0f

.field private static final ARC_STROKE_WIDTH_ID:I

.field private static final ARC_TARGET_TOTAL_ANGLE:F = 360.0f

.field private static final INTERVAL_LINE_STROKE_WIDTH_ID:I

.field private static final LINE_COLOR:I = -0x1000000

.field private static final TAG:Ljava/lang/String; = "FatReductionDrawable"


# instance fields
.field private mArcStrokeWidth:F

.field private mBasicBgPaint:Landroid/graphics/Paint;

.field private mBasicPgPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mDrawableRectF:Landroid/graphics/RectF;

.field private mDynamicBgPaint:Landroid/graphics/Paint;

.field private mDynamicPgPaint:Landroid/graphics/Paint;

.field private mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStrokeWidth:F

.field private mResource:Landroid/content/res/Resources;

.field private mUiMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x4:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->INTERVAL_LINE_STROKE_WIDTH_ID:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x23:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->ARC_STROKE_WIDTH_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mUiMode:I

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->createWithPrimaryColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mResource:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->init()V

    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;F)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRangedValue(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getBasicCalorie()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getDynamicCalorie()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getTotalCalorieTarget()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mUiMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    if-lez v4, :cond_4

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    div-float/2addr v0, v2

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v0, v4

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    cmpl-float v2, v0, v3

    const/high16 v5, 0x40a00000    # 5.0f

    if-lez v2, :cond_1

    cmpg-float v2, v0, v5

    if-gez v2, :cond_1

    move v0, v5

    :cond_1
    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    cmpg-float v2, v1, v5

    if-gez v2, :cond_2

    move v1, v5

    :cond_2
    sub-float v2, v4, v0

    sub-float/2addr v2, v1

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4a0000    # -91.0f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicPgPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v9, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    add-float/2addr v3, v0

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v8, v3, v12

    iget-object v11, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicPgPaint:Landroid/graphics/Paint;

    move v9, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    add-float/2addr v3, v1

    sub-float v8, v3, v12

    cmpl-float v3, v2, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicBgPaint:Landroid/graphics/Paint;

    :goto_0
    move-object v11, v3

    move-object v6, p1

    move v9, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    cmpl-float v2, v0, v5

    if-lez v2, :cond_5

    cmpl-float v2, v1, v5

    if-lez v2, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->drawLines(Landroid/graphics/Canvas;F)V

    add-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->drawLines(Landroid/graphics/Canvas;F)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->ARC_STROKE_WIDTH_ID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->INTERVAL_LINE_STROKE_WIDTH_ID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mLineStrokeWidth:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicPgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicPgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->initPaint(Landroid/graphics/Paint;F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicPgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->initPaint(Landroid/graphics/Paint;F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->initPaint(Landroid/graphics/Paint;F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicPgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->initPaint(Landroid/graphics/Paint;F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mLineStrokeWidth:F

    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->initPaint(Landroid/graphics/Paint;F)V

    return-void
.end method

.method private initPaint(Landroid/graphics/Paint;F)V
    .locals 2

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updatePaintColor()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getQuaternaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicPgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getQuaternaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicPgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicBgPaint:Landroid/graphics/Paint;

    const v1, 0x66fd9c5c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mBasicPgPaint:Landroid/graphics/Paint;

    const v1, -0x263a4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicBgPaint:Landroid/graphics/Paint;

    const v1, -0xb9b9ba

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDynamicPgPaint:Landroid/graphics/Paint;

    const/16 v1, -0x1338

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->drawRangedValue(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mDrawableRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mArcStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setFatCalorieData(Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    return-void
.end method

.method public setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->updatePaintColor()V

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->mUiMode:I

    return-void
.end method
