.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final ICON_HEIGHT_SCALE:F = 0.25f

.field private static final ICON_MARGIN_TOP_SCALE:F = 0.1f

.field private static final ICON_WIDTH_SCALE:F = 0.385f

.field private static final MIN_CHAR_SHOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BatteryMediumComplicationRender"

.field private static final TEXT_HEIGHT_SCALE:F = 0.257f

.field private static final TEXT_MARGIN_START_SCALE:F = 0.1f

.field private static final TEXT_MARGIN_TOP_SCALE:F = 0.188f

.field private static final TEXT_SIZE_SCALE:F = 0.375f

.field private static final TEXT_WIDTH_SCALE:F = 0.82f


# instance fields
.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBatteryBounds:Landroid/graphics/Rect;

.field private mBatteryLevel:I

.field private mBatteryVectorDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextSize:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->initPaint()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->initDrawable()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawBattery(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryVectorDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private initDrawable()V
    .locals 2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryVectorDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;

    return-void
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setMinimumCharactersShown(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e408312    # 0.188f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f51eb85    # 0.82f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e839581    # 0.257f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int v7, v6, v0

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v8, v2

    sub-int/2addr v9, v4

    add-int/2addr v6, v0

    add-int/2addr v6, v3

    sub-int/2addr v8, v2

    invoke-virtual {v5, v7, v9, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextSize:F

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3ec51eb8    # 0.385f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    sub-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryVectorDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryLevel:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryVectorDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->setBatteryProgress(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->drawBattery(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->initPaint()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;->mBatteryVectorDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    return-void
.end method
