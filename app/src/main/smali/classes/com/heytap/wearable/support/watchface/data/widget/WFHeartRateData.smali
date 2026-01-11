.class public Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEART_RATE:I = 0x0

.field private static final PREVIEW_HEART_RATE:I = 0x59

.field private static final TAG:Ljava/lang/String; = "WFHeartRateData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$1;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;

    const-string v0, "WFHeartRateData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] timeDependentData is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "[onComplicationDataUpdate]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->getValue()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;I)V

    return-void
.end method
