.class public abstract Lm0/m;
.super Lm0/d;
.source "SourceFile"


# instance fields
.field public H:[I

.field public I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;",
            ">;"
        }
    .end annotation
.end field

.field public J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;",
            ">;"
        }
    .end annotation
.end field

.field public K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:Landroid/os/HandlerThread;

.field public R:Landroid/os/Handler;

.field public S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

.field public T:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lm0/d;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array v0, p1, [I

    iput-object v0, p0, Lm0/m;->H:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/m;->I:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/m;->J:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/m;->K:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm0/m;->L:Ljava/util/HashMap;

    iput-boolean p1, p0, Lm0/m;->N:Z

    iput-boolean p1, p0, Lm0/m;->O:Z

    const/4 p1, -0x1

    iput p1, p0, Lm0/m;->P:I

    new-instance p1, Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    invoke-direct {p1, p0}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;-><init>(Lm0/m;)V

    iput-object p1, p0, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm0/m;->T:Z

    return-void
.end method


# virtual methods
.method public final q()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[activateComplications]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lm0/m;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.wearable.watchface.activity/com.heytap.wearable.watchface.impl.activity.WatchFaceServiceImpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm0/m;->L:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v3, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "extra_component_name"

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "extra_watch_face_style_index"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getComplicationId()I

    move-result v2

    const-string v5, "extra_watch_face_complication_id"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getProviderId()I

    move-result v2

    const-string v5, "extra_complication_system_provider_id"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getMode()I

    move-result v2

    const-string v3, "extra_complication_mode"

    invoke-virtual {v4, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lm0/d;->b:Lm0/p;

    invoke-virtual {v2, v4}, Lm0/p;->setDefaultComplicationProvider(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm0/m;->I:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getComplicationId()I

    move-result v2

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getProviderId()I

    move-result v3

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getMode()I

    move-result v1

    .line 2
    iget-object v4, p0, Lm0/d;->b:Lm0/p;

    if-eqz v4, :cond_2

    .line 3
    iget-object v4, v4, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {v4, v2, v3, v1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->setDefaultComplicationProvider(III)V

    goto :goto_1

    .line 4
    :cond_3
    iget-object v0, p0, Lm0/m;->H:[I

    .line 5
    iget-object v1, p0, Lm0/d;->b:Lm0/p;

    if-eqz v1, :cond_4

    .line 6
    iget-object v1, v1, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->activateComplications([I)V

    :cond_4
    return-void
.end method

.method public final r()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[deactivateComplications]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/m;->H:[I

    .line 1
    iget-object v1, p0, Lm0/d;->b:Lm0/p;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->deactivateComplications([I)V

    :cond_0
    return-void
.end method

.method public final s(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [I

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getComplicationId()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm0/d;->b:Lm0/p;

    invoke-virtual {v0}, Lm0/p;->getWatchFaceKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [onScreenshotModeChange] enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lm0/d;->s:Z

    .line 2
    iget-object v0, p0, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;->onScreenshotModeChange(Z)V

    return-void
.end method

.method final v(I)V
    .locals 3

    iget-boolean v0, p0, Lm0/m;->O:Z

    const-string v1, "WatchFaceEngine"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[onStyleUpdate] mSDCardStyleUpdate is true! index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/m;->N:Z

    iput p1, p0, Lm0/m;->P:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[onStyleUpdate] index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->setCurrentStyleIndex(I)V

    invoke-virtual {p0}, Lm0/m;->w()V

    return-void
.end method

.method public final w()V
    .locals 7

    .line 1
    move-object v0, p0

    check-cast v0, Lm0/g;

    .line 2
    iget-object v1, v0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[onStyleChanged] mWatchFaceConfig is null, return!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComplicationWatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lm0/m;->r()V

    invoke-virtual {v0}, Lm0/g;->z()V

    invoke-virtual {v0}, Lm0/m;->q()V

    .line 3
    iget-object v1, v0, Lm0/g;->U:[I

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    iget-object v6, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    iget-object v6, v0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getCurrentStyleConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->setStyle(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lm0/d;->f()V

    invoke-virtual {p0}, Lm0/d;->g()V

    .line 5
    iget-object v0, p0, Lm0/m;->R:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, Lm0/j;

    invoke-direct {v1, p0, v2}, Lm0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final x()V
    .locals 7

    iget-object v0, p0, Lm0/m;->K:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lm0/m;->K:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    new-instance v4, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getComplicationId()I

    move-result v5

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getProviderId()I

    move-result v6

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->getMode()I

    move-result v3

    invoke-direct {v4, v5, v6, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    iget-object v3, p0, Lm0/m;->L:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm0/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lm0/m;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lm0/m;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lm0/m;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iput-object p1, p0, Lm0/m;->K:Ljava/util/List;

    invoke-virtual {p0}, Lm0/m;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.wearable.watchface.activity/com.heytap.wearable.watchface.impl.activity.WatchFaceServiceImpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lm0/m;->x()V

    :cond_2
    iget-object v0, p0, Lm0/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lm0/m;->I:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lm0/m;->s(Ljava/util/List;)[I

    move-result-object p1

    iput-object p1, p0, Lm0/m;->H:[I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[registerComplicationAPs] mComplicationIds.length="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lm0/m;->H:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchFaceEngine"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
