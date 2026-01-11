.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROGRESS_FULL_ANGLE:F = 280.0f

.field private static final RANGED_PROGRESS_NAME:Ljava/lang/String; = "primaryColor"

.field private static final TAG:Ljava/lang/String; = "ProgressPointRender"


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mPointDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointPath:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

.field private mPointRectF:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mContext:Landroid/content/Context;

    return-void
.end method

.method private drawDefaultProgress(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProgressPoint(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointRectF:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getPercentage()F

    move-result p3

    cmpg-float v2, p3, v1

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float v2, p3, v0

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, p3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointPath:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->setStrokeColor(I)V

    :cond_5
    const/high16 p2, 0x438c0000    # 280.0f

    mul-float/2addr v0, p2

    const/high16 p2, 0x430c0000    # 140.0f

    cmpg-float p3, v0, p2

    if-gez p3, :cond_6

    sub-float/2addr p2, v0

    neg-float v1, p2

    goto :goto_2

    :cond_6
    cmpl-float p3, v0, p2

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    sub-float v1, v0, p2

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointRectF:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointRectF:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public createDrawable(Landroid/graphics/Rect;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->createDrawable(Landroid/graphics/Rect;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;ZZ)V

    return-void
.end method

.method public createDrawable(Landroid/graphics/Rect;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;ZZ)V
    .locals 2

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mRectF:Landroid/graphics/Rect;

    sget-object p1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDrawable isNewStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isColorfulStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    sget p3, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_color_point_new:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getWhiteIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    sget p3, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_color_point_white:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    sget p3, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_color_point:I

    :goto_0
    iget-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4, p3, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getWhiteIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mContext:Landroid/content/Context;

    sget p3, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_white_point:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mRectF:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p2, p3

    new-instance p3, Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mRectF:Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p2, v0, p1, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointRectF:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mRectF:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointRectF:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    const-string p2, "primaryColor"

    invoke-virtual {p1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->mPointPath:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->drawDefaultProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressPointRender;->drawProgressPoint(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V

    return-void
.end method
