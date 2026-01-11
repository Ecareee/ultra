.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;
.source "SourceFile"


# static fields
.field private static final CLIP_BOUNDS_OFFSET:F = -10.0f

.field private static final PROGRESS_FULL_ANGLE:F = 360.0f

.field private static final TAG:Ljava/lang/String; = "RangedPathBorderRender"


# instance fields
.field private mBackgroundPath:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/RectF;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPathBounds:Landroid/graphics/Rect;

.field private mProgress:F

.field private mProgressPath:Landroid/graphics/drawable/Drawable;

.field private mStartAngle:F

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;IIIF)V
    .locals 0
    .param p3    # I
        .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$RangedBorderStyle;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBounds:Landroid/graphics/RectF;

    const/4 p1, 0x6

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mTargetValue:I

    iput p6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mStartAngle:F

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mBorderStyle:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBackgroundPath:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method private drawBackgroundPath(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBackgroundPath:Landroid/graphics/drawable/Drawable;

    const-string v1, "RangedPathBorderRender"

    if-nez v0, :cond_0

    const-string p1, "[drawBackgroundPath] mBackgroundPath is null"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-nez v2, :cond_1

    const-string p1, "[drawBackgroundPath] mCurStyle is null"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBackgroundPath:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getQuaternaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBackgroundPath:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProgressPath(Landroid/graphics/Canvas;Z)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    const-string v1, "RangedPathBorderRender"

    if-nez v0, :cond_0

    const-string p1, "[drawProgressPath] mProgressPath is null"

    :goto_0
    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getPercentage()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setProgress(F)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setProgress(F)V

    :goto_2
    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgress:F

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    instance-of v0, p2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_5
    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_6

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mStartAngle:F

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgress:F

    mul-float/2addr v3, v2

    invoke-virtual {p2, v0, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    return-void

    :cond_7
    :goto_4
    const-string p1, "[drawProgressPath] mComplicationData or mCurStyle is null"

    goto/16 :goto_0
.end method

.method private setBackgroundPath(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBackgroundPath:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mPathBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgress:F

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgress:F

    :goto_1
    return-void
.end method

.method private setProgressPath(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mPathBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private setTargetValue(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$TargetValue;
        .end annotation
    .end param

    if-gtz p1, :cond_0

    const/4 p1, 0x6

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mTargetValue:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mTargetValue:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mBorderStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border_background4:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setBackgroundPath(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border4:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border_background5:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setBackgroundPath(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border5:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border_background6:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setBackgroundPath(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border6:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dot_border_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setBackgroundPath(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dot_border:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setProgressPath(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mPathBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setBounds(Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->drawBackgroundPath(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->drawProgressPath(Landroid/graphics/Canvas;Z)V

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

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mPathBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBounds:Landroid/graphics/RectF;

    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mBackgroundPath:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mPathBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mProgressPath:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->mPathBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "RangedPathBorderRender"

    const-string v0, "[setBounds] BackgroundPath or ProgressPath is null"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTargetValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setTargetValue(I)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getPercentage()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;->setProgress(F)V

    return-void
.end method
