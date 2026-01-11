.class public final Le0/k;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/v<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le0/j;


# instance fields
.field public final a:Lb0/h;

.field public final b:Lb0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le0/j;

    invoke-direct {v0}, Le0/j;-><init>()V

    .line 2
    sput-object v0, Le0/k;->c:Le0/j;

    return-void
.end method

.method public constructor <init>(Lb0/h;Lb0/t;)V
    .locals 0

    invoke-direct {p0}, Lb0/v;-><init>()V

    iput-object p1, p0, Le0/k;->a:Lb0/h;

    iput-object p2, p0, Le0/k;->b:Lb0/t;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lj0/a;->v()I

    move-result v0

    invoke-static {v0}, Lj0/b;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lj0/a;->r()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lj0/a;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Le0/k;->b:Lb0/t;

    invoke-interface {v0, p1}, Lb0/t;->a(Lj0/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lj0/a;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Ld0/q;

    invoke-direct {v0}, Ld0/q;-><init>()V

    invoke-virtual {p1}, Lj0/a;->b()V

    :goto_0
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lj0/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Le0/k;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld0/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lj0/a;->f()V

    return-object v0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lj0/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Le0/k;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lj0/a;->e()V

    return-object v0
.end method
