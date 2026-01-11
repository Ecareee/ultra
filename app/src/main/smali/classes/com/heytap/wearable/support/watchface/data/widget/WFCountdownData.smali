.class public Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WFCountdownData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-direct {v0, p0}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-direct {v0, p0}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/16 v3, 0xb1

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public getCountDownName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->getParcelData()Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;->getCountDownName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountdownData()Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->getParcelData()Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDuration()J
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->getParcelData()Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;->getCurrentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->getParcelData()Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;->getState()I

    move-result v0

    return v0
.end method

.method public getTotalDuration()J
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->getParcelData()Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    const-string v0, "WFCountdownData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] parcelData is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "[onComplicationDataUpdate]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->setParcelData(Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;)V

    return-void
.end method
