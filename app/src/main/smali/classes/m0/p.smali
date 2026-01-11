.class public abstract Lm0/p;
.super Lcom/heytap/wearable/support/watchface/runtime/BaseWatchFaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;


# static fields
.field public static final synthetic s:I


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lm0/m;

.field public d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

.field public e:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

.field public f:Ljava/lang/String;

.field public g:Landroid/animation/ValueAnimator;

.field public h:Landroid/animation/ValueAnimator;

.field public i:Z

.field public j:Z

.field public k:F

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Rect;

.field public o:Landroid/os/HandlerThread;

.field public p:Landroid/os/Handler;

.field public q:Lm0/o;

.field public r:Lm0/p$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/runtime/BaseWatchFaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lm0/o;

    invoke-direct {v0, p0}, Lm0/o;-><init>(Lm0/p;)V

    iput-object v0, p0, Lm0/p;->q:Lm0/o;

    new-instance v0, Lm0/p$a;

    invoke-direct {v0, p0}, Lm0/p$a;-><init>(Lm0/p;)V

    iput-object v0, p0, Lm0/p;->r:Lm0/p$a;

    invoke-virtual {p0}, Lm0/p;->getWatchFaceServiceClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lm0/p;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->getInstance()Lcom/heytap/wearable/support/watchface/edit/ConfigManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lm0/p;->e:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    .line 3
    iput-object p1, p0, Lm0/p;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "WatchFaceLayout"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lm0/p;->o:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lm0/p;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lm0/p;->q:Lm0/o;

    invoke-direct {p1, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lm0/p;->p:Landroid/os/Handler;

    .line 5
    iget-object p1, p0, Lm0/p;->e:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->setCurrentStyleIndex(I)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object p1, p0, Lm0/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lq0/f;->a(Landroid/content/Context;)Lq0/f;

    move-result-object p1

    iget-object p2, p0, Lm0/p;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lq0/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Debuggable, registerReceiver"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "heywatchface.action.SCREENSHOT_MODE_ENABLE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "heywatchface.action.SCREENSHOT_MODE_DISABLE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lm0/p;->b:Landroid/content/Context;

    invoke-static {p2}, Lq0/f;->a(Landroid/content/Context;)Lq0/f;

    move-result-object p2

    iget-object v0, p0, Lm0/p;->r:Lm0/p$a;

    .line 6
    iget-object p2, p2, Lq0/f;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    const-string p1, "[registerLocalReceiver]:context is null"

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "[registerReceiver]:exception:"

    .line 7
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "HostApp"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lm0/m;
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[dispatchTouchEvent] ACTION_DOWN"

    :goto_0
    invoke-static {v0, v1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[dispatchTouchEvent] ACTION_UP"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getWatchFaceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm0/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getWatchFaceServiceClassName()Ljava/lang/String;
.end method

.method public final onAlbumDirReplaced(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onBackgroundChangedFromMcu(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onComplicationDataUpdate(ILandroid/os/Parcelable;)V
    .locals 6

    iget-object v0, p0, Lm0/p;->c:Lm0/m;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    check-cast v0, Lm0/g;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[onComplicationDataUpdate] complicationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  complicationData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatchFaceEngine"

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;->onComplicationDataUpdate(ILcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    const-string v1, "ComplicationWatchFaceEngine"

    if-nez p2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[onComplicationDataUpdate] complicationData is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lm0/g;->U:[I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 3
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    aget v5, v2, v4

    if-ne v5, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[onComplicationDataUpdate] mComplicationDrawableIds.length = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lm0/g;->U:[I

    array-length v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " complicationId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p1, v0, Lm0/g;->U:[I

    array-length p1, p1

    if-ge v3, p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[onComplicationDataUpdate] mComplicationDrawableIds["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lm0/g;->U:[I

    aget p2, p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    .line 6
    iget-object v2, v0, Lm0/g;->V:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[onComplicationDataUpdate] mComplicationDrawables.size() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object p1, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[onComplicationDataUpdate] mComplicationDrawables.keyAt("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    :cond_6
    check-cast v0, Lo0/a;

    .line 7
    invoke-virtual {v0}, Lo0/a;->f()V

    :cond_7
    :goto_5
    return-void
.end method

.method public final onEvent(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lm0/p;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lm0/p;->c:Lm0/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[onGenericMotionEvent] mEngine == null"

    invoke-static {p1, v0}, Lm0/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    iget-object p1, p0, Lm0/p;->c:Lm0/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v1
.end method

.method public final onLifecycleChanged(II)V
    .locals 2

    iget-object v0, p0, Lm0/p;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onLocationDataUpdate(Lcom/heytap/wearable/support/watchface/runtime/protocol/location/LocationConfig;)V
    .locals 2

    iget-object v0, p0, Lm0/p;->c:Lm0/m;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[onLocationDataUpdate] complicationData="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchFaceEngine"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lm0/p;->n:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lm0/p;->l:I

    iget v2, p0, Lm0/p;->m:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "LongClickRect "

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lm0/p;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but down is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/p;->l:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/p;->m:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WatchFaceLayout"

    .line 3
    invoke-static {v1, p1}, Lm0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "WF"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Lq0/e;->a()Lq0/e;

    move-result-object v1

    iget-object v2, p0, Lm0/p;->f:Ljava/lang/String;

    .line 5
    iget-object v1, v1, Lq0/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/e$a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lq0/e$a;->a()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lq0/e;->a()Lq0/e;

    move-result-object v0

    iget-object v1, p0, Lm0/p;->f:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lq0/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    iget-object v1, p0, Lm0/p;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lm0/p;->getWatchFaceServiceClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lm0/p;->e:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->startEditActivity(Ljava/lang/String;Ljava/lang/String;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)V

    :goto_0
    return p1
.end method

.method public final onNotifyBackFromEdit()V
    .locals 2

    invoke-static {}, Lq0/e;->a()Lq0/e;

    move-result-object v0

    iget-object v1, p0, Lm0/p;->f:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lq0/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lq0/e$a;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, Lm0/p;->c:Lm0/m;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onNotifyRollBackTime(Z)V
    .locals 1

    invoke-static {}, Lq0/e;->a()Lq0/e;

    move-result-object p1

    iget-object v0, p0, Lm0/p;->f:Ljava/lang/String;

    iget-object p1, p1, Lq0/e;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq0/e$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lq0/e$a;->b()V

    :cond_0
    return-void
.end method

.method public final onSDCardStyleUpdate(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSDCardStyleUpdate index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceLayout"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/p;->p:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onStyleUpdate(I)V
    .locals 3

    iget-object v0, p0, Lm0/p;->p:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onSyncAlbumFileMsg(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onSyncCommonDataFromMcu(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onSyncWatchFaceResourceCompleted()V
    .locals 1

    iget-object v0, p0, Lm0/p;->c:Lm0/m;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lm0/p;->l:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lm0/p;->m:I

    :cond_0
    iget-object v0, p0, Lm0/p;->c:Lm0/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, v0, Lm0/d;->k:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget v2, v0, Lm0/d;->l:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget v8, v0, Lm0/d;->k:F

    cmpl-float p1, p1, v8

    if-nez p1, :cond_4

    iget p1, v0, Lm0/d;->l:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_4

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x190

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v0, Lm0/d;->k:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v0, Lm0/d;->l:F

    :cond_4
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {v0, p1, v2}, Lm0/d;->c(II)V

    :cond_5
    return v1
.end method

.method public final onWatchFaceFileNamesFromMcu(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onWatchFaceResourcesReady(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setDefaultComplicationProvider(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->setDefaultComplicationProvider(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLongClickRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lm0/p;->n:Landroid/graphics/Rect;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    instance-of p1, p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;

    move-result-object p1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    iget-object v1, p0, Lm0/p;->f:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;-><init>(Lcom/heytap/wearable/support/watchface/runtime/ILauncherCommand;Lcom/heytap/wearable/support/watchface/runtime/ILauncherCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    :cond_0
    return-void
.end method
