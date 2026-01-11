.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewIconTextComplicationRender"


# instance fields
.field public isColorfulStyle:Z

.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mComplicationBounds:Landroid/graphics/Rect;

.field private mIconBounds:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    const-string p1, ""

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextSize:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->init()V

    return-void
.end method

.method private calcIconBounds()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_newicontext_icon_top_padding:I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->newicontext_icon_top_padding:I

    :goto_0
    invoke-static {v4, v5}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private calcTextBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->newicontext_text_top_padding:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_newicontext_text_top_padding:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_newicontext_text_height_large:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_newicontext_text_height:I

    :goto_0
    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->newicontext_five_text_top_padding:I

    :goto_1
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_4

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->newicontext_four_text_top_padding:I

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v0, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isRangedProgressEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->isColorfulStyle:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private init()V
    .locals 4

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v3, "OPlusSans-Data-Medium.ttf"

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x26ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private loadIcon()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[loadIcon] provider not set COLORFUL_ICON field"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mColorfulIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[loadIcon] mColorfulIconDrawable is null"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->calcIconBounds()V

    return-void
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->isColorfulStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_newicontext_three_text_textsize:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_newicontext_text_textsize:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->newicontext_text_textsize:I

    :goto_0
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextSize:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->isNoValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->isShowDefaultText()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getDefaultValueY()I
    .locals 2

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_default_text_toppadding:I

    :goto_0
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_default_text_toppadding:I

    goto :goto_0
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->calcTextBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 4

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDataChanged()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->loadIcon()V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->calcTextBounds(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "onDataChanged mText:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isRangedProgressEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " StartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " EndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->drawIcon(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onStyleChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->isColorfulStyle:Z

    return-void
.end method
