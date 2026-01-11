.class public Lcom/heytap/wearable/support/watchface/common/utils/HandUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HOUR_DEGREE:F = 30.0f

.field private static final HOUR_TO_MINUTE:F = 60.0f

.field private static final MINUTE_DEGREE:F = 6.0f

.field private static final MINUTE_TO_SECOND:F = 60.0f

.field private static final SECOND_DEGREE:F = 6.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandDegrees(Ljava/util/Calendar;)[F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/heytap/wearable/support/watchface/common/utils/HandUtil;->getHandDegrees(Ljava/util/Calendar;Z)[F

    move-result-object p0

    return-object p0
.end method

.method public static getHandDegrees(Ljava/util/Calendar;Z)[F
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-float v1, v1

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v1, v4

    int-to-float v2, v2

    const/high16 v5, 0x42700000    # 60.0f

    div-float v6, v2, v5

    mul-float/2addr v6, v4

    add-float/2addr v6, v1

    const/4 v1, 0x0

    aput v6, v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v2, v1

    int-to-float v3, v3

    div-float v4, v3, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    const/4 v2, 0x1

    aput v4, v0, v2

    mul-float/2addr v3, v1

    const/4 v2, 0x2

    aput v3, v0, v2

    if-eqz p1, :cond_0

    aget p1, v0, v2

    int-to-float p0, p0

    const v3, 0x4479c000    # 999.0f

    div-float/2addr p0, v3

    mul-float/2addr p0, v1

    add-float/2addr p0, p1

    aput p0, v0, v2

    :cond_0
    return-object v0
.end method

.method public static getHourHandDegree(Ljava/util/Calendar;)F
    .locals 3

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    int-to-float p0, p0

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr p0, v2

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method public static getPreviewTimeHandDegrees(Ljava/util/Calendar;)[F
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    const/4 v1, 0x2

    aput p0, v0, v1

    return-object v0
.end method
