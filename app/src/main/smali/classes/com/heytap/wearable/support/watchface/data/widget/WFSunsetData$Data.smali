.class public Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mComplicationText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

.field private mSunsetStr:Ljava/lang/String;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string p1, "18:30"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;->access$300(Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->mSunsetStr:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;ZLcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->setComplicationText(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->setSunsetStr(Ljava/lang/String;)V

    return-void
.end method

.method private setComplicationText(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->mComplicationText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-void
.end method

.method private setSunsetStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->mSunsetStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComplicationText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->mComplicationText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public getSunsetStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFSunsetData$Data;->mSunsetStr:Ljava/lang/String;

    return-object v0
.end method
