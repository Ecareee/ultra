.class public Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;
    }
.end annotation


# static fields
.field private static final DEFAULT_HUMIDITY:I = 0x0

.field private static final DEFAULT_PRESSURE:I = 0x0

.field private static final DEFAULT_UV_INDEX:I = 0x0

.field private static final DEFAULT_WIND_POWER:I = 0x0

.field private static final DEFAULT_WIND_SPEED:I = 0x0

.field private static final PREVIEW_HUMIDITY:I = 0x19

.field private static final PREVIEW_PRESSURE:I = 0x3ee

.field private static final PREVIEW_UV_INDEX:I = 0x1

.field private static final PREVIEW_WIND_POWER:I = 0x3

.field private static final PREVIEW_WIND_SPEED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WFWeatherOBWData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public complicationDataUpdateNoData()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "WFWeatherOBWData"

    const-string v1, "[onComplicationDataUpdateUV] weatherObw is null, return!"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;

    invoke-direct {v1}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;-><init>()V

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    const-string v2, "- -"

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$600(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    :cond_0
    return-void
.end method

.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$1;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;

    const-string v0, "WFWeatherOBWData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] weatherObw is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "[onComplicationDataUpdate]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->getHumidity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->getPressure()I

    move-result v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->getUvIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->getUvIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->getWindPower()I

    move-result v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->getWindSpeed()I

    move-result p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->access$600(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V

    return-void
.end method
