.class public final Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Ls0/a;->a:Landroid/content/Context;

    const-string p1, "6001004"

    iput-object p1, p0, Ls0/a;->b:Ljava/lang/String;

    iput-object p2, p0, Ls0/a;->c:Ljava/lang/String;

    iput-object p3, p0, Ls0/a;->d:Ljava/util/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls0/a;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Ls0/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ls0/a;->b:Ljava/lang/String;

    iget-object v2, p0, Ls0/a;->c:Ljava/lang/String;

    iget-object v3, p0, Ls0/a;->d:Ljava/util/Map;

    iget-boolean v4, p0, Ls0/a;->e:Z

    .line 1
    new-instance v5, Lt0/a;

    if-eqz v3, :cond_1

    .line 2
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v3, Lv0/a;->a:I

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v1, v2, v3, v4}, Lt0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lu0/a;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 4
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object v1, Lu0/a;->a:Landroid/content/Context;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lu0/a;->a:Landroid/content/Context;

    :cond_4
    const-string v0, "dataType"

    :try_start_1
    invoke-virtual {v5}, Lt0/a;->toString()Ljava/lang/String;

    sget v1, Lv0/a;->a:I

    invoke-static {}, Lu0/a;->a()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uploadNow"

    .line 5
    iget-boolean v3, v5, Lt0/a;->d:Z

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "logTag"

    .line 7
    iget-object v3, v5, Lt0/a;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "eventID"

    .line 9
    iget-object v3, v5, Lt0/a;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "logMap"

    .line 11
    iget-object v3, v5, Lt0/a;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lu0/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lu0/a;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    :goto_3
    sget v0, Lv0/a;->a:I

    :goto_4
    return-void
.end method
