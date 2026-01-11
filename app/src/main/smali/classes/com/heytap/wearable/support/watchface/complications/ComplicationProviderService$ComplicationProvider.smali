.class Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;
.super Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComplicationProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)V

    return-void
.end method

.method public static synthetic b(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->lambda$onComplicationActivated$0(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V

    return-void
.end method

.method public static synthetic c(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->lambda$onComplicationReplace$3(I)V

    return-void
.end method

.method public static synthetic d(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->lambda$onComplicationDeactivated$2(I)V

    return-void
.end method

.method public static synthetic e(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->lambda$onUpdate$1(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V

    return-void
.end method

.method public static synthetic f(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->lambda$onComplicationDeleteWatchface$4(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onComplicationActivated$0(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->onComplicationActivated(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V

    return-void
.end method

.method private synthetic lambda$onComplicationDeactivated$2(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->onComplicationDeactivated(I)V

    return-void
.end method

.method private synthetic lambda$onComplicationDeleteWatchface$4(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->onComplicationDeleteWatchface(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onComplicationReplace$3(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->onComplicationReplace(I)V

    return-void
.end method

.method private synthetic lambda$onUpdate$1(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->onComplicationUpdate(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V

    return-void
.end method


# virtual methods
.method public onComplicationActivated(IILandroid/os/IBinder;)V
    .locals 7

    new-instance v4, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    invoke-static {p3}, Lcom/heytap/wearable/support/watchface/complications/IComplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;

    move-result-object p3

    invoke-direct {v4, p3}, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;-><init>(Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;)V

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->access$100(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;

    invoke-direct {v1, p1, p2, v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;-><init>(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-static {p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/os/Handler;

    move-result-object p3

    new-instance v6, Lcom/heytap/wearable/support/watchface/complications/b;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/heytap/wearable/support/watchface/complications/b;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;I)V

    invoke-virtual {p3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onComplicationDeactivated(I)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->access$100(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/heytap/wearable/support/watchface/complications/a;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onComplicationDeleteWatchface(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/c;

    invoke-direct {v1, p0, p1}, Lcom/heytap/wearable/support/watchface/complications/c;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComplicationReplace(I)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/heytap/wearable/support/watchface/complications/a;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdate(IILandroid/os/IBinder;)V
    .locals 7

    new-instance v4, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    invoke-static {p3}, Lcom/heytap/wearable/support/watchface/complications/IComplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;

    move-result-object p3

    invoke-direct {v4, p3}, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;-><init>(Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;)V

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->this$0:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;

    invoke-static {p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/os/Handler;

    move-result-object p3

    new-instance v6, Lcom/heytap/wearable/support/watchface/complications/b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/heytap/wearable/support/watchface/complications/b;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;I)V

    invoke-virtual {p3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
