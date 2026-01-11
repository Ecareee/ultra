.class public Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mHeartRate:I

.field private mTimeDependentData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/16 p1, 0x59

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->mHeartRate:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->setTimeDependentData(Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->setHeartRate(I)V

    return-void
.end method

.method private setHeartRate(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->mHeartRate:I

    return-void
.end method

.method private setTimeDependentData(Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->mTimeDependentData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;

    return-void
.end method


# virtual methods
.method public getHeartRate()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->mHeartRate:I

    :goto_0
    return v0
.end method

.method public getHeartRateStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;->access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->mHeartRate:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;->access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getTimeDependentData()Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHeartRateData$Data;->mTimeDependentData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;

    return-object v0
.end method
