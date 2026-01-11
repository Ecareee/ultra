.class public Lcom/heytap/wearable/support/watchface/complications/rendering/utils/TimeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHourAndMinute(Landroid/content/Context;Ljava/util/Calendar;)[I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-eqz p0, :cond_1

    const/16 p0, 0xb

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ge p0, v5, :cond_0

    aput v4, v0, v4

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p0, 0xa

    aput p1, v0, v4

    :goto_0
    rem-int/2addr p0, v5

    aput p0, v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_2

    aput v3, v0, v4

    aput v2, v0, v3

    goto :goto_1

    :cond_2
    if-ge p0, v5, :cond_3

    aput v4, v0, v4

    rem-int/2addr p0, v5

    aput p0, v0, v3

    goto :goto_1

    :cond_3
    aput v3, v0, v4

    rem-int/2addr p0, v5

    aput p0, v0, v3

    :goto_1
    if-ge v1, v5, :cond_4

    aput v4, v0, v2

    goto :goto_2

    :cond_4
    div-int/lit8 p0, v1, 0xa

    aput p0, v0, v2

    :goto_2
    const/4 p0, 0x3

    rem-int/2addr v1, v5

    aput v1, v0, p0

    return-object v0
.end method

.method public static isActive(JJ)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTimeMillis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "startTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " endTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeUtil"

    invoke-static {v3, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/TimeUtil;->isSetTimeRange(JJ)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    cmp-long p0, v0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method private static isSetTimeRange(JJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_1

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
