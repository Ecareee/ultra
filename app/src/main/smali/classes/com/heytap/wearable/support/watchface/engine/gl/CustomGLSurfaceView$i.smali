.class public final Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Ljava/lang/Runnable;

.field public t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

.field public u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->r:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->s:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->k:I

    iput v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->l:I

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->n:Z

    iput v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->m:I

    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->o:Z

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v1, p0

    new-instance v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    iget-object v2, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->u:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z

    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->o:Z

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move-object v5, v2

    move-object v11, v5

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :goto_1
    :try_start_1
    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->a:Z

    if-eqz v13, :cond_0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_1

    iget-object v11, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    goto/16 :goto_5

    :cond_1
    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d:Z

    iget-boolean v15, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->c:Z

    if-eq v13, v15, :cond_2

    iput-boolean v15, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    move v15, v0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f()V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e()V

    move v3, v0

    :cond_3
    if-eqz v15, :cond_4

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f()V

    :cond_4
    if-eqz v15, :cond_6

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z

    if-eqz v13, :cond_6

    iget-object v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    if-nez v13, :cond_5

    move v13, v0

    goto :goto_3

    :cond_5
    invoke-static {v13}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$900(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Z

    move-result v13

    :goto_3
    if-nez v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e()V

    :cond_6
    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e:Z

    if-nez v13, :cond_8

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->g:Z

    if-nez v13, :cond_8

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    if-eqz v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f()V

    :cond_7
    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->g:Z

    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    :cond_8
    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->g:Z

    if-eqz v13, :cond_9

    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->g:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    if-eqz v4, :cond_a

    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->o:Z

    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->p:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    move v4, v0

    :cond_a
    iget-object v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->s:Ljava/lang/Runnable;

    if-eqz v13, :cond_b

    iput-object v2, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->s:Ljava/lang/Runnable;

    move-object v5, v13

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b()Z

    move-result v13

    if-eqz v13, :cond_22

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-nez v13, :cond_c

    :try_start_4
    iget-object v6, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->d()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    move v6, v14

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    .line 1
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2
    throw v0

    :cond_c
    :goto_4
    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z

    if-eqz v13, :cond_d

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    if-nez v13, :cond_d

    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    move v7, v14

    move v8, v7

    move v9, v8

    :cond_d
    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    if-eqz v13, :cond_23

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->r:Z

    if-eqz v13, :cond_e

    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->o:Z

    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->r:Z

    move v7, v14

    move v9, v7

    :cond_e
    iput-boolean v0, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->n:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v13, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->o:Z

    if-eqz v13, :cond_f

    move v10, v14

    :cond_f
    :goto_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v11, :cond_10

    :try_start_6
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    move-object v11, v2

    goto/16 :goto_e

    :cond_10
    if-eqz v7, :cond_12

    iget-object v12, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    invoke-virtual {v12}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->a()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v7

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    :try_start_7
    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->j:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    move v7, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_11
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v12

    monitor-enter v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->j:Z

    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v12

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_12
    :goto_6
    if-eqz v8, :cond_17

    iget-object v8, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    .line 3
    iget-object v12, v8, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v12}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v12

    iget-object v8, v8, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    if-eqz v8, :cond_16

    invoke-static {v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$600(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-static {v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$600(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;

    move-result-object v12

    invoke-interface {v12}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$k;->a()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v12

    :cond_13
    invoke-static {v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$700(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result v13

    and-int/lit8 v13, v13, 0x3

    if-eqz v13, :cond_16

    invoke-static {v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$700(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result v13

    and-int/2addr v13, v14

    if-eqz v13, :cond_14

    move v13, v14

    goto :goto_7

    :cond_14
    move v13, v0

    :goto_7
    invoke-static {v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$700(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_15

    new-instance v8, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$l;

    invoke-direct {v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$l;-><init>()V

    goto :goto_8

    :cond_15
    move-object v8, v2

    :goto_8
    invoke-static {v12, v13, v8}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v12

    .line 4
    :cond_16
    check-cast v12, Ljavax/microedition/khronos/opengles/GL10;

    move v8, v0

    :cond_17
    if-eqz v6, :cond_19

    iget-object v6, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v6, :cond_18

    :try_start_b
    const-string v12, "onSurfaceCreated"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$1000(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;

    move-result-object v6

    iget-object v12, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    iget-object v12, v12, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;->c()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_9

    :catchall_3
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_18
    :goto_9
    move v6, v0

    :cond_19
    if-eqz v9, :cond_1b

    iget-object v9, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v9, :cond_1a

    :try_start_d
    const-string v12, "onSurfaceChanged"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$1000(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;

    move-result-object v9

    invoke-interface {v9}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_a

    :catchall_4
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_1a
    :goto_a
    move v9, v0

    :cond_1b
    iget-object v12, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v12, :cond_1d

    :try_start_f
    const-string v13, "onDrawFrame"

    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$1000(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;

    move-result-object v12

    invoke-interface {v12}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$m;->a()V

    if-eqz v5, :cond_1c

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object v5, v2

    :cond_1c
    :try_start_10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_b

    :catchall_5
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_1d
    :goto_b
    iget-object v12, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    .line 5
    iget-object v13, v12, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v15, v12, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, v12, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v13, v15, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    const/16 v13, 0x3000

    if-nez v0, :cond_1e

    iget-object v0, v12, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    goto :goto_c

    :cond_1e
    move v0, v13

    :goto_c
    if-eq v0, v13, :cond_20

    const/16 v12, 0x300e

    if-eq v0, v12, :cond_1f

    const-string v12, "GLThread"

    const-string v13, "eglSwapBuffers"

    .line 6
    invoke-static {v13, v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v12

    monitor-enter v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    iput-boolean v14, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v12

    goto :goto_d

    :catchall_6
    move-exception v0

    monitor-exit v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :cond_1f
    move v3, v14

    :cond_20
    :goto_d
    if-eqz v10, :cond_21

    move v4, v14

    const/4 v10, 0x0

    :cond_21
    :goto_e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_22
    if-eqz v5, :cond_23

    :try_start_13
    const-string v0, "CustomGLSurfaceView"

    const-string v13, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    move-object v5, v2

    :cond_23
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_7
    move-exception v0

    monitor-exit v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    monitor-enter v2

    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f()V

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v0
.end method

.method public final b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->l:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->n:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->m:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->a:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->d(I)V

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
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->m:I

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 6

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    .line 1
    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$400(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;

    move-result-object v1

    iget-object v3, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    check-cast v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultContextFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v1, "eglDestroyContex"

    .line 3
    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iput-object v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_2
    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v2, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_3
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->h:Z

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    return-void
.end method

.method public final f()V
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->i:Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->t:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    const-string v0, "GLThread "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;->a(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;)V

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;->a(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;)V

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catch_0
    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;->a(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;)V

    invoke-static {}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$800()Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$j;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$i;->e()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1
.end method
