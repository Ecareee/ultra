.class public Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;
.source "SourceFile"


# instance fields
.field private isPercentText:Z

.field private mIndex:I

.field private mLeftPadding:I

.field private mOtherLeftPadding:I

.field private mOtherTopPadding:I

.field private mSpannableString:Landroid/text/SpannableString;

.field private mStartOffest:I

.field private mThreeLeftPadding:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->isPercentText:Z

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_spannable_text_left_padding:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mLeftPadding:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_spannable_three_text_left_padding:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mThreeLeftPadding:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_spannable_other_text_left_padding:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mOtherLeftPadding:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_spannable_text_top_padding:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mTopPadding:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_spannable_other_text_top_padding:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mOtherTopPadding:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_spannable_start_offset:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mStartOffest:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->isPercentText:Z

    if-eqz v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    :goto_0
    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mTopPadding:I

    :goto_1
    add-int/2addr p2, v1

    int-to-float p2, p2

    goto :goto_4

    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mThreeLeftPadding:I

    goto :goto_3

    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mOtherLeftPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mOtherTopPadding:I

    goto :goto_1

    :cond_4
    :goto_2
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mLeftPadding:I

    :goto_3
    add-int/2addr v0, v1

    goto :goto_0

    :goto_4
    const/4 v8, 0x0

    move v5, v0

    move v3, v8

    :goto_5
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    if-ge v3, v0, :cond_7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    const-class v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/AbsoluteSizeSpan;

    array-length v2, v1

    if-lez v2, :cond_6

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mIndex:I

    if-ne v3, v1, :cond_5

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mStartOffest:I

    int-to-float v1, v1

    add-float/2addr v5, v1

    :cond_5
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    :goto_6
    add-float v9, v1, v5

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    move-object v1, p1

    move v4, v0

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move v5, v9

    move v3, v0

    goto :goto_5

    :cond_7
    return-void
.end method

.method public getDrawTextWidth()F
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3, v2, v5, v6}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    const-class v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v5, v2, v3, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/AbsoluteSizeSpan;

    array-length v6, v5

    if-lez v6, :cond_1

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mIndex:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mStartOffest:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v5, v6, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    invoke-virtual {v5, v6, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    :goto_1
    add-float/2addr v2, v4

    move v4, v2

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_2
    sub-float/2addr v3, v1

    return v3
.end method

.method public setPercentText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->isPercentText:Z

    return-void
.end method

.method public setSpannableString(Landroid/text/SpannableString;I)V
    .locals 0

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mIndex:I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/SpannableTextRenderer;->mSpannableString:Landroid/text/SpannableString;

    return-void
.end method
