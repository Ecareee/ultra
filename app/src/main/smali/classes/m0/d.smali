.class public abstract Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/d$b;,
        Lm0/d$c;
    }
.end annotation


# static fields
.field public static final F:J

.field public static final G:J


# instance fields
.field public A:Z

.field public B:I

.field public final C:[[F

.field public D:[[F

.field public final E:Lm0/d$a;

.field public b:Lm0/p;

.field public c:Lm0/d$c;

.field public d:Lo0/a$a;

.field public e:Lm0/d$b;

.field public f:Ljava/util/Calendar;

.field public g:Landroid/content/Context;

.field public h:Landroidx/fragment/app/e;

.field public i:J

.field public j:J

.field public k:F

.field public l:F

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public final t:Z

.field public u:I

.field public v:I

.field public w:Lm0/a;

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lm0/d;->F:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lm0/d;->G:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lm0/d;->f:Ljava/util/Calendar;

    sget-wide v0, Lm0/d;->G:J

    iput-wide v0, p0, Lm0/d;->i:J

    const/4 v0, 0x0

    iput v0, p0, Lm0/d;->m:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm0/d;->y:J

    new-instance v0, Lm0/d$a;

    invoke-direct {v0, p0}, Lm0/d$a;-><init>(Lm0/d;)V

    iput-object v0, p0, Lm0/d;->E:Lm0/d$a;

    iput-object p1, p0, Lm0/d;->g:Landroid/content/Context;

    new-instance v0, Lm0/d$c;

    invoke-direct {v0, p0, p1}, Lm0/d$c;-><init>(Lm0/d;Landroid/content/Context;)V

    iput-object v0, p0, Lm0/d;->c:Lm0/d$c;

    move-object v0, p0

    check-cast v0, Lo0/a;

    .line 1
    new-instance v1, Lo0/a$a;

    iget-object v2, v0, Lm0/d;->g:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lo0/a$a;-><init>(Lo0/a;Landroid/content/Context;)V

    .line 2
    iput-object v1, p0, Lm0/d;->d:Lo0/a$a;

    new-instance v0, Lm0/d$b;

    invoke-direct {v0, p0, p1}, Lm0/d$b;-><init>(Lm0/d;Landroid/content/Context;)V

    iput-object v0, p0, Lm0/d;->e:Lm0/d$b;

    new-instance p1, Landroidx/fragment/app/e;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroidx/fragment/app/e;-><init>(I)V

    iput-object p1, p0, Lm0/d;->h:Landroidx/fragment/app/e;

    iget-object p1, p0, Lm0/d;->g:Landroid/content/Context;

    sget v0, Lk0/b;->default_aod_offsets:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/g;->l(Landroid/content/Context;I)[[F

    move-result-object p1

    iput-object p1, p0, Lm0/d;->C:[[F

    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.wear.product.21905"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lm0/d;->t:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lm0/d;->D:[[F

    :cond_0
    return-void
.end method

.method public static b(Lm0/d;)[F
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/d;->D:[[F

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lm0/d;->d()[[F

    move-result-object v0

    iput-object v0, p0, Lm0/d;->D:[[F

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 3
    iget-object v0, p0, Lm0/d;->C:[[F

    iput-object v0, p0, Lm0/d;->D:[[F

    :cond_1
    iget v0, p0, Lm0/d;->B:I

    iget-object p0, p0, Lm0/d;->D:[[F

    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object p0, p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final c(II)V
    .locals 9

    move-object v0, p0

    check-cast v0, Lm0/g;

    .line 1
    invoke-virtual {v0}, Lm0/m;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lm0/g;->U:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    aget v7, v2, v5

    iget-object v8, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "complicationId is null "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ComplicationWatchFaceEngine"

    invoke-static {v7, v6}, Lm0/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lm0/g;->W:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    invoke-virtual {v8, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->onTap(II)Z

    move-result v8

    if-eqz v8, :cond_2

    new-array v2, v6, [I

    aput v7, v2, v4

    .line 2
    iget-object v3, v0, Lm0/g;->X:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    if-nez v3, :cond_1

    new-instance v3, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    iget-object v5, v0, Lm0/d;->g:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v3, v0, Lm0/g;->X:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->init()V

    :cond_1
    iget-object v3, v0, Lm0/g;->X:Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;

    new-instance v5, Lm0/f;

    invoke-direct {v5, v0}, Lm0/f;-><init>(Lm0/g;)V

    invoke-virtual {v3, v5, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever;->retrieveProviderInfo(Lcom/heytap/wearable/support/watchface/complications/ProviderInfoRetriever$OnProviderInfoReceivedCallback;Ljava/lang/String;[I)V

    move v0, v6

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_2
    if-eqz v0, :cond_4

    const-string p1, "WatchFaceEngine"

    const-string p2, "[dispatchClickEvent] intercept click event"

    .line 3
    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v0, p0

    check-cast v0, Lr0/c;

    .line 4
    iget-object v1, v0, Lr0/c;->J0:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-lt p1, v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-lt p2, v2, :cond_5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v1, :cond_5

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    if-eqz v6, :cond_7

    .line 5
    iget-object v1, v0, Lm0/d;->g:Landroid/content/Context;

    const-string v2, "com.heytap.wearable.compass2"

    invoke-static {v1, v2}, Lr0/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lm0/d;->g:Landroid/content/Context;

    .line 6
    invoke-static {v1, v2}, Lr0/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v1, v2}, Lr0/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2}, Lr0/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    :cond_7
    :goto_4
    iget-object v1, v0, Lr0/c;->K0:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v0, Lm0/m;->S:Lcom/heytap/wearable/support/watchface/data/WFDataManager;

    iget-object p2, v0, Lm0/d;->g:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "UV"

    invoke-virtual {p1, p2, v2, v1}, Lcom/heytap/wearable/support/watchface/data/WFDataManager;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onClick] uv = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OutdoorMultifunctionWatchFaceEngine"

    invoke-static {v1, p2}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "com.heytap.wearable.weather"

    if-nez p2, :cond_a

    const-string p2, "- -"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    .line 8
    :cond_8
    iget-object p1, v0, Lm0/d;->g:Landroid/content/Context;

    invoke-static {p1, v1}, Lr0/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v0, Lm0/d;->g:Landroid/content/Context;

    .line 9
    invoke-static {p1, v1}, Lr0/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {p1, v1}, Lr0/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, v1}, Lr0/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.heytap.wearable.weather.ui.weather.WidgetActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "from"

    const-string v1, "widget"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x6

    const-string v1, "widget_tag"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 10
    :cond_a
    :goto_5
    iget-object p1, v0, Lm0/d;->g:Landroid/content/Context;

    .line 11
    invoke-static {p1, v1}, Lr0/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_6

    :cond_b
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.heytap.wearable.weather.ui.home.AttendCityActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, v1}, Lr0/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public abstract d()[[F
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lm0/d;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm0/d;->e:Lm0/d$b;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public abstract f()V
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lm0/d;->c:Lm0/d$c;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lm0/d;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract i(Landroid/graphics/Canvas;)V
.end method

.method public abstract j(Landroid/graphics/Canvas;)V
.end method

.method public final k(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[setFrontLayerUpdatePeriod] updatePeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lm0/d;->n()V

    iput-wide p1, p0, Lm0/d;->i:J

    invoke-virtual {p0}, Lm0/d;->l()V

    return-void
.end method

.method public final l()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[startUpdateTime] isStarted() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm0/d;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/d;->E:Lm0/d$a;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lm0/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm0/d;->E:Lm0/d$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final m(Z)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lm0/d;->y:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lm0/d;->y:J

    iget-object p1, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[updateActiveStatus] packageManager is null, return!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchFaceEngine"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm0/d;->g:Landroid/content/Context;

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v2, p0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lm0/d;->x:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "duration_time"

    .line 5
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "wf_duration_time"

    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/g;->t(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm0/d;->x:J

    return-void
.end method

.method public final n()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[stopUpdateTime]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/d;->E:Lm0/d$a;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    iget v0, p0, Lm0/d;->m:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lm0/d;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lm0/d;->p:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[updateActiveStatus] mActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lm0/d;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceEngine"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm0/d;->n:Z

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    iput-boolean v2, p0, Lm0/d;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz v2, :cond_3

    iput-wide v0, p0, Lm0/d;->j:J

    iget-wide v0, p0, Lm0/d;->y:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm0/d;->y:J

    goto :goto_2

    :cond_3
    iget-wide v4, p0, Lm0/d;->j:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lm0/d;->x:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lm0/d;->x:J

    invoke-virtual {p0, v3}, Lm0/d;->m(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lm0/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm0/d;->g()V

    :cond_0
    return-void
.end method
