.class public Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/IComplicationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onComplicationActivated(IILandroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onComplicationDeactivated(I)V
    .locals 0

    return-void
.end method

.method public onComplicationDeleteWatchface(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onComplicationReplace(I)V
    .locals 0

    return-void
.end method

.method public onUpdate(IILandroid/os/IBinder;)V
    .locals 0

    return-void
.end method
