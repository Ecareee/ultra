.class public Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors$DiskIOThreadExecutor;,
        Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors$MainThreadExecutor;
    }
.end annotation


# static fields
.field private static final THREAD_COUNT:I = 0x3

.field private static volatile sInstance:Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;


# instance fields
.field private final mDiskIO:Ljava/util/concurrent/Executor;

.field private final mMainThread:Ljava/util/concurrent/Executor;

.field private final mNetworkIO:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors$DiskIOThreadExecutor;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors$DiskIOThreadExecutor;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors$MainThreadExecutor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors$MainThreadExecutor;-><init>(Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors$1;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mDiskIO:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mNetworkIO:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mMainThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getInstance()Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;
    .locals 2

    sget-object v0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->sInstance:Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    if-nez v0, :cond_1

    const-class v0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->sInstance:Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    if-nez v1, :cond_0

    new-instance v1, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    invoke-direct {v1}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;-><init>()V

    sput-object v1, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->sInstance:Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->sInstance:Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    return-object v0
.end method


# virtual methods
.method public diskIO()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mDiskIO:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public mainThread()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mMainThread:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public networkIO()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mNetworkIO:Ljava/util/concurrent/Executor;

    return-object v0
.end method
