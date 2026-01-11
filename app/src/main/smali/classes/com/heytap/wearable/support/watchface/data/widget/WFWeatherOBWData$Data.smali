.class public Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mHumidity:I

.field private mPressure:I

.field private mUvIndex:I

.field private mUvIndexStr:Ljava/lang/String;

.field private mWeatherObw:Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;

.field private mWindPower:I

.field private mWindSpeed:I

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/16 p1, 0x19

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mHumidity:I

    const/16 p1, 0x3ee

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mPressure:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mUvIndex:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindPower:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindSpeed:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mHumidity:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mPressure:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mUvIndex:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindPower:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindSpeed:I

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;->access$800(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mUvIndexStr:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->setWeatherObw(Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->setHumidity(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->setPressure(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->setUvIndex(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->setUvIndexStr(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->setWindPower(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->setWindSpeed(I)V

    return-void
.end method

.method private setHumidity(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mHumidity:I

    return-void
.end method

.method private setPressure(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mPressure:I

    return-void
.end method

.method private setUvIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mUvIndex:I

    return-void
.end method

.method private setUvIndexStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mUvIndexStr:Ljava/lang/String;

    return-void
.end method

.method private setWeatherObw(Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWeatherObw:Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;

    return-void
.end method

.method private setWindPower(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindPower:I

    return-void
.end method

.method private setWindSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindSpeed:I

    return-void
.end method


# virtual methods
.method public getHumidity()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mHumidity:I

    return v0
.end method

.method public getHumidityStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mHumidity:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;->access$900(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPressure()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mPressure:I

    return v0
.end method

.method public getPressureStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mPressure:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;->access$1000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUvIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mUvIndex:I

    return v0
.end method

.method public getUvIndexStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mUvIndexStr:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherObw()Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWeatherObw:Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;

    return-object v0
.end method

.method public getWindPower()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindPower:I

    return v0
.end method

.method public getWindPowerStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindPower:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;->access$1100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWindSpeed()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindSpeed:I

    return v0
.end method

.method public getWindSpeedStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->mWindSpeed:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;->access$1200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherOBWData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
