.class public final Lm0/d$c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lm0/d$c;->b:Lm0/d;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lm0/d$c;->b:Lm0/d;

    .line 1
    iget-boolean v1, v0, Lm0/d;->s:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    iget-object v0, p0, Lm0/d$c;->b:Lm0/d;

    check-cast v0, Lr0/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v4, v0, Lm0/d;->g:Landroid/content/Context;

    iget-object v5, v0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroidx/appcompat/widget/g;->m(Landroid/content/Context;Ljava/util/Calendar;)[I

    move-result-object v4

    const-string v5, ""

    .line 4
    invoke-static {v5}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5
    aget v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lr0/c;->s0:I

    int-to-float v5, v5

    iget v6, v0, Lr0/c;->t0:I

    int-to-float v6, v6

    iget-object v7, v0, Lr0/c;->n0:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Lr0/c;->B(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lm0/d;->f:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v5, v0, Lr0/c;->P0:Landroid/graphics/RectF;

    iget-object v6, v0, Lr0/c;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, v0, Lr0/c;->f1:I

    int-to-float v6, v6

    iget v7, v0, Lr0/c;->g1:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8
    iget-boolean v1, v0, Lr0/c;->j1:Z

    const/16 v4, 0x168

    if-nez v1, :cond_3

    iget-object v1, v0, Lr0/c;->R0:Ljava/lang/String;

    iget v5, v0, Lr0/c;->y0:F

    iget v6, v0, Lr0/c;->z0:F

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lr0/c;->Q0:Landroid/content/res/Resources;

    sget v5, Lr0/e;->compass_str:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v5, v0, Lr0/c;->O0:I

    int-to-float v5, v5

    const/high16 v6, 0x41b40000    # 22.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2d

    aget-object v1, v1, v5

    iput-object v1, v0, Lr0/c;->N0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lr0/c;->O0:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u00b0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, v0, Lr0/c;->w0:F

    iget v6, v0, Lr0/c;->x0:F

    iget-object v7, v0, Lr0/c;->m0:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lr0/c;->N0:Ljava/lang/String;

    iget v5, v0, Lr0/c;->u0:F

    iget v6, v0, Lr0/c;->v0:F

    :goto_2
    iget-object v7, v0, Lr0/c;->q0:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 9
    iget v1, v0, Lr0/c;->O0:I

    const/16 v5, 0xb4

    const/16 v6, 0xf

    if-le v1, v6, :cond_4

    if-ge v1, v5, :cond_4

    iget v1, v0, Lr0/c;->S0:I

    iput v1, v0, Lr0/c;->U0:I

    iget v4, v0, Lr0/c;->W0:I

    div-int/2addr v4, v3

    add-int/2addr v4, v1

    goto :goto_3

    :cond_4
    const/16 v7, 0x159

    if-lt v1, v5, :cond_5

    if-ge v1, v7, :cond_5

    iget v1, v0, Lr0/c;->S0:I

    iget v4, v0, Lr0/c;->W0:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v1

    iput v7, v0, Lr0/c;->U0:I

    add-int/2addr v1, v4

    iput v1, v0, Lr0/c;->V0:I

    goto :goto_4

    :cond_5
    if-ltz v1, :cond_6

    if-gt v1, v6, :cond_6

    iget v4, v0, Lr0/c;->S0:I

    iget v7, v0, Lr0/c;->W0:I

    div-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v4

    div-int/lit8 v7, v7, 0x1e

    mul-int/2addr v7, v1

    sub-int v1, v8, v7

    iput v1, v0, Lr0/c;->U0:I

    iput v8, v0, Lr0/c;->V0:I

    goto :goto_4

    :cond_6
    if-lt v1, v7, :cond_7

    if-gt v1, v4, :cond_7

    iget v7, v0, Lr0/c;->S0:I

    iget v8, v0, Lr0/c;->W0:I

    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v7

    iput v9, v0, Lr0/c;->U0:I

    div-int/lit8 v8, v8, 0x1e

    sub-int/2addr v4, v1

    mul-int/2addr v4, v8

    add-int/2addr v4, v9

    :goto_3
    iput v4, v0, Lr0/c;->V0:I

    .line 10
    :cond_7
    :goto_4
    iget-object v1, v0, Lr0/c;->r0:Landroid/graphics/Paint;

    iget-object v4, v0, Lm0/d;->g:Landroid/content/Context;

    sget v7, Lr0/f;->colorcompasswhite:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lr0/c;->S0:I

    int-to-float v8, v1

    iget v1, v0, Lr0/c;->b1:I

    int-to-float v9, v1

    iget v1, v0, Lr0/c;->U0:I

    int-to-float v10, v1

    iget v1, v0, Lr0/c;->d1:I

    int-to-float v11, v1

    iget-object v12, v0, Lr0/c;->r0:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lr0/c;->V0:I

    int-to-float v8, v1

    iget v1, v0, Lr0/c;->b1:I

    int-to-float v9, v1

    iget v1, v0, Lr0/c;->Z0:I

    int-to-float v10, v1

    iget v1, v0, Lr0/c;->d1:I

    int-to-float v11, v1

    iget-object v12, v0, Lr0/c;->r0:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lr0/c;->r0:Landroid/graphics/Paint;

    iget-object v4, v0, Lm0/d;->g:Landroid/content/Context;

    sget v7, Lr0/f;->colorcompassred:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lr0/c;->U0:I

    int-to-float v8, v1

    iget v1, v0, Lr0/c;->b1:I

    int-to-float v9, v1

    iget v1, v0, Lr0/c;->V0:I

    int-to-float v10, v1

    iget v1, v0, Lr0/c;->d1:I

    int-to-float v11, v1

    iget-object v12, v0, Lr0/c;->r0:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lr0/c;->O0:I

    rem-int/lit8 v4, v1, 0xf

    if-lez v1, :cond_8

    if-ge v1, v5, :cond_8

    iget v1, v0, Lr0/c;->W0:I

    neg-int v1, v1

    goto :goto_5

    :cond_8
    iget v1, v0, Lr0/c;->W0:I

    :goto_5
    div-int/2addr v1, v3

    mul-int/2addr v1, v4

    div-int/2addr v1, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, v0, Lr0/c;->T0:I

    sub-int/2addr v4, v1

    iget v5, v0, Lr0/c;->c1:I

    iget v6, v0, Lr0/c;->a1:I

    sub-int/2addr v6, v1

    iget v1, v0, Lr0/c;->e1:I

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, v0, Lr0/c;->h1:Landroid/graphics/Bitmap;

    iget v4, v0, Lr0/c;->T0:I

    iget v5, v0, Lr0/c;->W0:I

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    int-to-float v3, v4

    iget v4, v0, Lr0/c;->c1:I

    int-to-float v4, v4

    iget-object v5, v0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 11
    iget-object v1, v0, Lr0/c;->i0:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, v0, Lr0/c;->D0:Landroid/graphics/Rect;

    iget-object v0, v0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 12
    iget-object p1, p0, Lm0/d$c;->b:Lm0/d;

    .line 13
    iget-boolean v0, p1, Lm0/d;->r:Z

    if-nez v0, :cond_9

    iget-object v0, p1, Lm0/d;->b:Lm0/p;

    if-eqz v0, :cond_9

    iput-boolean v2, p1, Lm0/d;->r:Z

    .line 14
    iget-object p1, v0, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->notifyFirstFrameFinished()V

    :cond_9
    return-void
.end method
