.class public Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mCountdownData:Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParcelData()Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->mCountdownData:Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    return-object v0
.end method

.method public setParcelData(Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFCountdownData$Data;->mCountdownData:Lcom/heytap/wearable/support/watchface/complications/proto/CountdownData;

    return-void
.end method
