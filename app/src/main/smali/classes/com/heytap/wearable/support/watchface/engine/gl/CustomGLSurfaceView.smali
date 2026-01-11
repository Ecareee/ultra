.class public Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$l;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$n;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$d;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$c;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;,
        Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CustomGLSurfaceView"

.field private static final sGLThreadManager:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;

.field private mEGLWindowSurfaceFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;

.field private mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

.field private mGLWrapper:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->sGLThreadManager:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->init()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mRenderer:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I
    .locals 0

    iget p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLContextClientVersion:I

    return p0
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLConfigChooser:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLContextFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLWrapper:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I
    .locals 0

    iget p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method public static synthetic access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->sGLThreadManager:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method private checkRenderThreadState()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->m:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mRenderer:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget v0, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->m:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    new-instance v2, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d(I)V

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mDetached:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->c()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mDetached:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->c:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->c:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->n:Z

    iput-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->p:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestRender()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->n:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    new-instance v8, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;-><init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->setEGLConfigChooser(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLConfigChooser:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$n;

    invoke-direct {v0, p0, p1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$n;-><init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->setEGLConfigChooser(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->checkRenderThreadState()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLContextFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;

    return-void
.end method

.method public setGLWrapper(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLWrapper:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d(I)V

    return-void
.end method

.method public setRenderer(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;)V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLConfigChooser:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$n;-><init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLConfigChooser:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLContextFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$c;

    invoke-direct {v0, p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$c;-><init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLContextFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$d;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$d;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;

    :cond_2
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mRenderer:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;

    new-instance p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iput p3, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->k:I

    iput p4, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->l:I

    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->r:Z

    iput-boolean p3, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->n:Z

    const/4 p4, 0x0

    iput-boolean p4, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->p:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    monitor-exit p2

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    move v0, p3

    goto :goto_1

    :cond_2
    move v0, p4

    :goto_1
    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->j:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->mGLThread:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->o:Z

    iput-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->n:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->p:Z

    iput-object p2, p1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->s:Ljava/lang/Runnable;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public windowStopped(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[windowStopped] stopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomGLSurfaceView"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
