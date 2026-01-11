.class public final synthetic Lm0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lm0/p;


# direct methods
.method public synthetic constructor <init>(Lm0/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/o;->a:Lm0/p;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget-object v0, p0, Lm0/o;->a:Lm0/p;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v6, "WatchFaceEngine"

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v1, v2, :cond_b

    if-eq v1, v3, :cond_2

    if-eq v1, v7, :cond_1

    if-eq v1, v5, :cond_0

    goto/16 :goto_a

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget-object v0, v0, Lm0/p;->c:Lm0/m;

    if-eqz v0, :cond_20

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[onSDCardStyleUpdate] index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, v0, Lm0/m;->O:Z

    iget-object v1, v0, Lm0/m;->R:Landroid/os/Handler;

    if-eqz v1, :cond_20

    new-instance v2, Lm0/k;

    invoke-direct {v2, v0, p1}, Lm0/k;-><init>(Lm0/m;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 4
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 5
    iget-object v0, v0, Lm0/p;->c:Lm0/m;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Lm0/m;->v(I)V

    goto/16 :goto_a

    .line 6
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 7
    iget-object v0, v0, Lm0/p;->c:Lm0/m;

    if-eqz v0, :cond_20

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    .line 8
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[handleAodUpdate]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lm0/d;->D:[[F

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lm0/d;->d()[[F

    move-result-object v1

    iput-object v1, v0, Lm0/d;->D:[[F

    .line 10
    aget-object v1, v1, v8

    array-length v1, v1

    if-ne v1, v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v8

    :goto_0
    if-nez v1, :cond_4

    .line 11
    iget-object v1, v0, Lm0/d;->C:[[F

    iput-object v1, v0, Lm0/d;->D:[[F

    :cond_4
    iget v1, v0, Lm0/d;->B:I

    iget-object v5, v0, Lm0/d;->D:[[F

    array-length v5, v5

    sub-int/2addr v5, v2

    if-lt v1, v5, :cond_5

    move v1, v8

    goto :goto_1

    :cond_5
    add-int/2addr v1, v2

    :goto_1
    iput v1, v0, Lm0/d;->B:I

    .line 12
    invoke-virtual {v0}, Lm0/d;->e()V

    :pswitch_1
    const-string v1, "extra_log_click_rect"

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v1, v8

    aget v2, v1, v2

    aget v3, v1, v3

    aget v1, v1, v7

    invoke-direct {v4, v5, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set long click rect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lm0/d;->b:Lm0/p;

    invoke-virtual {v0, v4}, Lm0/p;->setLongClickRect(Landroid/graphics/Rect;)V

    :pswitch_2
    const-string v0, "extra_is_visible"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    goto/16 :goto_a

    :pswitch_3
    const-string v1, "extra_event_enter_aod_extra"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x12c

    const-string v4, "extra_event_aod_animation_duration"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->getInstance()Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v4, Lm0/c;

    invoke-direct {v4, v0, v1, v2, v3}, Lm0/c;-><init>(Lm0/d;ZJ)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 15
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [handleInvalidateFrontLayer]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lm0/d;->g()V

    goto/16 :goto_a

    .line 16
    :pswitch_5
    iget-object p1, v0, Lm0/m;->R:Landroid/os/Handler;

    if-eqz p1, :cond_20

    new-instance v1, Lm0/j;

    invoke-direct {v1, v0, v8}, Lm0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    :pswitch_6
    const-string v1, "extra_event_click_x"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "extra_event_click_y"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->getInstance()Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lm0/e;

    invoke-direct {v3, v0, v1, p1}, Lm0/e;-><init>(Lm0/d;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    :pswitch_7
    const-string v1, "extra_event_lock_screen_state"

    invoke-virtual {p1, v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lock screen state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lm0/d;->v:I

    if-eq v1, p1, :cond_20

    iput p1, v0, Lm0/d;->v:I

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v8

    .line 18
    :goto_2
    iget p1, v0, Lm0/d;->u:I

    if-eq p1, v2, :cond_20

    iput v2, v0, Lm0/d;->u:I

    move-object p1, v0

    check-cast p1, Lm0/g;

    .line 19
    iget-object v1, p1, Lm0/g;->U:[I

    array-length v3, v1

    move v4, v8

    :goto_3
    if-ge v4, v3, :cond_8

    aget v5, v1, v4

    iget-object v6, p1, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    invoke-virtual {v5, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->setUiMode(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {v0}, Lm0/d;->g()V

    invoke-virtual {v0}, Lm0/d;->f()V

    goto/16 :goto_a

    :pswitch_8
    const-string v1, "extra_event_cover_type"

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "extra_event_cover_visibility"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is covered by view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, v0, Lm0/d;->q:Z

    goto/16 :goto_4

    :pswitch_9
    const-string v1, "extra_event_scroll_state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    move v2, v8

    :cond_9
    iget-boolean p1, v0, Lm0/d;->o:Z

    if-eq p1, v2, :cond_20

    iput-boolean v2, v0, Lm0/d;->o:Z

    goto/16 :goto_a

    :pswitch_a
    const-string v1, "extra_event_broadcast_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->getInstance()Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lm0/b;

    invoke-direct {v2, v0, p1}, Lm0/b;-><init>(Lm0/d;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    :pswitch_b
    const-string v1, "extra_event_user_visibility"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lm0/d;->p:Z

    iget-boolean v1, v0, Lm0/d;->q:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_a

    iput-boolean v8, v0, Lm0/d;->q:Z

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user visible "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lm0/d;->p:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Lm0/d;->o()V

    goto/16 :goto_a

    .line 22
    :cond_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 23
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleOnLifecycleChanged state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "WatchFaceLayout"

    invoke-static {v11, v9}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "OutdoorMultifunctionWatchFaceEngine"

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_a

    .line 24
    :pswitch_c
    iget-object v1, v0, Lm0/p;->c:Lm0/m;

    if-eqz v1, :cond_14

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[performDestroy] old state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lm0/d;->m:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v1, Lm0/d;->m:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_c

    goto/16 :goto_6

    :cond_c
    iput v5, v1, Lm0/d;->m:I

    iget-object v3, v1, Lm0/d;->w:Lm0/a;

    .line 26
    iget-object v3, v3, Lm0/a;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    :cond_d
    iget-object v3, v1, Lm0/d;->w:Lm0/a;

    .line 28
    iget-object v5, v3, Lm0/a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    if-ne p1, v2, :cond_e

    move v3, v2

    goto :goto_5

    :cond_e
    move v3, v8

    .line 29
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "releaseBeforeOnDestroy:  reason:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isDeleteWatchface:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mWatchFaceLayout:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lm0/d;->b:Lm0/p;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v1, Lm0/d;->b:Lm0/p;

    if-eqz p1, :cond_f

    iget-object v5, v1, Lm0/m;->H:[I

    .line 30
    iget-object p1, p1, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {p1, v3, v5}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->releaseBeforeOnDestroy(Z[I)V

    .line 31
    :cond_f
    iget-object p1, v1, Lm0/m;->R:Landroid/os/Handler;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_10
    iget-object p1, v1, Lm0/m;->Q:Landroid/os/HandlerThread;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v4, v1, Lm0/m;->Q:Landroid/os/HandlerThread;

    .line 32
    :cond_11
    check-cast v1, Lr0/c;

    .line 33
    invoke-virtual {v1, v2}, Lm0/d;->m(Z)V

    iput-object v4, v1, Lm0/d;->b:Lm0/p;

    iget-object p1, v1, Lm0/d;->h:Landroidx/fragment/app/e;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroidx/fragment/app/e;->a()V

    .line 34
    :cond_12
    iget-object p1, v1, Lm0/g;->X:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->release()V

    .line 35
    :cond_13
    iget-object p1, v1, Lr0/c;->M0:Lr0/a;

    invoke-virtual {p1}, Lr0/a;->b()V

    iget-object p1, v1, Lr0/c;->k1:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, "onDestroy"

    invoke-static {v9, p1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_14
    :goto_6
    iget-object p1, v0, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->onDestroy()V

    .line 37
    iget-object p1, v0, Lm0/p;->o:Landroid/os/HandlerThread;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v4, v0, Lm0/p;->o:Landroid/os/HandlerThread;

    .line 38
    :cond_15
    iget-object p1, v0, Lm0/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lq0/f;->a(Landroid/content/Context;)Lq0/f;

    move-result-object p1

    iget-object v1, v0, Lm0/p;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lq0/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "[onDestroy] Debuggable, unregisterReceiver"

    invoke-static {v11, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lm0/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lq0/f;->a(Landroid/content/Context;)Lq0/f;

    move-result-object p1

    iget-object v0, v0, Lm0/p;->r:Lm0/p$a;

    .line 39
    iget-object p1, p1, Lq0/f;->a:Landroid/content/Context;

    if-nez p1, :cond_16

    const-string p1, "[unregisterLocalReceiver]:context is null"

    goto :goto_7

    :cond_16
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception p1

    const-string v0, "[unregisterReceiver]:exception:"

    .line 40
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    const-string v0, "HostApp"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 42
    :pswitch_d
    iget-object p1, v0, Lm0/p;->c:Lm0/m;

    if-eqz p1, :cond_20

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[performStop] old state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lm0/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lm0/d;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    goto/16 :goto_a

    :cond_17
    iput v1, p1, Lm0/d;->m:I

    invoke-virtual {p1}, Lm0/d;->n()V

    move-object v0, p1

    check-cast v0, Lr0/c;

    .line 44
    iget-object v0, v0, Lr0/c;->M0:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->b()V

    const-string v0, "onStop"

    invoke-static {v9, v0}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lm0/d;->o()V

    goto/16 :goto_a

    .line 46
    :pswitch_e
    iget-object p1, v0, Lm0/p;->c:Lm0/m;

    if-eqz p1, :cond_20

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[performPause] old state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lm0/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lm0/d;->m:I

    if-ne v0, v5, :cond_18

    goto/16 :goto_a

    :cond_18
    iput v5, p1, Lm0/d;->m:I

    invoke-virtual {p1}, Lm0/d;->o()V

    goto/16 :goto_a

    .line 48
    :pswitch_f
    iget-object p1, v0, Lm0/p;->c:Lm0/m;

    if-eqz p1, :cond_20

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[performResume] old state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lm0/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lm0/d;->m:I

    if-ne v0, v7, :cond_19

    goto/16 :goto_a

    :cond_19
    iput v7, p1, Lm0/d;->m:I

    move-object v0, p1

    check-cast v0, Lr0/c;

    const-string v1, "[onResume]"

    .line 50
    invoke-static {v9, v1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lr0/c;->k1:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    invoke-virtual {p1}, Lm0/d;->o()V

    goto/16 :goto_a

    .line 52
    :pswitch_10
    iget-object p1, v0, Lm0/p;->c:Lm0/m;

    if-eqz p1, :cond_20

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[performStart] old state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lm0/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lm0/d;->m:I

    if-ne v0, v3, :cond_1a

    goto/16 :goto_a

    :cond_1a
    iput v3, p1, Lm0/d;->m:I

    invoke-virtual {p1}, Lm0/d;->l()V

    invoke-virtual {p1}, Lm0/d;->f()V

    invoke-virtual {p1}, Lm0/d;->o()V

    goto/16 :goto_a

    .line 54
    :pswitch_11
    iget-object p1, v0, Lm0/p;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lm0/p;->a(Landroid/content/Context;)Lm0/m;

    move-result-object p1

    iput-object p1, v0, Lm0/p;->c:Lm0/m;

    .line 55
    iput-object v0, p1, Lm0/d;->b:Lm0/p;

    .line 56
    iget-object v1, v0, Lm0/p;->e:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    .line 57
    iput-object v1, p1, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[performCreate] old state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lm0/d;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lm0/d;->m:I

    if-ne v1, v2, :cond_1b

    goto/16 :goto_9

    :cond_1b
    iput v2, p1, Lm0/d;->m:I

    iget-object v1, p1, Lm0/d;->g:Landroid/content/Context;

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lockscreen"

    invoke-static {v1, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 60
    iput v1, p1, Lm0/d;->v:I

    if-ne v1, v2, :cond_1c

    move v1, v2

    goto :goto_8

    :cond_1c
    move v1, v8

    :goto_8
    iput v1, p1, Lm0/d;->u:I

    new-instance v1, Lm0/a;

    iget-object v3, p1, Lm0/d;->g:Landroid/content/Context;

    invoke-direct {v1, v3}, Lm0/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Lm0/d;->w:Lm0/a;

    .line 61
    iget-object v3, v1, Lm0/a;->c:Ljava/util/ArrayList;

    if-nez v3, :cond_1d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lm0/a;->c:Ljava/util/ArrayList;

    :cond_1d
    iget-object v1, v1, Lm0/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p1, Lm0/d;->w:Lm0/a;

    .line 63
    iget-object v3, v1, Lm0/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lm0/a;->d:Landroid/net/Uri;

    invoke-virtual {v3, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    move-object v1, p1

    check-cast v1, Lr0/c;

    .line 65
    new-instance v3, Landroid/os/HandlerThread;

    invoke-direct {v3, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lm0/m;->Q:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, v1, Lm0/m;->Q:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v1, Lm0/m;->R:Landroid/os/Handler;

    .line 66
    invoke-virtual {v1}, Lm0/g;->z()V

    .line 67
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 68
    iput-object v3, v1, Lr0/c;->c0:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lr0/c;->d0:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v1, Lr0/c;->d0:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v1, Lr0/c;->d0:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lr0/c;->r0:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v1, Lr0/c;->r0:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v1, Lr0/c;->r0:Landroid/graphics/Paint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    sget v5, Lr0/f;->colorcompasswhite:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v1, Lr0/c;->m0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    sget v5, Lr0/g;->textsize:I

    invoke-static {v4, v5}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v1, Lr0/c;->m0:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v1, Lr0/c;->m0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    sget v5, Lr0/f;->colorText:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v1, Lr0/c;->m0:Landroid/text/TextPaint;

    const-string v4, "oplus-sans-medium"

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, v1, Lr0/c;->m0:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v1}, Lr0/c;->E()V

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v1, Lr0/c;->n0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    sget v6, Lr0/g;->textsizetime:I

    invoke-static {v4, v6}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v1, Lr0/c;->n0:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v1, Lr0/c;->n0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v1, Lr0/c;->n0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    const-string v7, "Body Text Large Regular.ttf"

    invoke-static {v4, v7}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, v1, Lr0/c;->n0:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v1, Lr0/c;->o0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v1, Lr0/c;->o0:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v1, Lr0/c;->o0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v1, Lr0/c;->o0:Landroid/text/TextPaint;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    const-string v5, "OPlusSans3.0_No_Designer-Regular.ttf"

    invoke-static {v4, v5}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, v1, Lr0/c;->o0:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_second_center_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lr0/c;->f1:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_second_center_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lr0/c;->g1:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->uv_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v1, Lr0/c;->a0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->uv_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v1, Lr0/c;->b0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_left_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lr0/c;->u0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_top_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lr0/c;->v0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lr0/c;->w0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lr0/c;->x0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_aod_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lr0/c;->y0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_aod_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lr0/c;->z0:F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/h;->ic_compass:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->i0:Landroid/graphics/Bitmap;

    sget v3, Lr0/g;->outdoor_compass_left_chart:I

    sget v4, Lr0/g;->outdoor_compass_top_chart:I

    sget v5, Lr0/g;->outdoor_compass_chart_width:I

    sget v6, Lr0/g;->outdoor_compass_chart_height:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->D0:Landroid/graphics/Rect;

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/h;->ic_compass_white_long:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->j0:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/h;->ic_compass_white_short:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->k0:Landroid/graphics/Bitmap;

    sget v3, Lr0/g;->outdoor_compass_left_whites:I

    sget v4, Lr0/g;->outdoor_compass_top_white:I

    sget v5, Lr0/g;->outdoor_compass_white_width:I

    sget v6, Lr0/g;->outdoor_compass_short_height:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->G0:Landroid/graphics/Rect;

    sget v3, Lr0/g;->outdoor_compass_left_white2:I

    sget v4, Lr0/g;->outdoor_compass_top_white2:I

    sget v7, Lr0/g;->outdoor_compass_white_width2:I

    sget v9, Lr0/g;->outdoor_compass_white_height2:I

    invoke-virtual {v1, v3, v4, v7, v9}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->H0:Landroid/graphics/Rect;

    sget v3, Lr0/g;->outdoor_compass_left_white3:I

    sget v4, Lr0/g;->outdoor_compass_top_white3:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->I0:Landroid/graphics/Rect;

    sget v3, Lr0/g;->outdoor_transparent_compass_left:I

    sget v4, Lr0/g;->outdoor_transparent_compass_top:I

    sget v5, Lr0/g;->outdoor_transparent_compass_width:I

    sget v7, Lr0/g;->outdoor_transparent_compass_height:I

    invoke-virtual {v1, v3, v4, v5, v7}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->J0:Landroid/graphics/Rect;

    sget v3, Lr0/g;->outdoor_transparent_uv_left:I

    sget v4, Lr0/g;->outdoor_transparent_uv_top:I

    sget v5, Lr0/g;->outdoor_transparent_uv_width:I

    sget v7, Lr0/g;->outdoor_transparent_uv_height:I

    invoke-virtual {v1, v3, v4, v5, v7}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->K0:Landroid/graphics/Rect;

    sget v3, Lr0/g;->outdoor_compass_left_short:I

    sget v4, Lr0/g;->outdoor_compass_top_short:I

    sget v5, Lr0/g;->outdoor_compass_short_width:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->E0:Landroid/graphics/Rect;

    sget v3, Lr0/g;->outdoor_compass_left_short2:I

    sget v4, Lr0/g;->outdoor_compass_top_short2:I

    sget v5, Lr0/g;->outdoor_compass_short_width2:I

    sget v6, Lr0/g;->outdoor_compass_short_height2:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->F0:Landroid/graphics/Rect;

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    sget v4, Lr0/g;->outdoor_time_left:I

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lr0/c;->s0:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    sget v4, Lr0/g;->outdoor_time_top3:I

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lr0/c;->t0:I

    sget v3, Lr0/g;->outdoor_uvicon_left:I

    sget v4, Lr0/g;->outdoor_uvicon_top:I

    sget v5, Lr0/g;->outdoor_uvicon_width:I

    sget v6, Lr0/g;->outdoor_uvicon_height:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->A0:Landroid/graphics/Rect;

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/h;->ic_uvicon:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->f0:Landroid/graphics/Bitmap;

    sget v3, Lr0/g;->outdoor_uvpoint_left:I

    sget v4, Lr0/g;->outdoor_uvpoint_top:I

    sget v5, Lr0/g;->outdoor_uvpoint_width:I

    sget v6, Lr0/g;->outdoor_uvpoint_height:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, v1, Lr0/c;->B0:Landroid/graphics/Rect;

    iget-object v5, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lr0/c;->L0:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/h;->ic_uvpoint:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->g0:Landroid/graphics/Bitmap;

    sget v3, Lr0/g;->outdoor_uvline_left:I

    sget v4, Lr0/g;->outdoor_uvline_top:I

    sget v5, Lr0/g;->outdoor_uvline_width:I

    sget v6, Lr0/g;->outdoor_uvline_height:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lr0/c;->D(IIII)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->C0:Landroid/graphics/Rect;

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/h;->ic_uvline:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->h0:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/h;->ic_compass_mask:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->h1:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 69
    sget v4, Lr0/e;->month_number_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 70
    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    .line 71
    iget-object v4, v1, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfigUtils;->getEngineBackgroundBitmap(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 72
    iput-object v3, v1, Lr0/c;->e0:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lr0/c;->Q0:Landroid/content/res/Resources;

    sget v4, Lr0/i;->degree_zero:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lr0/c;->R0:Ljava/lang/String;

    new-instance v3, Lr0/a;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lr0/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lr0/c;->M0:Lr0/a;

    new-instance v4, Lr0/d;

    invoke-direct {v4, v1}, Lr0/d;-><init>(Lr0/c;)V

    .line 73
    iput-object v4, v3, Lr0/a;->a:Lr0/a$a;

    .line 74
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lr0/g;->outdoor_second_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lr0/g;->outdoor_second_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lr0/g;->outdoor_second_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iget-object v7, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lr0/g;->outdoor_second_bottom:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v1, Lr0/c;->P0:Landroid/graphics/RectF;

    .line 75
    iget-object v3, v1, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    iget-object v4, v1, Lm0/d;->g:Landroid/content/Context;

    const-string v5, "UV"

    invoke-virtual {v3, v4, v5}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;->registerWFWidgetData(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_top_whites:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Lr0/c;->b1:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_top_whites1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Lr0/c;->c1:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_center:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Lr0/c;->S0:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_center1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Lr0/c;->T0:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_length:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Lr0/c;->W0:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_length1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Lr0/c;->X0:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_white_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Lr0/c;->Y0:I

    iget-object v3, v1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lr0/g;->outdoor_compass_white_height1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v1, Lr0/c;->b1:I

    iget v5, v1, Lr0/c;->Y0:I

    add-int/2addr v4, v5

    iput v4, v1, Lr0/c;->d1:I

    iget v4, v1, Lr0/c;->c1:I

    add-int/2addr v4, v3

    iput v4, v1, Lr0/c;->e1:I

    iget v3, v1, Lr0/c;->S0:I

    iget v4, v1, Lr0/c;->X0:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    iput v5, v1, Lr0/c;->U0:I

    iget v5, v1, Lr0/c;->W0:I

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v3

    iput v6, v1, Lr0/c;->V0:I

    add-int/2addr v3, v5

    iput v3, v1, Lr0/c;->Z0:I

    iget v3, v1, Lr0/c;->T0:I

    add-int/2addr v3, v4

    iput v3, v1, Lr0/c;->a1:I

    .line 77
    iget-object v3, p1, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;->getComplicationAPList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lm0/m;->y(Ljava/util/List;)V

    invoke-virtual {p1}, Lm0/m;->q()V

    .line 78
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p1, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getCurrentStyleIndex()I

    move-result v4

    const-string v5, "style_index"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p1, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lm0/d;->g:Landroid/content/Context;

    .line 79
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.heytap.wearable.launcher"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 80
    iget-object v5, p1, Lm0/d;->b:Lm0/p;

    invoke-virtual {v5}, Lm0/p;->getWatchFaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lq0/c;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_1e
    if-eqz v4, :cond_1f

    iget-object v5, p1, Lm0/d;->b:Lm0/p;

    .line 81
    iget-object v5, v5, Lm0/p;->d:Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;

    invoke-virtual {v5, v4, v3}, Lcom/heytap/wearable/support/watchface/runtime/LauncherBridgeHelper;->notifyOnCreateFinished(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    :cond_1f
    iget-object v3, p1, Lm0/d;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    iget-object p1, p1, Lm0/d;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/common/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    .line 83
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v1, Lr0/c;->l0:Landroid/graphics/Rect;

    .line 84
    :goto_9
    invoke-static {}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->getInstance()Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lm0/j;

    invoke-direct {v1, v0, v2}, Lm0/j;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_20
    :goto_a
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
