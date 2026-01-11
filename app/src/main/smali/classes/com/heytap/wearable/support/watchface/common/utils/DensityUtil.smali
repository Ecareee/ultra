.class public Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil$ScaleType;
    }
.end annotation


# static fields
.field private static final SCALE_CONSTANT:F = 0.5f

.field private static final STANDARD_HEIGHT:F = 476.0f

.field private static final STANDARD_WIDTH:F = 402.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getBitmapScaleRect(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 5

    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x43ee0000    # 476.0f

    const/high16 v3, 0x43c90000    # 402.0f

    if-nez p1, :cond_1

    int-to-float p1, v0

    div-float/2addr p1, v3

    int-to-float v1, p0

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    int-to-float p1, v0

    div-float/2addr p1, v3

    int-to-float v1, p0

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    :goto_0
    int-to-float p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float p0, p0

    div-float/2addr p0, v0

    mul-float/2addr v3, v1

    mul-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    div-float/2addr v3, v0

    sub-float v4, p1, v3

    float-to-int v4, v4

    div-float/2addr v1, v0

    sub-float v0, p0, v1

    float-to-int v0, v0

    add-float/2addr p1, v3

    float-to-int p1, p1

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-direct {v2, v4, v0, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :cond_3
    :goto_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public static getNewRectByDisplayMetrics(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 4

    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p0, p0

    div-float/2addr p0, v1

    new-instance v1, Landroid/graphics/Rect;

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float v2, v0, p1

    float-to-int v2, v2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float v3, p0, p2

    float-to-int v3, v3

    add-float/2addr v0, p1

    float-to-int p1, v0

    add-float/2addr p0, p2

    float-to-int p0, p0

    invoke-direct {v1, v2, v3, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
