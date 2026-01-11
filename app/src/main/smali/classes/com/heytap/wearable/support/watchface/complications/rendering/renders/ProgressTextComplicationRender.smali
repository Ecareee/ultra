.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final OPPO_SANS_CLOCK_MEDIUM:Ljava/lang/String; = "OPlusSans2.0-Clock-Medium.ttf"

.field private static final PROGRESS_START_ANGLE:F = 270.0f

.field private static final PROGRESS_SWEEP_ANGLE:F = 360.0f

.field private static final TAG:Ljava/lang/String; = "ProgressTextComplicationRender"


# instance fields
.field private mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

.field private mProgress:F

.field private mProgressBounds:Landroid/graphics/RectF;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mRectOffset:F

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextHeight:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_text_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextSize:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_text_text_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextHeight:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_text_text_top_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTopPadding:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->progress_text_rect_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mRectOffset:F

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const-string v2, "OPlusSans2.0-Clock-Medium.ttf"

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x10:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private calcTextBounds(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTopPadding:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Z)V
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getMaxValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getValue()F

    move-result v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgress:F

    goto :goto_1

    :cond_3
    :goto_0
    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgress:F

    :goto_1
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgress:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    return-void

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgress:F

    :cond_5
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->TAG:Ljava/lang/String;

    const-string p2, "[drawProgress] not support borderStyle."

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v5

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    iget v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgress:F

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->draw(Landroid/graphics/Canvas;ZZIF)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->TAG:Ljava/lang/String;

    const-string p2, "[drawProgress] mComplicationData or mCurStyle is null"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 5

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onBoundsChanged]."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "[onBoundsChanged] rect is null"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mRectOffset:F

    add-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->calcTextBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "[onDataChanged] mBounds is null"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->calcTextBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isSupportPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->drawProgress(Landroid/graphics/Canvas;Z)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->drawValue(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public onStyleChanged()V
    .locals 4

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->TAG:Ljava/lang/String;

    const-string v1, "onStyleChanged."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "[onStyleChanged] not support borderStyle."

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    if-nez v0, :cond_2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;-><init>(Landroid/graphics/Paint;FF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mFullRender:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;->mProgressBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->setBounds(Landroid/graphics/RectF;Z)V

    :goto_0
    return-void
.end method
