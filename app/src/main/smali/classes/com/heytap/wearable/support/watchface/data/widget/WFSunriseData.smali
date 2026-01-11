.class public Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;
    }
.end annotation


# static fields
.field private static final PREVIEW_SUNRISE_STR:Ljava/lang/String; = "05:30"

.field private static final TAG:Ljava/lang/String; = "WFSunriseData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData;ZLcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData;ZLcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$1;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/16 v3, 0x16

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    const-string v0, "WFSunriseData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] complicationText is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {p1, v1}, Landroidx/appcompat/app/d;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFSunriseData$Data;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onComplicationDataUpdate] sunriseTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
