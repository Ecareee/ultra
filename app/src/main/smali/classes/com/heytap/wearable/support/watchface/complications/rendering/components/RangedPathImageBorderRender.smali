.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLIP_BOUNDS_OFFSET:F = -10.0f

.field private static final RANGED_PROGRESS_NAME:Ljava/lang/String; = "primaryColor"

.field private static final TAG:Ljava/lang/String; = "RangedPathImageBorderRender"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgBounds:Landroid/graphics/Rect;

.field private mBounds:Landroid/graphics/RectF;

.field public mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

.field public mContext:Landroid/content/Context;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mProgress:F

.field private mProgressBounds:Landroid/graphics/Rect;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressFullAngle:F

.field private mProgressPath:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    return-void
.end method

.method private drawProgressPath(Landroid/graphics/Canvas;II)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "RangedPathImageBorderRender"

    if-nez v0, :cond_0

    const-string p1, "[drawProgressPath] mProgressPath is null"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v0, :cond_1

    const-string p1, "[drawProgressPath] mComplicationData or mCurStyle is null"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->setProgress(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getPercentage()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->setProgress(F)V

    :goto_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p3, p2

    int-to-float p2, p3

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressFullAngle:F

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressPath:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setStrokeColor(I)V

    :cond_4
    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressFullAngle:F

    iget p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgress:F

    mul-float/2addr p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, p2, v0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_5

    div-float/2addr p2, v0

    sub-float/2addr p2, p3

    neg-float v1, p2

    goto :goto_1

    :cond_5
    div-float v2, p2, v0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    div-float/2addr p2, v0

    sub-float v1, p3, p2

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgress:F

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgress:F

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;II)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->drawProgressPath(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBgBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBounds:Landroid/graphics/RectF;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v2, v1

    new-instance v1, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressBounds:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    const-string v0, "primaryColor"

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressPath:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "RangedPathImageBorderRender"

    const-string v0, "[setBounds] BackgroundPath or ProgressPath is null"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorfulStyle(Z)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_color_point:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_white_point:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method public setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getPercentage()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathImageBorderRender;->setProgress(F)V

    return-void
.end method
