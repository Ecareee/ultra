.class public Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;,
        Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;
    }
.end annotation


# static fields
.field public static final ACTION_GET_COMPLICATION_CONFIG:Ljava/lang/String; = "com.heytap.wearable.support.watchface.complications.ACTION_GET_COMPLICATION_CONFIG"

.field private static final PROVIDER_INFO_SERVICE_CLASS:Ljava/lang/String; = "com.heytap.wearable.launcher.watchface.complications.ProviderInfoService"

.field private static final PROVIDER_INFO_SERVICE_FLAGS:I = 0x1

.field private static final PROVIDER_INFO_SERVICE_PACKAGE:Ljava/lang/String; = "com.heytap.wearable.launcher"

.field private static final TAG:Ljava/lang/String; = "ProviderInfoRetriever"

.field private static final TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private final mConn:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mService:Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;

.field private final mServiceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$ProviderInfoServiceConnection;-><init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mServiceLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Ljava/lang/String;[I)[Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->doRetrieveInfo(Ljava/lang/String;[I)[Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;)Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mService:Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private varargs doRetrieveInfo(Ljava/lang/String;[I)[Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "ProviderInfoRetriever"

    const-string p2, "[doRetrieveInfo] Timeout while waiting for service binding."

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mService:Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;->getProviderInfos(Ljava/lang/String;[I)[Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "ProviderInfoRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doRetrieveInfo] RemoteException from ProviderInfoService err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catch_1
    move-exception p1

    const-string p2, "ProviderInfoRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doRetrieveInfo] Interrupted while waiting for service binding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.heytap.wearable.support.watchface.complications.ACTION_GET_COMPLICATION_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.heytap.wearable.launcher"

    const-string v2, "com.heytap.wearable.launcher.watchface.complications.ProviderInfoService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mService:Lcom/heytap/wearable/support/watchface/complications/IProviderInfoService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public varargs retrieveProviderInfo(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;Ljava/lang/String;[I)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$1;-><init>(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;Ljava/lang/String;[ILcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
