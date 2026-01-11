.class public abstract Lcom/heytap/wearable/support/watchface/data/WFTimeData;
.super Lcom/heytap/wearable/support/watchface/data/WFData;
.source "SourceFile"


# static fields
.field private static final PREVIEW_DAY:I = 0x6

.field private static final PREVIEW_HOUR:I = 0x9

.field private static final PREVIEW_MINUTE:I = 0x1e

.field private static final PREVIEW_MONTH:I = 0x3

.field private static final PREVIEW_SECOND:I = 0x24

.field private static final PREVIEW_YEAR:I = 0x7e4


# instance fields
.field public mCalendar:Ljava/util/Calendar;

.field public mPreviewCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFData;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mPreviewCalendar:Ljava/util/Calendar;

    const/16 v1, 0x7e4

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/16 v4, 0x9

    const/16 v5, 0x1e

    const/16 v6, 0x24

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    return-void
.end method


# virtual methods
.method public onTimeZoneChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public updateRealTime()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method
