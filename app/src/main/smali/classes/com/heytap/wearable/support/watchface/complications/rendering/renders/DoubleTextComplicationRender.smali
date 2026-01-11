.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field public static final MIN_CHAR_SHOWN:I = 0x5

.field public static NUMBER_TEXT_MARGIN_TOP_SCALE_TEXT:F = 0.527f

.field public static final NUMBER_TEXT_SIZE_SCALE:F = 0.32f

.field public static final TEXT_HEIGHT_SCALE:F = 0.34f

.field public static final TEXT_MARGIN_START_SCALE:F = 0.116f

.field public static TEXT_SIZE_SCALE:F = 0.25f

.field public static final TITLE_TEXT_HEIGHT_SCALE:F = 0.25f

.field public static TITLE_TEXT_MARGIN_TOP_SCALE_TITLE:F = 0.223f


# instance fields
.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mBgRectF:Landroid/graphics/RectF;

.field private mIsNumberText:Z

.field public mText:Ljava/lang/String;

.field public mTextBounds:Landroid/graphics/Rect;

.field public mTextNumberBounds:Landroid/graphics/Rect;

.field public mTextPaint:Landroid/text/TextPaint;

.field public mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTextSize:F

.field public mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field public mTitle:Ljava/lang/String;

.field public mTitleBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mIsNumberText:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextSize:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setMinimumCharactersShown(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setMinimumCharactersShown(I)V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->TEXT_SIZE_SCALE:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextSize:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mIsNumberText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3ea3d70a    # 0.32f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->TEXT_SIZE_SCALE:F

    :goto_0
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextSize:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mIsNumberText:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

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

    sget v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->TITLE_TEXT_MARGIN_TOP_SCALE_TITLE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->NUMBER_TEXT_MARGIN_TOP_SCALE_TEXT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ea3d70a    # 0.32f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int v8, v7, v1

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int v7, v6, v2

    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    invoke-virtual {v1, v5, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v6, v5, v2

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-virtual {v1, v3, v6, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->TEXT_SIZE_SCALE:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextSize:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTitle()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isNumberText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mIsNumberText:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->initPaint()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
