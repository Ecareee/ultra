.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final DAY_TIME_24:Ljava/lang/String; = "HH:mm"

.field private static final MIN_CHAR_SHOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WorldClockSmallComplicationRender"

.field private static final TEXT_HEIGHT_SCALE:F = 0.25f

.field private static final TEXT_MARGIN_START_SCALE:F = 0.116f

.field private static final TEXT_MARGIN_TOP_SCALE_TEXT:F = 0.527f

.field private static final TEXT_MARGIN_TOP_SCALE_TITLE:F = 0.223f

.field private static final TEXT_SIZE_SCALE:F = 0.25f


# instance fields
.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundEnabled:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCity:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTextSize:F

.field private mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTimeZone:Ljava/lang/String;

.field private mTitleBounds:Landroid/graphics/Rect;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextSize:F

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->initPaint()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTypeface:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTimeZone:Ljava/lang/String;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->getTimeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getTimeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->getTimezoneTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimezoneTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPaint()V
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setMinimumCharactersShown(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setMinimumCharactersShown(I)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

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

    const v2, 0x3e645a1d    # 0.223f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f06e979    # 0.527f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int v8, v7, v1

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int v7, v6, v2

    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    invoke-virtual {v1, v5, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextSize:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTimeZone()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTimeZone:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getCity()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mCity:Ljava/lang/String;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->initPaint()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTileRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBackgroundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mBackgroundEnabled:Z

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method
