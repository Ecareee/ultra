.class public final Lr0/c;
.super Lo0/a;
.source "SourceFile"


# instance fields
.field public A0:Landroid/graphics/Rect;

.field public B0:Landroid/graphics/Rect;

.field public C0:Landroid/graphics/Rect;

.field public D0:Landroid/graphics/Rect;

.field public E0:Landroid/graphics/Rect;

.field public F0:Landroid/graphics/Rect;

.field public G0:Landroid/graphics/Rect;

.field public H0:Landroid/graphics/Rect;

.field public I0:Landroid/graphics/Rect;

.field public J0:Landroid/graphics/Rect;

.field public K0:Landroid/graphics/Rect;

.field public L0:I

.field public M0:Lr0/a;

.field public N0:Ljava/lang/String;

.field public O0:I

.field public P0:Landroid/graphics/RectF;

.field public Q0:Landroid/content/res/Resources;

.field public R0:Ljava/lang/String;

.field public S0:I

.field public T0:I

.field public U0:I

.field public V0:I

.field public W0:I

.field public X0:I

.field public Y0:I

.field public Z0:I

.field public a0:F

.field public a1:I

.field public b0:F

.field public b1:I

.field public c0:Landroid/graphics/Paint;

.field public c1:I

.field public d0:Landroid/graphics/Paint;

.field public d1:I

.field public e0:Landroid/graphics/Bitmap;

.field public e1:I

.field public f0:Landroid/graphics/Bitmap;

.field public f1:I

.field public g0:Landroid/graphics/Bitmap;

.field public g1:I

.field public h0:Landroid/graphics/Bitmap;

.field public h1:Landroid/graphics/Bitmap;

.field public i0:Landroid/graphics/Bitmap;

.field public i1:Z

.field public j0:Landroid/graphics/Bitmap;

.field public j1:Z

.field public k0:Landroid/graphics/Bitmap;

.field public k1:Landroid/os/Handler;

.field public l0:Landroid/graphics/Rect;

.field public m0:Landroid/text/TextPaint;

.field public n0:Landroid/text/TextPaint;

.field public o0:Landroid/text/TextPaint;

.field public p0:Landroid/text/TextPaint;

.field public q0:Landroid/text/TextPaint;

.field public r0:Landroid/graphics/Paint;

.field public s0:I

.field public t0:I

.field public u0:F

.field public v0:F

.field public w0:F

.field public x0:F

.field public y0:F

.field public z0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lo0/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr0/c;->j1:Z

    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lr0/c$a;

    invoke-direct {v0, p0}, Lr0/c$a;-><init>(Lr0/c;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lr0/c;->k1:Landroid/os/Handler;

    iget-object p1, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lr0/c;->Q0:Landroid/content/res/Resources;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lm0/d;->k(J)V

    return-void
.end method


# virtual methods
.method public final B(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lm0/d;->f:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lm0/d;->f:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/g;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u65e5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lm0/d;->g:Landroid/content/Context;

    iget-object v4, p0, Lm0/d;->f:Ljava/util/Calendar;

    .line 2
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/e;->month_number_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lr0/g;->outdoor_month_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lr0/g;->outdoor_month_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lr0/c;->p0:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final C(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lr0/c;->e0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->l0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    iget-object v1, p0, Lm0/d;->g:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "UV"

    invoke-virtual {v0, v1, v4, v2}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lr0/c;->a0:F

    iget v2, p0, Lr0/c;->b0:F

    iget-object v4, p0, Lr0/c;->m0:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lr0/c;->C0:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/2addr v1, v0

    iget v0, p0, Lr0/c;->L0:I

    add-int/2addr v1, v0

    .line 1
    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lr0/g;->outdoor_uvpoint_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lr0/g;->outdoor_uvpoint_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v4, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lr0/g;->outdoor_uvpoint_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lr0/c;->B0:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iput v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 2
    iput-object v5, p0, Lr0/c;->B0:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lr0/c;->f0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->A0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lr0/c;->h0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->C0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lr0/c;->g0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->B0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final D(IIII)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final E()V
    .locals 7

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lr0/c;->p0:Landroid/text/TextPaint;

    iget-object v1, p0, Lm0/d;->g:Landroid/content/Context;

    sget v2, Lr0/g;->textsize:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lr0/c;->p0:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lr0/c;->p0:Landroid/text/TextPaint;

    const-string v3, "oplus-sans-medium"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lr0/c;->p0:Landroid/text/TextPaint;

    iget-object v5, p0, Lm0/d;->g:Landroid/content/Context;

    sget v6, Lr0/f;->colorTextMonth:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lr0/c;->p0:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lr0/c;->q0:Landroid/text/TextPaint;

    iget-object v5, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lr0/c;->q0:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lr0/c;->q0:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lr0/c;->q0:Landroid/text/TextPaint;

    iget-object v1, p0, Lm0/d;->g:Landroid/content/Context;

    sget v2, Lr0/f;->colorcompass:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lr0/c;->q0:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public final d()[[F
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x40a00000    # 5.0f
    .end array-data

    :array_2
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_3
    .array-data 4
        0x40a00000    # 5.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x40a00000    # 5.0f
        -0x3f600000    # -5.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x3f600000    # -5.0f
    .end array-data

    :array_6
    .array-data 4
        -0x3f600000    # -5.0f
        -0x3f600000    # -5.0f
    .end array-data

    :array_7
    .array-data 4
        -0x3f600000    # -5.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        -0x3f600000    # -5.0f
        -0x3f600000    # -5.0f
    .end array-data
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lr0/c;->C(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lr0/c;->e0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->l0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lr0/c;->C(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lr0/c;->R0:Ljava/lang/String;

    iget v1, p0, Lr0/c;->y0:F

    iget v2, p0, Lr0/c;->z0:F

    iget-object v4, p0, Lr0/c;->m0:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lr0/c;->j0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->G0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lr0/c;->k0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->H0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lr0/c;->j0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->I0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lr0/c;->j0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->E0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lr0/c;->k0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->F0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lr0/c;->i0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lr0/c;->D0:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/c;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    iget-object v1, p0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/g;->m(Landroid/content/Context;Ljava/util/Calendar;)[I

    move-result-object v0

    const-string v1, ""

    .line 2
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lr0/c;->s0:I

    int-to-float v1, v1

    iget v2, p0, Lr0/c;->t0:I

    int-to-float v2, v2

    iget-object v3, p0, Lr0/c;->o0:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lr0/c;->B(Landroid/graphics/Canvas;)V

    return-void
.end method
