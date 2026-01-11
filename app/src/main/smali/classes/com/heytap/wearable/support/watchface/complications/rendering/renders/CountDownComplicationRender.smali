.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final HOUR_TIME:I = 0x36ee80

.field private static final LONG_TEXT_SIZE_SCALE:F = 0.275f

.field private static final MINUTE_TIME:I = 0xea60

.field private static final SECOND_TIME:I = 0x3e8

.field private static final SHORT_TEXT_MAX_LENGTH:I = 0x2

.field private static final SHORT_TEXT_SIZE_SCALE:F = 0.34f

.field private static final TAG:Ljava/lang/String; = "CountDownComplicationRender"

.field private static final TIME_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mComplicationBounds:Landroid/graphics/Rect;

.field private mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

.field private mText:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextSize:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->initPaint()V

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

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawRangedProgress(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isRangedProgressEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->createRangedBorderRenderNeeded(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->updateRangedRenderFields()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSupportPrivacyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->draw(Landroid/graphics/Canvas;Z)V

    :cond_1
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "CountDownComplicationRender"

    const-string v0, "[drawText] text is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const v0, 0x3e8ccccd    # 0.275f

    goto :goto_0

    :cond_1
    const v0, 0x3eae147b    # 0.34f

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextSize:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isRangedProgressEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getTimeString(J)Ljava/lang/String;
    .locals 9

    long-to-int v0, p0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    int-to-long v1, v1

    sub-long v1, p0, v1

    long-to-int v3, v1

    const v4, 0xea60

    div-int/2addr v3, v4

    mul-int/2addr v4, v3

    int-to-long v4, v4

    sub-long/2addr v1, v4

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0xa

    const-string v4, ""

    const-string v5, "0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v2, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v3, v2, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v7, 0x3e8

    div-long/2addr p0, v7

    const-wide/16 v7, 0x3c

    cmp-long v2, p0, v7

    if-gez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ":"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method private updateRangedRenderFields()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->mText:Ljava/lang/String;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->drawRangedProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;->initPaint()V

    return-void
.end method

.method public onStyleChanged()V
    .locals 0

    return-void
.end method
