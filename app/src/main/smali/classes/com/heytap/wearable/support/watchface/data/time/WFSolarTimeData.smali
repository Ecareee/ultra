.class public Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;
.super Lcom/heytap/wearable/support/watchface/data/WFTimeData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Field;,
        Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;
    }
.end annotation


# static fields
.field private static final ANGLE_PER_HOUR:F = 30.0f

.field private static final ANGLE_PER_MINUTE:F = 6.0f

.field private static final ANGLE_PER_SECOND:F = 6.0f

.field private static final HOURS_PER_ROUND:F = 12.0f

.field private static final MINUTES_PER_HOUR:F = 60.0f

.field private static final SECONDS_PER_MINUTES:F = 60.0f

.field private static final TAG:Ljava/lang/String; = "WFSolarTimeData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFTimeData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mPreviewCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->updateRealTime()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->updateRealTime()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->updateRealTime()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mPreviewCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->updateRealTime()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;ZLcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;ZLcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$1;)V

    return-object v0
.end method
