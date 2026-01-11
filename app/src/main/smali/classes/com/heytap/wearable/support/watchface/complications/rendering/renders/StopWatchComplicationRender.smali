.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final HOUR_TIME:I = 0x36ee80

.field private static final ICON_RADIUS_SCALE:F = 0.428f

.field private static final MINUTE_TIME:I = 0xea60

.field private static final MIN_CHAR_SHOWN:I = 0x5

.field private static final SECOND_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "StopWatchComplicationRender"

.field private static final TEXT_HEIGHT_SCALE:F = 0.257f

.field private static final TEXT_MARGIN_START_SCALE:F = 0.116f

.field private static final TEXT_MARGIN_TOP_SCALE:F = 0.188f

.field private static final TEXT_SIZE_SCALE:F = 0.375f

.field private static final TEXT_WIDTH_SCALE:F = 0.82f

.field private static final TIME_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconBounds:Landroid/graphics/Rect;

.field private mSingleColorIconDrawable:Landroid/graphics/drawable/Drawable;

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

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextSize:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->initPaint()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawColorfulIcon(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->drawColorfulIcon(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->drawSingleColorIcon(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawSingleColorIcon(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mSingleColorIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mSingleColorIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mSingleColorIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getTimeString(J)Ljava/lang/String;
    .locals 6

    long-to-int v0, p0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    int-to-long v1, v1

    sub-long/2addr p0, v1

    long-to-int v1, p0

    const v2, 0xea60

    div-int/2addr v1, v2

    mul-int/2addr v2, v1

    int-to-long v2, v2

    sub-long/2addr p0, v2

    long-to-int p0, p0

    div-int/lit16 p0, p0, 0x3e8

    const-string p1, ""

    const/16 v2, 0xa

    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v2, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v2, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-ge p0, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string p1, ":"

    if-lez v0, :cond_3

    .line 1
    invoke-static {v4, p1, v1}, Landroidx/appcompat/app/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-static {v1, p1, p0}, Landroidx/appcompat/app/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setMinimumCharactersShown(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private loadColorfulIcon()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[loadColorfulIcon] provider not set COLORFUL_ICON field"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[loadColorfulIcon] mColorfulIconDrawable is null"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private loadSingleColorIcon()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[loadSingleColorIcon] icon is null"

    :goto_0
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mSingleColorIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[loadSingleColorIcon] IconDrawable is null"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ded9168    # 0.116f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e408312    # 0.188f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e839581    # 0.257f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v6, v5, v0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v7, v1

    sub-int/2addr v8, v3

    add-int/2addr v5, v0

    add-int/2addr v5, v2

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextSize:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3edb22d1    # 0.428f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->loadSingleColorIcon()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->loadColorfulIcon()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->drawIcon(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->initPaint()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    return-void
.end method
