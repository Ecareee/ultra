.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final LONG_TEXT_SIZE_SCALE:F = 0.25f

.field private static final NUMBER_TEXT_SIZE_SCALE:F = 0.583f

.field private static final RECT_PADDING_LEFT_RIGHT:I = 0x3

.field private static final SHORT_TEXT_MAX_LENGTH:I = 0x2

.field private static final SHORT_TEXT_SIZE_SCALE:F = 0.304f

.field private static final TAG:Ljava/lang/String; = "SingleTextComplicationRender"


# instance fields
.field public isColorfulStyle:Z

.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field public final mComplicationBounds:Landroid/graphics/Rect;

.field private mDataTypeface:Landroid/graphics/Typeface;

.field private mIsNumberText:Z

.field private mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

.field private mSystemTypeface:Landroid/graphics/Typeface;

.field public mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field public mTextPaint:Landroid/text/TextPaint;

.field private mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextSize:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mIsNumberText:Z

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->initPaint()V

    return-void
.end method

.method private dealLongText(Landroid/graphics/Rect;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mIsNumberText:Z

    if-nez v3, :cond_4

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isChineseChar(Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealLongText :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SingleTextComplicationRender"

    invoke-static {v4, v3}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x6

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_single_three_text_textsize:I

    invoke-static {p1, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextSize:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mSystemTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextSize:F

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    move v4, v2

    :goto_1
    if-ltz p1, :cond_4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)[I

    move-result-object v5

    aget v6, v5, v2

    if-lez v6, :cond_3

    aget v5, v5, v2

    if-ge v5, v3, :cond_3

    if-eqz v4, :cond_4

    if-lt p1, v1, :cond_4

    const-string v3, "..."

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    move v4, v1

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method private drawRangedProgress(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isRangedProgressEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->createRangedBorderRenderNeeded(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->updateRangedRenderFields()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

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
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SingleTextComplicationRender"

    const-string v0, "[drawText] text is empty"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->isSmallWidget()Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isChineseChar(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mIsNumberText:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_single_four_text_textsize:I

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_single_two_text_textsize:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_single_three_text_textsize:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->small_single_one_textsize:I

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mIsNumberText:Z

    if-eqz v0, :cond_7

    const v0, 0x3f153f7d    # 0.583f

    :goto_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextSize:F

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_9

    if-eqz v2, :cond_8

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->single_text_three_text_textsize_en:I

    :goto_2
    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextSize:F

    goto :goto_3

    :cond_9
    const v0, 0x3e9ba5e3    # 0.304f

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mSystemTypeface:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mDataTypeface:Landroid/graphics/Typeface;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->isColorfulStyle:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mSystemTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v2, "OPlusSans-Data-Medium.ttf"

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mDataTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x26ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateRangedRenderFields()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mRangedRender:Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isSmallWidget()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isSmallWidget()Z

    move-result v0

    return v0
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

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
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isNumberText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mIsNumberText:Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mComplicationBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->dealLongText(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->isColorfulStyle:Z

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->drawRangedProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->initPaint()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
