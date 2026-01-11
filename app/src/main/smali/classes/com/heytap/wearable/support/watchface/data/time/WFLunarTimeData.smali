.class public Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;
.super Lcom/heytap/wearable/support/watchface/data/WFTimeData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WFLunarTimeData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFTimeData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mPreviewCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->updateRealTime()V

    return-void
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFTimeData;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;ZLcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;ZLcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$1;)V

    return-object v0
.end method
