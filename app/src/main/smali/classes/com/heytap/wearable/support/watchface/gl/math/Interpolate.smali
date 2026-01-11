.class public Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static interpolateBezier(FFFFF)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float v1, v0, v0

    mul-float v2, p0, p0

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr p2, v3

    mul-float/2addr p2, p0

    mul-float/2addr p2, v1

    add-float/2addr p2, p1

    mul-float/2addr p3, v3

    mul-float/2addr p3, v2

    mul-float/2addr p3, v0

    add-float/2addr p3, p2

    mul-float/2addr p4, v2

    mul-float/2addr p4, p0

    add-float/2addr p4, p3

    return p4
.end method

.method public static interpolateDecrease(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    mul-float/2addr p0, p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    return p1
.end method

.method public static interpolateIncrease(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    return p2
.end method

.method public static interpolateLinear(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    return p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_2

    return p2

    :cond_2
    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    return p0
.end method
