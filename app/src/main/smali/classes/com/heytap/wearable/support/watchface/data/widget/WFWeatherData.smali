.class public Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;
    }
.end annotation


# static fields
.field private static final PREVIEW_TEMPERATURE_STR:Ljava/lang/String; = "26\u2103"

.field private static final TAG:Ljava/lang/String; = "WFWeatherData"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$1;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 4

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/proto/Weather;

    const-string v0, "WFWeatherData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] weather is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/Weather;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onComplicationDataUpdate] temperatureStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/Weather;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "[onComplicationDataUpdate] icon is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/Weather;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "[onComplicationDataUpdate] weatherIcon is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
