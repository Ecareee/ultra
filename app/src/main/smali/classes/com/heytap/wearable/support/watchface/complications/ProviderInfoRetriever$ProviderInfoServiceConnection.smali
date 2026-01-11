.class final Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProviderInfoServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;-><init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$300(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$402(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;)Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$500(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$300(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;->this$0:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->access$402(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;)Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
