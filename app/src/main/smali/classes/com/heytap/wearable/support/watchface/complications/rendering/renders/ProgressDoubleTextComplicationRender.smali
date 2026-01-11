.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressDoubleTextComplicationRender"


# instance fields
.field private isColorfulStyle:Z

.field private mExtra:Landroid/os/Bundle;

.field private mLeftTextPaint:Landroid/text/TextPaint;

.field private mNubmerTitleBounds:Landroid/graphics/Rect;

.field private mProgressStyle:I

.field private mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

.field private mRect:Landroid/graphics/Rect;

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
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    const-string p1, ""

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->initPaint()V

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-direct {p1, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

    return-void
.end method

.method private calcTitleBounds(Landroid/graphics/Rect;)V
    .locals 4

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "calc title:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mProgressStyle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mProgressStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mProgressStyle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_duobletext_number_title_four_toppadding:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_duobletext_number_title_toppadding:I

    :goto_0
    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_duobletext_number_title_range_toppadding:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1a

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1a

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_duobletext_title_toppadding:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    :goto_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method private calcValueTextBounds()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_text_left_padding:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_percentage_text_top_padding:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_texticon_text_height:I

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    add-int/2addr v2, v5

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_text_top_padding:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawColorText(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->setPaintColor()V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mProgressStyle:I

    const-string v1, "OPlusSans-Data-Bold.ttf"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_number_title_textsize:I

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    :goto_0
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getStrMinValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getStrMaxValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "--"

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->isNoData(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->isNoData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-gez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_3

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_range_title_three_textsize:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_range_title_textsize:I

    :goto_1
    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_range_title_textsize:I

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    move-object v0, v4

    move-object v2, v0

    :goto_3
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    invoke-static {v4, v1}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mNubmerTitleBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isEnglishRegion()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v2, "sys-sans-en"

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_title_textsize:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mStringTitleBounds:Landroid/graphics/Rect;

    goto/16 :goto_0

    :goto_5
    return-void
.end method

.method private drawRangedProgress(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->updateRangedRenderFields()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "start_angle"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    const-string v2, "end_angle"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

    invoke-virtual {v2, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;->draw(Landroid/graphics/Canvas;II)V

    :cond_0
    return-void
.end method

.method private drawValueText(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->isNoData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v0, :cond_1

    if-gt v4, v3, :cond_0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_percentage_three_textsize:I

    :goto_0
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_percentage_Symbol_textsize:I

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueSymbolTextSize:I

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_4

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->icontext_color_percentage_four_textsize:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-gt v4, v5, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_text_two_textsize:I

    :goto_1
    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_text_three_textsize:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_4

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_doubletext_text_four_textsize:I

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    if-nez v0, :cond_5

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    :cond_5
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueSymbolTextSize:I

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    invoke-virtual {v2, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->setSpannableString(Landroid/text/SpannableString;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->setPercentText(Z)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->resetPercentTextBounds()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private initPaint()V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v1, "OPlusSans-Data-Medium.ttf"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x22:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueSymbolTextSize:I

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private isNoData(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-\u00a0-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private resetPercentTextBounds()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;

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

    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->TAG:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mValueTextBounds:Landroid/graphics/Rect;

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

.method private setPaintColor()V
    .locals 6

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->isColorfulStyle:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mProgressStyle:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v2, "start_color"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    const-string v3, "end_color"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v2

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    :goto_0
    sget-object v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPaintColor leftTextColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " color:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    move v2, v1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mLeftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateRangedRenderFields()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onBoundsChanged]."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->calcTitleBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->calcValueTextBounds()V

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDataChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getProgressStyle()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mProgressStyle:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mExtra:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTitle()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onDataChanged]. mTitle:"

    .line 5
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mProgressStyle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mProgressStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mProgressStyle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x18:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x20:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x23:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :goto_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->calcTitleBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->calcValueTextBounds()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DefaultTextComplicationRender;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->isColorfulStyle:Z

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/NewRangedPathImageBorderRender;->setColorfulStyle(Z)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->drawValueText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->drawRangedProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;->drawColorText(Landroid/graphics/Canvas;)V

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
