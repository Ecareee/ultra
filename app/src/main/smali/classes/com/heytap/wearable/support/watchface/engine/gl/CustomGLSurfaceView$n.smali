.class public final Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$n;
.super Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final synthetic k:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;Z)V
    .locals 8

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$n;->k:Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v6, p2

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView$b;-><init>(Lcom/heytap/wearable/support/watchface/engine/gl/CustomGLSurfaceView;IIIIII)V

    return-void
.end method
