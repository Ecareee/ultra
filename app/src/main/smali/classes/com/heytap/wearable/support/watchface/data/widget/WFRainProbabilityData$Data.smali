.class public Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mRainProbability:Ljava/lang/String;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string p1, "50%"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;->mRainProbability:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;ZLcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;->setRainProbability(Ljava/lang/String;)V

    return-void
.end method

.method private setRainProbability(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;->mRainProbability:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRainProbability()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFRainProbabilityData$Data;->mRainProbability:Ljava/lang/String;

    return-object v0
.end method
