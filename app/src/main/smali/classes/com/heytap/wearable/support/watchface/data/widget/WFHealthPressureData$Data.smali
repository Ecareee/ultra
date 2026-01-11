.class public Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mLatestPressure:I

.field private mPressureHistogramData:Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->mLatestPressure:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->setPressureHistogramData(Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->setLatestPressure(I)V

    return-void
.end method

.method private setLatestPressure(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->mLatestPressure:I

    return-void
.end method

.method private setPressureHistogramData(Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->mPressureHistogramData:Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;

    return-void
.end method


# virtual methods
.method public getLatestPressure()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->mLatestPressure:I

    :goto_0
    return v0
.end method

.method public getLatestPressureStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;->access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->mLatestPressure:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;->access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getPressureHistogramData()Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthPressureData$Data;->mPressureHistogramData:Lcom/heytap/wearable/support/watchface/complications/proto/PressureHistogramData;

    return-object v0
.end method
