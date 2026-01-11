.class public interface abstract Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider$Stub;,
        Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplicationActivated(IILandroid/os/IBinder;)V
.end method

.method public abstract onComplicationDeactivated(I)V
.end method

.method public abstract onComplicationDeleteWatchface(Ljava/lang/String;)V
.end method

.method public abstract onComplicationReplace(I)V
.end method

.method public abstract onUpdate(IILandroid/os/IBinder;)V
.end method
