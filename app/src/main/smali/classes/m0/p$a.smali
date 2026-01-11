.class public final Lm0/p$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/p;


# direct methods
.method public constructor <init>(Lm0/p;)V
    .locals 0

    iput-object p1, p0, Lm0/p$a;->a:Lm0/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchFaceLayout"

    if-nez p1, :cond_0

    const-string p1, "[onReceive] action is null, return!"

    .line 1
    invoke-static {v0, p1}, Lm0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "WF"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "heywatchface.action.SCREENSHOT_MODE_ENABLE"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "heywatchface.action.SCREENSHOT_MODE_DISABLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "[onReceive] SCREENSHOT_MODE_DISABLE"

    invoke-static {v0, p1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 3
    iget-object v0, p1, Lm0/p;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/runtime/BaseWatchFaceView;->initRoundCornerOverlay(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 6
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 7
    invoke-virtual {p1}, Lm0/d;->l()V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 8
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lm0/m;->u(Z)V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 10
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 11
    invoke-virtual {p1}, Lm0/d;->g()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "[onReceive] SCREENSHOT_MODE_ENABLE"

    invoke-static {v0, p1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewOverlay;->clear()V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 12
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 13
    invoke-virtual {p1}, Lm0/d;->n()V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 14
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lm0/m;->u(Z)V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 16
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 17
    iget-object v2, p1, Lm0/d;->f:Ljava/util/Calendar;

    const/16 v3, 0x7e4

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/16 v6, 0x9

    const/16 v7, 0x1e

    const/16 v8, 0x24

    .line 18
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object p1, p0, Lm0/p$a;->a:Lm0/p;

    .line 19
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 20
    invoke-virtual {p1}, Lm0/d;->g()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lm0/p$a;->a:Lm0/p;

    .line 21
    iget-object v0, v0, Lm0/p;->b:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lm0/p$a;->a:Lm0/p;

    .line 23
    iget-object p2, p2, Lm0/p;->b:Landroid/content/Context;

    .line 24
    invoke-static {p2}, Lq0/f;->a(Landroid/content/Context;)Lq0/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lq0/f;->c(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
