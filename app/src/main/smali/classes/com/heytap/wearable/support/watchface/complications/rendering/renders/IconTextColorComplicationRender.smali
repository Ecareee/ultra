.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconTextColorComplicationRender"

.field private static VALUE_TEXT_LEFT_PADDING_SCALE:F = 0.59f

.field private static VALUE_TEXT_SCALE:F = 0.428f

.field private static VALUE_TEXT_VERTICAL_PADDING_SCALE:F = 0.07f


# instance fields
.field private OPPO_MONTSERRAT_BOLD:Ljava/lang/String;

.field private OPPO_SANS_CLOCK_MEDIUM:Ljava/lang/String;

.field private isBigWatchface:Z

.field private isColorfulStyle:Z

.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mComplicationBounds:Landroid/graphics/Rect;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mDefaultValueBounds:Landroid/graphics/Rect;

.field private mExtra:Landroid/os/Bundle;

.field private mIsNoValue:Z

.field private mIsNumberText:Z

.field private mNubmerTitleBounds:Landroid/graphics/Rect;

.field private mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

.field private mStringTitleBounds:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mTitle:Ljava/lang/String;

.field private mValueSymbolTextSize:I

.field private mValueTextBounds:Landroid/graphics/Rect;

.field private mValueTextPaint:Landroid/text/TextPaint;

.field private mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    const-string v0, "OPlusSans2.0-Clock-Medium.ttf"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->OPPO_SANS_CLOCK_MEDIUM:Ljava/lang/String;

    const-string v0, "Montserrat-Medium-number.ttf"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->OPPO_MONTSERRAT_BOLD:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    const-string v0, ""

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNumberText:Z

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->initPaint()V

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-direct {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutUtils;->isBigWatchface(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->isBigWatchface:Z

    return-void
.end method

.method private calcDefaultValueBounds(Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    sub-int/2addr v6, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    invoke-virtual {v4, v5, v6, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private calcTextBounds(Landroid/graphics/Rect;)V
    .locals 7

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNumberText:Z

    const v1, 0x3ded9168    # 0.116f

    if-eqz v0, :cond_0

    const v0, 0x3e7be76d    # 0.246f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    invoke-virtual {v2, v3, v0, p1, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v5, v2

    sub-int/2addr v6, v0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v6, p1, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private calcValueTextBounds()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[calcIconBounds] mComplicationBounds is null"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->VALUE_TEXT_LEFT_PADDING_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->VALUE_TEXT_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNumberText:Z

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->VALUE_TEXT_VERTICAL_PADDING_SCALE:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->isBigWatchface:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_icontext_text_top_padding:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_icontext_text_height:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->isBigWatchface:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    add-int/2addr v1, v5

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method private drawColorText(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->isColorfulStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNumberText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_number_title_textsize:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_title_textsize:I

    :goto_1
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNumberText:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    :goto_2
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRangedProgress(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isRangedProgressEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->updateRangedRenderFields()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "start_angle"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mExtra:Landroid/os/Bundle;

    const-string v2, "end_angle"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

    invoke-virtual {v2, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->draw(Landroid/graphics/Canvas;II)V

    :cond_1
    return-void
.end method

.method private drawValueText(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNoValue:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v0, :cond_2

    if-gt v3, v2, :cond_1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_percentage_three_textsize:I

    :goto_0
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_percentage_Symbol_textsize:I

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueSymbolTextSize:I

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_percentage_four_textsize:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-gt v3, v4, :cond_3

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_two_textsize:I

    :goto_1
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_4

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_three_textsize:I

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    if-nez v0, :cond_5

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    :cond_5
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueSymbolTextSize:I

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    invoke-virtual {v2, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->setSpannableString(Landroid/text/SpannableString;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method private initPaint()V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x22:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueSymbolTextSize:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->OPPO_SANS_CLOCK_MEDIUM:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->OPPO_MONTSERRAT_BOLD:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private updateRangedRenderFields()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onBoundsChanged]."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->calcTextBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->calcValueTextBounds()V

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isNumberText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNumberText:Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mExtra:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTitle()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onDataChanged]. mTitle:"

    .line 5
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNumberText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x23:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mIsNoValue:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->default_value_image:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->calcDefaultValueBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->calcTextBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->calcValueTextBounds()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->isColorfulStyle:Z

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->setColorfulStyle(Z)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->drawValueText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->drawRangedProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;->drawColorText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public onStyleChanged()V
    .locals 0

    return-void
.end method
