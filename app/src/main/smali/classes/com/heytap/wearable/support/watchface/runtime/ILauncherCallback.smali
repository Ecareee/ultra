.class public interface abstract Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract addWatchFaceCallback(Ljava/lang/String;Lcom/heytap/wearable/support/watchface/runtime/IWatchFaceCallback;)V
.end method

.method public abstract onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract removeWatchFaceCallback(Ljava/lang/String;)V
.end method
