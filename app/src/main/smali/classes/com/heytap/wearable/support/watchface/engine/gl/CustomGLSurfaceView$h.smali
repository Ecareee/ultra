.class public final Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljavax/microedition/khronos/egl/EGL10;

.field public c:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public d:Ljavax/microedition/khronos/egl/EGLSurface;

.field public e:Ljavax/microedition/khronos/egl/EGLConfig;

.field public f:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "EGL_CONTEXT_LOST"

    goto :goto_1

    :pswitch_1
    const-string p0, "EGL_BAD_SURFACE"

    goto :goto_1

    :pswitch_2
    const-string p0, "EGL_BAD_PARAMETER"

    goto :goto_1

    :pswitch_3
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_1

    :pswitch_4
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_1

    :pswitch_5
    const-string p0, "EGL_BAD_MATCH"

    goto :goto_1

    :pswitch_6
    const-string p0, "EGL_BAD_DISPLAY"

    goto :goto_1

    :pswitch_7
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_1

    :pswitch_8
    const-string p0, "EGL_BAD_CONTEXT"

    goto :goto_1

    :pswitch_9
    const-string p0, "EGL_BAD_CONFIG"

    goto :goto_1

    :pswitch_a
    const-string p0, "EGL_BAD_ATTRIBUTE"

    goto :goto_1

    :pswitch_b
    const-string p0, "EGL_BAD_ALLOC"

    goto :goto_1

    :pswitch_c
    const-string p0, "EGL_BAD_ACCESS"

    goto :goto_1

    :pswitch_d
    const-string p0, "EGL_NOT_INITIALIZED"

    goto :goto_1

    :pswitch_e
    const-string p0, "EGL_SUCCESS"

    goto :goto_1

    :goto_0
    const-string p0, "0x"

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$500(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;

    move-result-object v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    check-cast v2, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$d;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    invoke-interface {v3, v4, v5, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CustomGLSurfaceView"

    const-string v3, "eglCreateWindowSurface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v1, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const-string v2, "eglMakeCurrent"

    .line 3
    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EGLHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x300b

    if-ne v1, v2, :cond_4

    const-string v1, "EglHelper"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$500(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$g;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    check-cast v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v4, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iput-object v3, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v3, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    goto/16 :goto_3

    :cond_0
    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$300(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;

    move-result-object v4

    iget-object v11, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v12, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    check-cast v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;

    const/4 v13, 0x1

    new-array v14, v13, [I

    .line 1
    iget-object v7, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;->a:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v11

    move-object v6, v12

    move-object v10, v14

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v15, 0x0

    aget v10, v14, v15

    if-lez v10, :cond_7

    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v7, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;->a:[I

    move-object v5, v11

    move-object v6, v12

    move-object v8, v9

    move-object/from16 v16, v9

    move v9, v10

    move v3, v10

    move-object v10, v14

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_6

    check-cast v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;

    move v5, v15

    :goto_0
    if-ge v5, v3, :cond_2

    .line 2
    aget-object v6, v16, v5

    const/16 v7, 0x3025

    invoke-virtual {v4, v11, v12, v6, v7}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v7

    const/16 v8, 0x3026

    invoke-virtual {v4, v11, v12, v6, v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    iget v9, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->h:I

    if-lt v7, v9, :cond_1

    iget v7, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->i:I

    if-lt v8, v7, :cond_1

    const/16 v7, 0x3024

    invoke-virtual {v4, v11, v12, v6, v7}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v7

    const/16 v8, 0x3023

    invoke-virtual {v4, v11, v12, v6, v8}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    const/16 v9, 0x3022

    invoke-virtual {v4, v11, v12, v6, v9}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v9

    const/16 v10, 0x3021

    invoke-virtual {v4, v11, v12, v6, v10}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v10

    iget v14, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->d:I

    if-ne v7, v14, :cond_1

    iget v7, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->e:I

    if-ne v8, v7, :cond_1

    iget v7, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->f:I

    if-ne v9, v7, :cond_1

    iget v7, v4, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->g:I

    if-ne v10, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    .line 3
    iput-object v6, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$400(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$f;

    move-result-object v1

    iget-object v3, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    check-cast v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$c;

    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x3098

    aput v7, v6, v15

    iget-object v7, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$c;->a:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    invoke-static {v7}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$200(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result v7

    aput v7, v6, v13

    const/16 v7, 0x3038

    aput v7, v6, v2

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, v1, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$c;->a:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$200(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v3, v4, v5, v2, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_3
    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_4

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    .line 6
    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const-string v2, "createContext"

    .line 7
    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$h;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No config chosen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig#2 failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
