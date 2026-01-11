.class public final synthetic Lm0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm0/d;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lm0/d;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/b;->a:Lm0/d;

    iput-object p2, p0, Lm0/b;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lm0/b;->a:Lm0/d;

    iget-object v1, p0, Lm0/b;->b:Landroid/content/Intent;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :sswitch_6
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "OutdoorMultifunctionWatchFaceEngine"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    iget-object v1, v0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Lm0/d;->p()V

    invoke-virtual {v0}, Lm0/d;->e()V

    goto/16 :goto_3

    .line 3
    :pswitch_1
    iget-object v1, v0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Lm0/d;->p()V

    invoke-virtual {v0}, Lm0/d;->e()V

    goto/16 :goto_3

    .line 4
    :pswitch_2
    iget-object v1, v0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v1, v0

    check-cast v1, Lm0/m;

    .line 5
    iget-object v1, v1, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;->onTimeZoneChanged()V

    .line 6
    invoke-virtual {v0}, Lm0/d;->p()V

    invoke-virtual {v0}, Lm0/d;->e()V

    goto :goto_3

    .line 7
    :pswitch_3
    check-cast v0, Lr0/c;

    .line 8
    iget-object v1, v0, Lm0/g;->U:[I

    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_7

    aget v3, v1, v4

    iget-object v5, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->onLocaleChanged()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9
    :cond_7
    iget-object v1, v0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lr0/e;->compass_str:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lr0/c;->E()V

    goto :goto_3

    .line 11
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lr0/c;

    const-string v3, "[onScreenOn]"

    .line 12
    invoke-static {v2, v3}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v1, Lr0/c;->i1:Z

    .line 13
    iget-boolean v1, v0, Lm0/d;->A:Z

    if-eqz v1, :cond_a

    iput-boolean v4, v0, Lm0/d;->A:Z

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0}, Lm0/d;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lm0/d;->f()V

    .line 14
    :cond_8
    iget-object v0, v0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_3

    .line 15
    :pswitch_6
    iget-boolean v1, v0, Lm0/d;->z:Z

    if-eqz v1, :cond_9

    iput-boolean v3, v0, Lm0/d;->A:Z

    :cond_9
    check-cast v0, Lr0/c;

    const-string v1, "[onScreenOff]"

    .line 16
    invoke-static {v2, v1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lr0/c;->M0:Lr0/a;

    invoke-virtual {v1}, Lr0/a;->b()V

    iput-boolean v3, v0, Lr0/c;->i1:Z

    iget-object v0, v0, Lr0/c;->k1:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6
        -0x5a2f0b56 -> :sswitch_5
        -0x56ac2893 -> :sswitch_4
        -0x122164c -> :sswitch_3
        0x1df32313 -> :sswitch_2
        0x1e1f7f95 -> :sswitch_1
        0x3e117848 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
