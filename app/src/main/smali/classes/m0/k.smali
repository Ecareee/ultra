.class public final synthetic Lm0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm0/m;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lm0/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/k;->a:Lm0/m;

    iput p2, p0, Lm0/k;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lm0/k;->a:Lm0/m;

    iget v1, p0, Lm0/k;->b:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->getInstance()Lcom/heytap/wearable/support/watchface/edit/ConfigManager;

    move-result-object v2

    iget-object v3, v0, Lm0/d;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lm0/d;->b:Lm0/p;

    invoke-virtual {v5}, Lm0/p;->getWatchFaceServiceClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->loadStyles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object v2

    iget-object v3, v0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lm0/m;->M:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-static {}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->getInstance()Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/common/utils/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lm0/l;

    invoke-direct {v3, v0, v1}, Lm0/l;-><init>(Lm0/m;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
