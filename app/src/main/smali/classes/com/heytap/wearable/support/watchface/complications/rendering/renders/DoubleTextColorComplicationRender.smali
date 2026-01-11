.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BG_COLOR:I = 0x33ffffff

.field private static final TAG:Ljava/lang/String; = "DoubleTextColorComplicationRender"

.field private static final TEXT_COLOR_SIZE_SCALE:F = 0.1779f


# instance fields
.field private isBigWatchface:Z

.field private isColorfulStyle:Z

.field private mExtra:Landroid/os/Bundle;

.field private mIsNumberText:Z

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mIsNumberText:Z

    const v0, 0x3e3afb7f    # 0.1826f

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->TITLE_TEXT_MARGIN_TOP_SCALE_TITLE:F

    const v0, 0x3ef645a2    # 0.481f

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->NUMBER_TEXT_MARGIN_TOP_SCALE_TEXT:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x33ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutUtils;->isBigWatchface(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->isBigWatchface:Z

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v1, "sys-sans-en"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private drawTitle(Landroid/graphics/Canvas;)I
    .locals 5

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->isColorfulStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "title_color"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_title_textsize:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mTextSize:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return v0
.end method

.method private drawValueText(Landroid/graphics/Canvas;I)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_no_value_textsize:I

    :goto_0
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mTextSize:I

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mIsNumberText:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_number_textsize:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_two_char_textsize:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_three_char_textsize:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->doubletext_color_char_textsize:I

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->isColorfulStyle:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string p2, "text_color"

    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    :cond_5
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mIsNumberText:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    :goto_2
    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private setTextBounds(IIIIFF)V
    .locals 5

    iget-boolean p4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->isBigWatchface:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x3

    goto :goto_0

    :cond_0
    const/4 p4, 0x4

    :goto_0
    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3ee24dd3    # 0.442f

    const v2, 0x3ded9168    # 0.116f

    mul-float/2addr p5, v2

    float-to-int p5, p5

    mul-float/2addr v0, p6

    float-to-int v0, v0

    mul-float/2addr v1, p6

    float-to-int v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, p6

    float-to-int v2, v2

    const v3, 0x3eae147b    # 0.34f

    mul-float/2addr v3, p6

    float-to-int v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTitleBounds:Landroid/graphics/Rect;

    add-int/2addr p1, p5

    add-int/2addr v0, p2

    add-int/2addr p4, v0

    sub-int/2addr p3, p5

    add-int/2addr v0, v2

    invoke-virtual {v4, p1, p4, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean p4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->isBigWatchface:Z

    iget-object p5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    sub-int p4, p1, p4

    add-int/2addr v1, p2

    add-int/2addr v3, v1

    invoke-virtual {p5, p4, v1, p3, v3}, Landroid/graphics/Rect;->set(IIII)V

    const p4, 0x3eec0831    # 0.461f

    mul-float/2addr p4, p6

    float-to-int p4, p4

    const p5, 0x3ea3d70a    # 0.32f

    mul-float/2addr p6, p5

    float-to-int p5, p6

    iget-object p6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p2, p4

    add-int/2addr p5, p2

    invoke-virtual {p6, p1, p2, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x33ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->isColorfulStyle:Z

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->drawTitle(Landroid/graphics/Canvas;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->drawValueText(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 8

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onBoundsChanged]."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v7, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->setTextBounds(IIIIFF)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e362b6b    # 0.1779f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public onDataChanged()V
    .locals 9

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->onDataChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mExtra:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isNumberText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mIsNumberText:Z

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onDataChanged]. mIsNumberText2:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->mIsNumberText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e9eb852    # 0.31f

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int v7, v6, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextNumberBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;->mBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;->setTextBounds(IIIIFF)V

    :goto_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    return-void
.end method
