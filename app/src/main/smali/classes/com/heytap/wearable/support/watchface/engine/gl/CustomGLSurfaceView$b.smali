.class public Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;
.super Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final synthetic j:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;IIIIII)V
    .locals 4

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->j:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v0, v2

    const/4 v2, 0x5

    aput p4, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p5, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x3025

    aput v3, v0, v2

    const/16 v2, 0x9

    aput p6, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x3026

    aput v3, v0, v2

    const/16 v2, 0xb

    aput p7, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x3038

    aput v3, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;-><init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;[I)V

    new-array p1, v1, [I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->c:[I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->d:I

    iput p3, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->e:I

    iput p4, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->f:I

    iput p5, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->g:I

    iput p6, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->h:I

    iput p7, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->i:I

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->c:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;->c:[I

    aget p1, p1, p2

    return p1

    :cond_0
    return p2
.end method
