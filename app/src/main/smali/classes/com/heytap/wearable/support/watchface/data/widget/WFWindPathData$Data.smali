.class public Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mWindPath:Ljava/lang/String;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string p1, "\u4e1c\u5317\u98ce"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;->access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;->mWindPath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;ZLcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;->setWindPath(Ljava/lang/String;)V

    return-void
.end method

.method private setWindPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;->mWindPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWindPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFWindPathData$Data;->mWindPath:Ljava/lang/String;

    return-object v0
.end method
