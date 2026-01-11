.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final PROGRESS_START_ANGLE:F = 270.0f

.field private static final PROGRESS_SWEEP_ANGLE:F = 360.0f

.field private static final TAG:Ljava/lang/String; = "ProgressBaseCircleComplicationRender"


# instance fields
.field private mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

.field private mProgressBounds:Landroid/graphics/RectF;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mRectOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_text_rect_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mRectOffset:F

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_text_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Z)V
    .locals 9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v0, :cond_0

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->TAG:Ljava/lang/String;

    const-string p2, "[drawProgress] mComplicationData is null"

    :goto_0
    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getMaxValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawProgress. maxValue:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getValue()F

    move-result v2

    div-float/2addr v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawProgress. progress:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " maxValue:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " value:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getValue()F

    move-result v0

    goto :goto_1

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v0

    if-ltz v1, :cond_5

    move v8, v0

    goto :goto_4

    :cond_5
    move v8, v2

    :goto_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v7

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->draw(Landroid/graphics/Canvas;ZZIF)V

    goto :goto_5

    :cond_6
    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->TAG:Ljava/lang/String;

    const-string p2, "[drawProgress] not support borderStyle."

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->TAG:Ljava/lang/String;

    const-string v0, "[onBoundsChanged]."

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isSmallWidget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "onDataChanged isSmallWidget:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x7:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x10:I

    :goto_0
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSupportPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->drawProgress(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public onStyleChanged()V
    .locals 4

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "onStyleChanged."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    if-nez v0, :cond_1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;-><init>(Landroid/graphics/Paint;FF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressBaseCircleComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->setBounds(Landroid/graphics/RectF;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "[onStyleChanged] not support borderStyle."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
