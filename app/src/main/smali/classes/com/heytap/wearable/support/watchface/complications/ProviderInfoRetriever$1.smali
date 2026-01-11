.class Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->retrieveProviderInfo(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

.field public final synthetic val$callback:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;

.field public final synthetic val$watchFaceComplicationIds:[I

.field public final synthetic val$watchFaceComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Ljava/lang/String;[ILcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$watchFaceComponent:Ljava/lang/String;

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$watchFaceComplicationIds:[I

    iput-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$callback:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$watchFaceComponent:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$watchFaceComplicationIds:[I

    invoke-static {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$100(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Ljava/lang/String;[I)[Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$watchFaceComplicationIds:[I

    aget v2, v2, v1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-static {v4}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$200(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;-><init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;ILcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$200(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$2;

    invoke-direct {v1, p0}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$2;-><init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
