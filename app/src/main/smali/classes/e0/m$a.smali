.class public final Le0/m$a;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb0/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ld0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le0/m$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld0/r;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/r<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le0/m$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb0/v;-><init>()V

    iput-object p1, p0, Le0/m$a;->a:Ld0/r;

    iput-object p2, p0, Le0/m$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/a;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lj0/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lj0/a;->r()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Le0/m$a;->a:Ld0/r;

    invoke-interface {v0}, Ld0/r;->a()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lj0/a;->b()V

    :goto_0
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lj0/a;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le0/m$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/m$b;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Le0/m$b;->c:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, v0}, Le0/m$b;->a(Lj0/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lj0/a;->A()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lj0/a;->f()V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lb0/m;

    invoke-direct {v0, p1}, Lb0/m;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
