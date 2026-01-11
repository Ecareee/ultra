.class public Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mSPO:I

.field private mTimeDependentData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/16 p1, 0x63

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->mSPO:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->setTimeDependentData(Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->setSPO(I)V

    return-void
.end method

.method private setSPO(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->mSPO:I

    return-void
.end method

.method private setTimeDependentData(Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->mTimeDependentData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;

    return-void
.end method


# virtual methods
.method public getSPO()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->mSPO:I

    :goto_0
    return v0
.end method

.method public getSPOStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;->access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->mSPO:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;->access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getTimeDependentData()Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSPOData$Data;->mTimeDependentData:Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;

    return-object v0
.end method
