.class public Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherBridgeHelper"


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private volatile mDestroyed:Z

.field private mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

.field private mLauncherCommand:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mDestroyed:Z

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCommand:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    :try_start_0
    new-instance p1, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;

    invoke-direct {p1, p0}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;-><init>(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)V

    invoke-interface {p2, p3, p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->addWatchFaceCallback(Ljava/lang/String;Lcom/heytap/wearable/support/watchface/runtime/IWatchFaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[LauncherBridgeHelper]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherBridgeHelper"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mDestroyed:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCommand:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    return-object p0
.end method


# virtual methods
.method public varargs activateComplications([I)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_watch_face_complication_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "extra_component_name"

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string v1, "heytap.wearable.intent.action.watchface.ACTIVATE_COMPLICATIONS"

    invoke-interface {p1, v1, v0}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "LauncherBridgeHelper"

    const-string v0, "[activateComplications] occurred exception"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public varargs deactivateComplications([I)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_watch_face_complication_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "extra_component_name"

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string v1, "heytap.wearable.intent.action.watchface.DEACTIVATE_COMPLICATIONS"

    invoke-interface {p1, v1, v0}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "LauncherBridgeHelper"

    const-string v0, "[deactivateComplications] occurred exception"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyFirstFrameFinished()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_component_name"

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz v1, :cond_0

    const-string v2, "heytap.wearable.intent.action.watchface.FIRST_FRAME_FINISHED"

    invoke-interface {v1, v2, v0}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LauncherBridgeHelper"

    const-string v1, "[notifyFirstFrameFinished] occurred exception"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyOnCreateFinished(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    const-string v1, "[notifyOnCreateFinished]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz v1, :cond_0

    const-string v1, "extra_component_name"

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    const-string v1, "heytap.wearable.intent.action.watchface.ON_CREATE_FINISHED_RESULT"

    invoke-interface {p1, v1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[notifyOnCreateFinished]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->removeWatchFaceCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LauncherBridgeHelper"

    const-string v2, "[onDestroy]:RemoteException:"

    .line 1
    invoke-static {v2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mDestroyed:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onModeChanged(I)V
    .locals 4

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_component_name"

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra_watch_face_mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string v2, "heytap.wearable.intent.action.watchface.ON_MODE_CHANGED"

    invoke-interface {p1, v2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchFaceLayout onModeChanged --> bundle="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "[onModeChanged]:RemoteException:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSendFileToMcu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    const-string v1, "[onSendFileToMcu]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "watchface_resource_path"

    invoke-virtual {v1, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SEND_FILE_PATH"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "style_index"

    invoke-virtual {v1, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    const-string p2, "heytap.wearable.intent.action.watchface.ON_SEND_FILE_PATH"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[onStyleChangedResult]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSendSetWfMsgToMcu(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    const-string v1, "[onSendSetWfMsgToMcu]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "style_index"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    const-string p2, "heytap.wearable.intent.action.watchface.ON_SEND_SET_WF_MSG"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[onSendSetWfMsgToMcu]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStyleChangedResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    const-string v1, "[onStyleChangedResult]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz v1, :cond_0

    const-string v1, "package_name"

    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    const-string v1, "heytap.wearable.intent.action.watchface.ON_STYLE_CHANGED_RESULT"

    invoke-interface {p1, v1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[onStyleChangedResult]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSyncFileListToMcu(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    const-string v1, "[onSyncFileListToMcu]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "album_file_names"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    const-string p2, "heytap.wearable.intent.action.watchface.ON_SEND_FILE_NAMES"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[onSyncFileListToMcu]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public varargs releaseBeforeOnDestroy(Z[I)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_watch_face_complication_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p2, "extra_component_name"

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_destroy_reason"

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseBeforeOnDestroy isDeleteWatchface:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string p2, "heytap.wearable.intent.action.watchface.DEACTIVATE_COMPLICATIONS"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "[deactivateComplications] occurred exception"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendPreview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_watch_face_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_file_path"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string p2, "heytap.wearable.intent.action.watchface.SEND_PREVIEW"

    invoke-interface {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[sendPreview] "

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherBridgeHelper"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultComplicationProvider(III)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_component_name"

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_watch_face_complication_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_complication_system_provider_id"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_complication_mode"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string p2, "heytap.wearable.intent.action.watchface.SET_DEFAULT_SYSTEM_PROVIDER"

    invoke-interface {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "LauncherBridgeHelper"

    const-string p2, "[setDefaultComplicationProvider] occurred exception"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultComplicationProvider(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz v0, :cond_0

    const-string v1, "heytap.wearable.intent.action.watchface.SET_DEFAULT_SYSTEM_PROVIDER"

    invoke-interface {v0, v1, p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "LauncherBridgeHelper"

    const-string v0, "[setDefaultComplicationProvider] occurred exception"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPresentWatchFace(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_component_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_style_index"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string p2, "heytap.wearable.intent.action.watchface.ON_PRESENT_WATCH_FACE_CHANGED"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[setPresentWatchFace] --> bundle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[setPresentWatchFace]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startEditActivity(Ljava/lang/String;Ljava/lang/String;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "class_name"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "watch_face_config"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string p2, "heytap.wearable.intent.action.watchface.ON_LONG_CLICK_JUMP_TO_EDIT"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WatchFaceLayout onLongClick --> bundle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[startEditActivity]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public syncBackgroundToMcu(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->syncBackgroundToMcu(Ljava/lang/String;II)V

    return-void
.end method

.method public syncBackgroundToMcu(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[syncBackgroundToMcu] --> backgroundIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_background_index"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-ltz p3, :cond_0

    const-string p1, "extra_style_index"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_1

    const-string p2, "heytap.wearable.intent.action.watchface.ON_BACKGROUND_CHANGED"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[syncBackgroundToMcu]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public syncCommonDataToMcu(Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[syncCommonDataToMcu] --> bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "common_data_bytes"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string p2, "heytap.wearable.intent.action.watchface.ON_SEND_COMMON_DATA_MSG"

    invoke-interface {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[syncBackgroundToMcu]:RemoteException:"

    .line 1
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public syncDeleteImageToMcu(Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSyncBackgroundToMcu] --> imageNamesSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_event_image_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_1

    const-string v2, "heytap.wearable.intent.action.watchface.ON_DELETE_WF_BG"

    invoke-interface {p1, v2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "[syncBackgroundToMcu]:RemoteException:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePreview(Ljava/lang/String;)V
    .locals 3

    const-string v0, "LauncherBridgeHelper"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->mLauncherCallback:Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    if-eqz p1, :cond_0

    const-string v2, "heytap.wearable.intent.action.watchface.ON_PREVIEW_UPDATE_CHANGED"

    invoke-interface {p1, v2, v1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;->onReceiveCommandFromWatchFace(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePreview] --> bundle="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "[updatePreview]:RemoteException:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
