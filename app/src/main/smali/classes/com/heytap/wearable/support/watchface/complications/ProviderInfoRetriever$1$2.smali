.class Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$2;->this$1:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$2;->this$1:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$callback:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;->onRetrievalFailed()V

    return-void
.end method
