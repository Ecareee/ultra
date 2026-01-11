.class public abstract Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;
    }
.end annotation


# static fields
.field public static final ACTION_COMPLICATION_UPDATE_REQUEST:Ljava/lang/String; = "heytap.wearable.intent.action.complication.ACTION_COMPLICATION_UPDATE_REQUEST"

.field public static final ACTION_COMPLICATION_UPDATE_REQUEST_NEW:Ljava/lang/String; = "heytap.wearable.intent.action.complication.ACTION_COMPLICATION_UPDATE_REQUEST_NEW"

.field public static final METADATA_KEY_ALIAS_PKG:Ljava/lang/String; = "heytap.metadata.complication.ALIAS_PKG"

.field public static final METADATA_KEY_PROVIDER_CONFIG_ACTION:Ljava/lang/String; = "heytap.metadata.complication.PROVIDER_CONFIG_ACTION"

.field public static final METADATA_KEY_PROVIDER_KEEP_ALIVE:Ljava/lang/String; = "heytap.metadata.complication.PROVIDER_KEEP_ALIVE"

.field public static final METADATA_KEY_PROVIDER_PREVIEW_LARGE:Ljava/lang/String; = "heytap.wearable.complication.PREVIEW_LARGE"

.field public static final METADATA_KEY_PROVIDER_PREVIEW_LARGE_SINGLE:Ljava/lang/String; = "heytap.wearable.complication.PREVIEW_LARGE_SINGLE"

.field public static final METADATA_KEY_PROVIDER_PREVIEW_MEDIUM:Ljava/lang/String; = "heytap.wearable.complication.PREVIEW_MEDIUM"

.field public static final METADATA_KEY_PROVIDER_PREVIEW_MEDIUM_SINGLE:Ljava/lang/String; = "heytap.wearable.complication.PREVIEW_MEDIUM_SINGLE"

.field public static final METADATA_KEY_PROVIDER_PREVIEW_SMALL:Ljava/lang/String; = "heytap.wearable.complication.PREVIEW_SMALL"

.field public static final METADATA_KEY_PROVIDER_PREVIEW_SMALL_SINGLE:Ljava/lang/String; = "heytap.wearable.complication.PREVIEW_SMALL_SINGLE"

.field public static final METADATA_KEY_SUPPORTED_MODES:Ljava/lang/String; = "heytap.metadata.complication.SUPPORTED_MODES"

.field public static final METADATA_KEY_SUPPORT_APP_WIDGET_STYLE_VERSION:Ljava/lang/String; = "heytap.metadata.complication.APP_WIDGET_STYLE_VERSION"

.field public static final METADATA_KEY_SUPPORT_VERSION:Ljava/lang/String; = "heytap.metadata.complication.SUPPORTED_WIDGET_VERSION"

.field public static final METADATA_KEY_UPDATE_PERIOD_SECONDS:Ljava/lang/String; = "heytap.metadata.complication.UPDATE_PERIOD_SECONDS"

.field private static final TAG:Ljava/lang/String; = "ComplicationProviderService"


# instance fields
.field private mActiveComplicationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mProvider:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mActiveComplicationInfo:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mActiveComplicationInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getActiveComplications()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mActiveComplicationInfo:Landroid/util/SparseArray;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "[onBind] "

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " android version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComplicationProviderService"

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "heytap.wearable.intent.action.complication.ACTION_COMPLICATION_UPDATE_REQUEST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "heytap.wearable.intent.action.complication.ACTION_COMPLICATION_UPDATE_REQUEST_NEW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mProvider:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    if-nez p1, :cond_3

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    invoke-direct {p1, p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$1;)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mProvider:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    :cond_3
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mProvider:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public onComplicationActivated(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 1

    const-string p3, "[onComplicationActivated] "

    .line 1
    invoke-static {p3}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " complicationId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mode="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ComplicationProviderService"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplicationDeactivated(I)V
    .locals 2

    const-string v0, "[onComplicationDeactivated] "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " complicationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComplicationProviderService"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplicationDeleteWatchface(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[onComplicationDeleteWatchface] "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComplicationProviderService"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplicationReplace(I)V
    .locals 2

    const-string v0, "[onComplicationReplace] "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " oldId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComplicationProviderService"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onComplicationUpdate(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;->mContext:Landroid/content/Context;

    const-string v0, "[onCreate] "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComplicationProviderService"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "[onDestroy] "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComplicationProviderService"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "[onUnbind] "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComplicationProviderService"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
