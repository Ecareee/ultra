.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final INSET:F = 3.3f

.field private static final STROKE_WIDTH_SCALE:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "DailyActivityComplicationRender"


# instance fields
.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStrokeWidthScale(F)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->initPaint()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isRangedProgressEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "[onBoundsChanged] bounds:"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DailyActivityComplicationRender"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x40533333    # 3.3f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setBounds(IIII)V

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v0, :cond_0

    const-string v0, "DailyActivityComplicationRender"

    const-string v1, "[onDataChanged] ComplicationData is null!"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getDailyActivityTargetValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getDailyActivityCurrentValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    invoke-virtual {v2, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setTargetAndCurrentValues([I[I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setUiMode(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 4

    const-string v0, "[onStyleChanged] mCurStyle:"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DailyActivityComplicationRender"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    return-void
.end method
