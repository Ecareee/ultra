.class public Lcom/heytap/wearable/support/watchface/gl/animation/Animation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mListener:Lcom/heytap/wearable/support/watchface/gl/animation/UpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;->mListener:Lcom/heytap/wearable/support/watchface/gl/animation/UpdateListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/animation/UpdateListener;->onUpdateEnd()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/heytap/wearable/support/watchface/gl/animation/UpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;->mListener:Lcom/heytap/wearable/support/watchface/gl/animation/UpdateListener;

    return-void
.end method
