.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;
.source "SourceFile"


# static fields
.field private static final PROGRESS_START_ANGLE:F = -230.0f

.field private static final PROGRESS_SWEEP_ANGLE:F = 280.0f

.field private static final TAG:Ljava/lang/String; = "ProgressTextIconComplicationRender"


# instance fields
.field private mBoundsScaleSize:F

.field private mDashedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;

.field private mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

.field private mPointRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;

.field private mProgressBounds:Landroid/graphics/RectF;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mTextSize:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_icontext_bounds_3_scale_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mBoundsScaleSize:F

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x10:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSupportPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->TAG:Ljava/lang/String;

    const-string v0, "[drawProgress] not support borderStyle."

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mPointRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, p1, v1, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->draw(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getPercentage()F

    move-result v7

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->draw(Landroid/graphics/Canvas;ZZIF)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mDashedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, p1, v1, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->draw(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setProgressBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mBoundsScaleSize:F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->onBoundsChanged(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onBoundsChanged]. BorderStyle:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->TAG:Ljava/lang/String;

    const-string v0, "[onBoundsChanged] rect is null"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->setProgressBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->onDataChanged()V

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "onDataChanged."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    const-string v1, "[onDataChanged] mBounds is null"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->setProgressBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->drawProgress(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->onLocaleChanged()V

    return-void
.end method

.method public onStyleChanged()V
    .locals 5

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "onStyleChanged."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const-string v1, "[onStyleChanged] not support borderStyle."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mPointRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;

    if-nez v0, :cond_2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mPointRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mPointRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->createDrawable(Landroid/graphics/Rect;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;ZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    if-nez v0, :cond_4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3c9a0000    # -230.0f

    const/high16 v4, 0x438c0000    # 280.0f

    invoke-direct {v0, v2, v3, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;-><init>(Landroid/graphics/Paint;FF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    :cond_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->setBounds(Landroid/graphics/RectF;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mDashedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;

    if-nez v0, :cond_6

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mDashedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;

    :cond_6
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mDashedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->setBounds(Landroid/graphics/RectF;Z)V

    :cond_7
    :goto_0
    return-void
.end method
