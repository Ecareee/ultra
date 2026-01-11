.class public abstract Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public a:[I

.field public final synthetic b:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;[I)V
    .locals 5

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;->b:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$200(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$200(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x3040

    aput p2, v2, v3

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;->access$200(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;)I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x4

    aput p1, v2, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x40

    aput p1, v2, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x3038

    aput p1, v2, v0

    move-object p2, v2

    .line 2
    :goto_1
    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$a;->a:[I

    return-void
.end method
