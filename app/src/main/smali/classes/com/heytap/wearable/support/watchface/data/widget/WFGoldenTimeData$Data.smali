.class public Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mGoldenTime:Ljava/lang/String;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string p1, "17:30"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;->mGoldenTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;ZLcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;->setGoldenTime(Ljava/lang/String;)V

    return-void
.end method

.method private setGoldenTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;->mGoldenTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGoldenTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFGoldenTimeData$Data;->mGoldenTime:Ljava/lang/String;

    return-object v0
.end method
