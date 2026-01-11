.class public Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;
    }
.end annotation


# static fields
.field private static final DEFAULT_BATTERY_LEVEL:I = 0x0

.field private static final PREVIEW_BATTERY_LEVEL:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WFBatteryData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;-><init>(ZLcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;-><init>(ZLcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$1;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 4

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    const-string v0, "WFBatteryData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] complicationText is null, return!"

    :goto_0
    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->getText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "[onComplicationDataUpdate] batteryStr is null or empty string, return!"

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onComplicationDataUpdate] battery level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onComplicationDataUpdate] invalid data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
