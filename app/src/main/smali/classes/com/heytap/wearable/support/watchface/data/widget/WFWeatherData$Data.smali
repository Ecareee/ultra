.class public Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mTemperatureStr:Ljava/lang/String;

.field private mWeather:Lcom/heytap/wearable/support/watchface/complications/proto/Weather;

.field private mWeatherIcon:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;Z)V
    .locals 1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "26\u2103"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;->access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mTemperatureStr:Ljava/lang/String;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;->access$600(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lk0/d;->ic_weather_default:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;->access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mWeatherIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/Weather;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->setWeather(Lcom/heytap/wearable/support/watchface/complications/proto/Weather;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->setTemperatureStr(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->setWeatherIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setTemperatureStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mTemperatureStr:Ljava/lang/String;

    return-void
.end method

.method private setWeather(Lcom/heytap/wearable/support/watchface/complications/proto/Weather;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mWeather:Lcom/heytap/wearable/support/watchface/complications/proto/Weather;

    return-void
.end method

.method private setWeatherIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mWeatherIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getTemperature1Str()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mTemperatureStr:Ljava/lang/String;

    const-string v1, "\u2103"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemperatureStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mTemperatureStr:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Lcom/heytap/wearable/support/watchface/complications/proto/Weather;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mWeather:Lcom/heytap/wearable/support/watchface/complications/proto/Weather;

    return-object v0
.end method

.method public getWeatherIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->mWeatherIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getWeatherStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;->access$700(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
