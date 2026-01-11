.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;
.source "SourceFile"


# static fields
.field private static final RECT_PADDING_LEFT_RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NewDoubleTextComplicationRender"


# instance fields
.field private isColorfulStyle:Z

.field private isNumberText:Z

.field private mBackgroundPaint:Landroid/text/TextPaint;

.field private mBgRect:Landroid/graphics/Rect;

.field private mExtra:Landroid/os/Bundle;

.field private mSansEnTypeface:Landroid/graphics/Typeface;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextHeight:I

.field private mTextNumberBounds:Landroid/graphics/Rect;

.field private mTextSize:I

.field private mTitle:Ljava/lang/String;

.field private mTitleBounds:Landroid/graphics/Rect;

.field private mTitleHeight:I

.field private mTitleHeightEn:I

.field private mTitlePaint:Landroid/text/TextPaint;

.field private mValuePaint:Landroid/text/TextPaint;

.field private numberTextHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBgRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->initPaint()V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_text_height:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextHeight:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_title_height:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleHeight:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_title_height_en:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleHeightEn:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_text_number_height:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->numberTextHeight:I

    return-void
.end method

.method private dealLongText(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isChineseChar(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x6

    iget-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isNumberText:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isContainsSymbol()Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/4 p1, 0x5

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_five_number_textsize:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_number_textsize_new:I

    :goto_0
    invoke-static {p1, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v3, "OPlusSans-Data-Medium.ttf"

    invoke-static {v1, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_char_textsize_new:I

    invoke-static {p1, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mSansEnTypeface:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ltz p1, :cond_5

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)[I

    move-result-object v5

    aget v6, v5, v3

    if-lez v6, :cond_4

    aget v5, v5, v3

    if-ge v5, v2, :cond_4

    if-eqz v4, :cond_5

    if-le p1, v1, :cond_5

    const-string v2, "..."

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    move v4, v1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBackgroundPaint:Landroid/text/TextPaint;

    const v1, 0x26ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBgRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    iget-object v9, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBackgroundPaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isChineseChar(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mSansEnTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v3, "OPlusSans-Data-Medium.ttf"

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_color_title_textsize:I

    :goto_1
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_title_three_textsize:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_title_textsize_new:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_letter_title_textsize:I

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawValueText(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->dealLongText(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_4

    if-gt v0, v3, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_color_text_textsize:I

    :goto_0
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    goto :goto_2

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_color_four_text_textsize:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_color_five_text_textsize:I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isNumberText:Z

    const/4 v4, 0x2

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isContainsSymbol()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    if-gt v0, v4, :cond_6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_two_number_textsize:I

    goto :goto_0

    :cond_6
    if-eq v0, v3, :cond_9

    if-ne v0, v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_five_number_textsize:I

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_number_textsize_new:I

    goto :goto_0

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_three_number_textsize:I

    goto :goto_0

    :cond_a
    if-gt v0, v4, :cond_b

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_two_char_textsize:I

    goto :goto_0

    :cond_b
    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_three_char_textsize_new:I

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_char_textsize_new:I

    goto :goto_0

    :goto_2
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isNumberText:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v2, "OPlusSans-Data-Medium.ttf"

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mSansEnTypeface:Landroid/graphics/Typeface;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isNumberText:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    :goto_4
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextTopLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)F

    move-result v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method private initPaint()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_title_textsize_new:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBackgroundPaint:Landroid/text/TextPaint;

    const v1, 0x26ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v1, "sys-sans-en"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mSansEnTypeface:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/TextPaintUtil;->getAntiAliasPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mSansEnTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/TextPaintUtil;->getAntiAliasPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mSansEnTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private isContainsSymbol()Z
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setPaintColor()V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isColorfulStyle:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v2, "title_color"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    const-string v3, "text_color"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    if-eq v2, v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    return-void
.end method

.method private setTextBounds(Landroid/graphics/Rect;)V
    .locals 7

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "setTextBounds. mTitle:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ismall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isChineseChar(Ljava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_title_toppadding:I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_title_toppadding_en:I

    invoke-static {v2, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleHeightEn:I

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleHeight:I

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_title_four_toppadding:I

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_title_toppadding:I

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_title_english_toppadding:I

    :goto_0
    invoke-static {v2, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    :goto_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleHeight:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextBounds rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTitleBounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->dealLongText(Landroid/graphics/Rect;)V

    :cond_6
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-eqz v1, :cond_7

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_text_toppadding:I

    goto :goto_2

    :cond_7
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_text_toppadding:I

    :goto_2
    invoke-static {v2, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextHeight:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSmallWidget:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_8

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_text_number_toppadding:I

    goto :goto_3

    :cond_8
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_doubletext_text_five_number_toppadding:I

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_text_number_toppadding:I

    goto :goto_3

    :cond_a
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_text_five_number_toppadding:I

    :goto_3
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->numberTextHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, p1, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextBounds mTextBounds:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mTextNumberBounds:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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
    .locals 2

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onBoundsChanged]."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->setTextBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDataChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTitle()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isNumberText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isNumberText:Z

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "onDataChanged. isNumberText:"

    .line 3
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isNumberText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->setTextBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->isColorfulStyle:Z

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->setPaintColor()V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->drawTitle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->drawValueText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mValuePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;->mBackgroundPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
