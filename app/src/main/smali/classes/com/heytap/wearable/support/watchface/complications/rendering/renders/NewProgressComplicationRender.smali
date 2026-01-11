.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewProgressComplicationRender"


# instance fields
.field private final mIconBounds:Landroid/graphics/Rect;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPercentageTextBounds:Landroid/graphics/Rect;

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mTextHeight:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mValueSymbolTextSize:I

.field private mValueText:Ljava/lang/String;

.field private mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mPercentageTextBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->initPaint()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_texticon_text_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextHeight:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_texticon_percentage_Symbol_textsize:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueSymbolTextSize:I

    return-void
.end method

.method private calcIconBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    add-int/2addr v0, v3

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setBounds] rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "mIconBounds:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calcValueTextBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->new_progress_text_top_padding:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int v4, v3, v0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_icontext_percentage_left_padding:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_icontext_percentage_top_padding_new:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mPercentageTextBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    iget p1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, p1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawValueText(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSupportPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->mIsNoValue:Z

    if-nez v3, :cond_e

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_a

    const/4 v5, 0x3

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v5, :cond_9

    const/4 v5, 0x4

    if-nez v4, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v5, :cond_8

    const/4 v5, 0x5

    if-nez v4, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_b

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_texticon_five_textsize:I

    goto :goto_4

    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_texticon_four_textsize:I

    goto :goto_4

    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_texticon_text_three_textsize:I

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_texticon_text_two_textsize:I

    :goto_4
    invoke-static {v4, v5}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextSize:I

    :cond_b
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    if-nez v0, :cond_c

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    :cond_c
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextSize:I

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueSymbolTextSize:I

    invoke-direct {v1, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    invoke-virtual {v1, v3, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->setSpannableString(Landroid/text/SpannableString;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->setPercentText(Z)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->resetPercentTextBounds()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mPercentageTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    :goto_5
    return-void
.end method

.method private initPaint()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextSize:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v2, "OPlusSans-Data-Medium.ttf"

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private loadIcon()V
    .locals 2

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[loadIcon]."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private resetPercentTextBounds()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->getDrawTextWidth()F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resetPercentTextBounds textWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  leftPadding= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mPercentageTextBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v4, v3, v1

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    add-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onBoundsChanged]. rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->calcIconBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->calcValueTextBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDataChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onDataChanged]. mText:"

    .line 3
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->mValueText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->calcValueTextBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->loadIcon()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->calcIconBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "[onDataChanged] mBounds or text is null"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->drawValueText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewProgressComplicationRender;->drawIcon(Landroid/graphics/Canvas;)V

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
