.class Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;
.super Lcom/heytap/wearable/support/watchface/runtime/IWatchFaceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatchFaceCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/IWatchFaceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommandFromLauncher(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p1, "LauncherBridgeHelper"

    const-string p2, "[onReceiveCommandFromLauncher] bundle = null"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$000(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "LauncherBridgeHelper"

    const-string p2, "[onReceiveCommandFromLauncher] WatchFace has destroyed, does not response Launcher cmd"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "heytap.wearable.intent.action.watchface.ROLL_BACK_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "heytap.wearable.intent.action.watchface.ON_COMPLICATION_DATA_UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "heytap.wearable.intent.action.watchface.ON_LOCATION_DATA_UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "heytap.wearable.intent.action.watchface.ON_SEND_COMMON_DATA_MSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "heytap.wearable.intent.action.watchface.ALBUM_REPLACE_DIR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "heytap.wearable.intent.action.watchface.SYNC_WATCH_FACE_RESOURCES_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "heytap.wearable.intent.action.watchface.SYNC_ALBUM_FILE_MSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_7
    const-string v1, "heytap.wearable.intent.action.watchface.ON_BACK_FROM_EDIT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "heytap.wearable.intent.action.watchface.SET_UPDATE_WATCH_FACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v1, "heytap.wearable.intent.action.watchface.SET_SDCARD_UPDATE_WATCH_FACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_a
    const-string v1, "heytap.wearable.intent.action.watchface.ON_LIFECYCLE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :sswitch_b
    const-string v1, "heytap.wearable.intent.action.watchface.ON_BACKGROUND_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_c
    const-string v1, "heytap.wearable.intent.action.watchface.ON_EVENT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_d
    const-string v1, "heytap.wearable.intent.action.watchface.WATCH_FACE_RESOURCES_READY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_e
    const-string v1, "heytap.wearable.intent.action.watchface.WATCH_FACE_FILENAMES_FROM_MCU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xb

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p1

    invoke-interface {p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onSyncWatchFaceResourceCompleted()V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onSyncCommonDataFromMcu(Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onSyncAlbumFileMsg(Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onWatchFaceFileNamesFromMcu(Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onWatchFaceResourcesReady(Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onBackgroundChangedFromMcu(Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_6
    const-string p1, "extra_event_type"

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_7
    const-string p1, "dir_tag"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onAlbumDirReplaced(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    const-string p1, "extra_is_visible"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onNotifyRollBackTime(Z)V

    goto/16 :goto_2

    :pswitch_9
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p1

    invoke-interface {p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onNotifyBackFromEdit()V

    goto/16 :goto_2

    :pswitch_a
    const-string p1, "extra_watch_face_style_index"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onSDCardStyleUpdate(I)V

    goto :goto_2

    :pswitch_b
    const-string p1, "extra_watch_face_style_index"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onStyleUpdate(I)V

    goto :goto_2

    :pswitch_c
    const-string p1, "extra_location_data"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/runtime/protocol/location/LocationConfig;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onLocationDataUpdate(Lcom/heytap/wearable/support/watchface/runtime/protocol/location/LocationConfig;)V

    goto :goto_2

    :pswitch_d
    const-string p1, "extra_watch_face_complication_id"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "extra_complication_data"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onComplicationDataUpdate(ILandroid/os/Parcelable;)V

    goto :goto_2

    :pswitch_e
    const-string p1, "extra_lifecycle_state"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "extra_destroy_reason"

    invoke-virtual {p2, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "LauncherBridgeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON_LIFECYCLE_CHANGED : state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper$WatchFaceCallback;->this$0:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->access$100(Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;->onLifecycleChanged(II)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ecccf47 -> :sswitch_e
        -0x40b4a953 -> :sswitch_d
        -0x1dc20a30 -> :sswitch_c
        -0x1be41713 -> :sswitch_b
        -0xab8330b -> :sswitch_a
        0x15e58d58 -> :sswitch_9
        0x2740f470 -> :sswitch_8
        0x3eb27191 -> :sswitch_7
        0x3fc9b0bc -> :sswitch_6
        0x435587cd -> :sswitch_5
        0x54984d5c -> :sswitch_4
        0x57b4a453 -> :sswitch_3
        0x5ae1e35e -> :sswitch_2
        0x5ae31d67 -> :sswitch_1
        0x7bdc4b19 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
