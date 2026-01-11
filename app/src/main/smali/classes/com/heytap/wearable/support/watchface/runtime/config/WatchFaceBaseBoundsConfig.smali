.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COORDINATE_X_INDEX:I = 0x0

.field private static final COORDINATE_Y_INDEX:I = 0x1

.field private static final HEIGHT_INDEX:I = 0x1

.field private static final WIDTH_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 6

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimensListByStrId(Landroid/content/Context;[Ljava/lang/String;)[F

    move-result-object p2

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimensListByStrId(Landroid/content/Context;[Ljava/lang/String;)[F

    move-result-object p1

    if-eqz p2, :cond_2

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aget-object v5, p3, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aget-object p3, p3, v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    aget p3, p1, v0

    aget p1, p1, v2

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v4, v3

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v4, p2

    invoke-direct {p1, v1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method
