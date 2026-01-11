.class public Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;
    }
.end annotation


# static fields
.field private static final DEFAULT_SLEEP_HOUR:I = 0x0

.field private static final DEFAULT_SLEEP_MINUTE:I = 0x0

.field private static final PREVIEW_SLEEP_HOUR:I = 0x8

.field private static final PREVIEW_SLEEP_MINUTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WFHealthSleepData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$1;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;

    const-string v0, "WFHealthSleepData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] timeDependentData is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "[onComplicationDataUpdate]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;->getDuration()I

    move-result p1

    if-lez p1, :cond_1

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;I)V

    :cond_1
    return-void
.end method
