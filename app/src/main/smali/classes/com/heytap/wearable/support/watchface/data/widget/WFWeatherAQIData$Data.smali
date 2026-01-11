.class public Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mAQI:Ljava/lang/String;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string p1, "50"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;->mAQI:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;->setAQI(Ljava/lang/String;)V

    return-void
.end method

.method private setAQI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;->mAQI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAQI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;->mAQI:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWeatherAQIData$Data;->mAQI:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
