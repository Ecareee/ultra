.class public abstract Lm0/g;
.super Lm0/m;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public U:[I

.field public V:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationData;",
            ">;"
        }
    .end annotation
.end field

.field public W:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public X:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

.field public Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lm0/m;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lm0/g;->U:[I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lm0/g;->V:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lm0/g;->W:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm0/g;->Y:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm0/g;->Z:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final A(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lm0/g;->U:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[invalidateDrawable]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComplicationWatchFaceEngine"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lo0/a;

    invoke-virtual {p1}, Lo0/a;->f()V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public final z()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[initComplications]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComplicationWatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getCurrentStyleConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getComplicationConfigs()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lm0/g;->Y:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lm0/g;->U:[I

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lm0/g;->Y:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lm0/g;->V:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lm0/g;->Y:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lm0/g;->W:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lm0/g;->Y:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lm0/g;->Y:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;

    iget-object v3, p0, Lm0/g;->U:[I

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getId()I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lm0/g;->W:Landroid/util/SparseArray;

    iget-object v4, p0, Lm0/g;->U:[I

    aget v4, v4, v1

    .line 2
    new-instance v5, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;

    iget-object v6, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getFixedColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->setFixedColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->isChangeStyleEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->setChangeStyleEnabled(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->isChangeProviderEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->setChangeProviderEnabled(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->isBgEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->setBackgroundEnabled(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->isStub()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->setIsStub(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getProviderMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->setMode(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->build()Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    move-result-object v5

    iget-object v6, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getCurrentStyleConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getColor()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->setStyle(I)V

    .line 3
    iget v2, p0, Lm0/d;->u:I

    .line 4
    invoke-virtual {v5, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->setUiMode(I)V

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lm0/m;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.heytap.wearable.watchface.activity/com.heytap.wearable.watchface.impl.activity.WatchFaceServiceImpl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getComplicationConfigs()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;

    new-instance v5, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getId()I

    move-result v6

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getProviderId()I

    move-result v7

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getProviderMode()I

    move-result v4

    invoke-direct {v5, v6, v7, v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    iget-object v4, p0, Lm0/g;->Z:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lm0/m;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "WatchFaceEngine"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lm0/g;->Z:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lm0/m;->L:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lm0/m;->x()V

    iget-object v2, p0, Lm0/m;->L:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[registerAssetsComplicationAPs] mComplicationAPMap.size()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm0/m;->L:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_4
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lm0/g;->Y:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;

    new-instance v4, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getId()I

    move-result v5

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getProviderId()I

    move-result v6

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getProviderMode()I

    move-result v3

    invoke-direct {v4, v5, v6, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 9
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lm0/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lm0/m;->K:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lm0/m;->I:Ljava/util/ArrayList;

    iget-object v3, p0, Lm0/m;->K:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v2, p0, Lm0/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lm0/m;->J:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lm0/m;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lm0/m;->I:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lm0/m;->s(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lm0/m;->H:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[registerAssetsComplicationAPs] mComplicationIds.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm0/m;->H:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method
