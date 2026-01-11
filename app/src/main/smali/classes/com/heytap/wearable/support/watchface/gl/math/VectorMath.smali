.class public Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angle(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F
    .locals 1

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result v0

    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->length(Landroid/renderscript/Float3;)F

    move-result p0

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->length(Landroid/renderscript/Float3;)F

    move-result p1

    div-float/2addr v0, p0

    div-float/2addr v0, p1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x43340000    # 180.0f

    mul-float/2addr p0, p1

    const p1, 0x40490fdb    # (float)Math.PI

    div-float/2addr p0, p1

    return p0
.end method

.method public static cross(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 4

    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iget v1, p2, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, v1

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    iget v3, p2, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p2, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v2, v0

    iget v3, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/renderscript/Float3;->y:F

    iget p2, p2, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v3, p2

    iget p1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr p1, v0

    sub-float/2addr v3, p1

    iput v3, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public static dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F
    .locals 3

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    return p0
.end method

.method public static length(Landroid/renderscript/Float3;)F
    .locals 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    invoke-static {v0, v1, p0}, Landroid/opengl/Matrix;->length(FFF)F

    move-result p0

    return p0
.end method

.method public static normalize(Landroid/renderscript/Float3;)V
    .locals 3

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    invoke-static {v0, v1, v2}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/renderscript/Float3;->z:F

    :cond_0
    return-void
.end method

.method public static rotate(Landroid/renderscript/Float3;FFFF)V
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    new-instance p1, Landroid/renderscript/Float3;

    aget p2, v0, v7

    const/4 p3, 0x4

    aget p3, v0, p3

    const/16 p4, 0x8

    aget p4, v0, p4

    invoke-direct {p1, p2, p3, p4}, Landroid/renderscript/Float3;-><init>(FFF)V

    new-instance p2, Landroid/renderscript/Float3;

    const/4 p3, 0x1

    aget p3, v0, p3

    const/4 p4, 0x5

    aget p4, v0, p4

    const/16 v1, 0x9

    aget v1, v0, v1

    invoke-direct {p2, p3, p4, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    new-instance p3, Landroid/renderscript/Float3;

    const/4 p4, 0x2

    aget p4, v0, p4

    const/4 v1, 0x6

    aget v1, v0, v1

    const/16 v2, 0xa

    aget v0, v0, v2

    invoke-direct {p3, p4, v1, v0}, Landroid/renderscript/Float3;-><init>(FFF)V

    new-instance p4, Landroid/renderscript/Float3;

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    invoke-direct {p4, v0, v1, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-static {p4, p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    invoke-static {p4, p2}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Landroid/renderscript/Float3;->y:F

    invoke-static {p4, p3}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public static rotate(Landroid/renderscript/Float3;Landroid/renderscript/Float3;FFFF)V
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    new-instance p2, Landroid/renderscript/Float3;

    aget p3, v0, v7

    const/4 p4, 0x4

    aget p4, v0, p4

    const/16 p5, 0x8

    aget p5, v0, p5

    invoke-direct {p2, p3, p4, p5}, Landroid/renderscript/Float3;-><init>(FFF)V

    new-instance p3, Landroid/renderscript/Float3;

    const/4 p4, 0x1

    aget p4, v0, p4

    const/4 p5, 0x5

    aget p5, v0, p5

    const/16 v1, 0x9

    aget v1, v0, v1

    invoke-direct {p3, p4, p5, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    new-instance p4, Landroid/renderscript/Float3;

    const/4 p5, 0x2

    aget p5, v0, p5

    const/4 v1, 0x6

    aget v1, v0, v1

    const/16 v2, 0xa

    aget v0, v0, v2

    invoke-direct {p4, p5, v1, v0}, Landroid/renderscript/Float3;-><init>(FFF)V

    new-instance p5, Landroid/renderscript/Float3;

    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    invoke-direct {p5, v0, v1, p1}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-static {p5, p2}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    invoke-static {p5, p3}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Landroid/renderscript/Float3;->y:F

    invoke-static {p5, p4}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method
