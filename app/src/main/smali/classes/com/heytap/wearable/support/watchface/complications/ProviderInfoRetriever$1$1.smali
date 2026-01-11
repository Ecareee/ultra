.class Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;
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

.field public final synthetic val$info:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;

.field public final synthetic val$watchFaceComplicationId:I


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;ILcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;->this$1:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;->val$watchFaceComplicationId:I

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;->val$info:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;->this$1:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;->val$callback:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;->val$watchFaceComplicationId:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1$1;->val$info:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;->onProviderInfoReceived(ILcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;)V

    return-void
.end method
