.class public Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mPm25:I

.field private mWeatherAirQuality:Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/16 p1, 0x23

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->mPm25:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->setWeatherAirQuality(Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->setPm25(I)V

    return-void
.end method

.method private setPm25(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->mPm25:I

    return-void
.end method

.method private setWeatherAirQuality(Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->mWeatherAirQuality:Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;

    return-void
.end method


# virtual methods
.method public getPm25()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->mPm25:I

    return v0
.end method

.method public getPm25Str()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->mPm25:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWeatherAirQuality()Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQData$Data;->mWeatherAirQuality:Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;

    return-object v0
.end method
