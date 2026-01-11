.class public abstract Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;
.source "SourceFile"


# static fields
.field private static final STROKE_WIDTH_ID:I

.field private static final TAG:Ljava/lang/String; = "RangedBaseSolidRender"


# instance fields
.field private mInProgressAngle:F

.field private mInProgressPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMax:F

.field private mMaxInitialized:Z

.field private mMin:F

.field private mMinInitialized:Z

.field private mProgress:F

.field private mRectF:Landroid/graphics/RectF;

.field private mRemainingPaint:Landroid/graphics/Paint;

.field private mStartAngle:F

.field private mStrokeWidth:F

.field private mTotalAngle:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x6:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->STROKE_WIDTH_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V
    .locals 0
    .param p3    # I
        .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$RangedBorderStyle;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMin:F

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMax:F

    const/high16 p1, -0x3d4c0000    # -90.0f

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStartAngle:F

    const/high16 p1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mTotalAngle:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->init()V

    return-void
.end method

.method private drawRangedValue(Landroid/graphics/Canvas;Z)V
    .locals 13

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getValue()F

    move-result p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->setProgress(F)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getQuaternaryColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStartAngle:F

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressAngle:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRectF:Landroid/graphics/RectF;

    iget v9, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStartAngle:F

    iget v10, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mTotalAngle:F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_3
    :goto_2
    const-string p1, "RangedBaseSolidRender"

    const-string p2, "[drawRangedValue] mComplicationData or mCurStyle is null"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method

.method private declared-synchronized setMax(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMinInitialized:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMin:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMaxInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMax:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMax:F

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mProgress:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_2

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mProgress:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMax:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setMin(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMax:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMinInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMin:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMin:F

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mProgress:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mProgress:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMin:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setProgress(F)V
    .locals 5

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMin:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMax:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    move p1, v1

    :cond_1
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mProgress:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mTotalAngle:F

    sub-float v3, v1, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float v4, p1, v1

    :cond_2
    mul-float/2addr v4, v2

    iput v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressAngle:F

    cmpl-float p1, v4, v2

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressAngle:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->drawRangedValue(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStartAngle:F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStrokeWidth:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->STROKE_WIDTH_ID:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStrokeWidth:F

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getMinValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->setMin(F)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getMaxValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->setMax(F)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->setProgress(F)V

    return-void
.end method

.method public declared-synchronized setStartAngle(F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStartAngle:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStrokeWidth:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mRemainingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mInProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public declared-synchronized setTotalAngle(F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->mTotalAngle:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
