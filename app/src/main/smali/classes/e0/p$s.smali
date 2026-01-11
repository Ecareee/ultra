.class public final Le0/p$s;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/v<",
        "Lb0/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb0/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lj0/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Le0/p$s;->b(Lj0/a;)Lb0/l;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj0/a;)Lb0/l;
    .locals 4

    instance-of v0, p1, Le0/f;

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    check-cast p1, Le0/f;

    .line 1
    invoke-virtual {p1}, Le0/f;->v()I

    move-result v0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Le0/f;->D()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/l;

    invoke-virtual {p1}, Le0/f;->A()V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected "

    .line 2
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lj0/b;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when reading a JsonElement."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lj0/a;->v()I

    move-result v0

    invoke-static {v0}, Lj0/b;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lj0/a;->r()V

    sget-object p1, Lb0/n;->a:Lb0/n;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance v0, Lb0/q;

    invoke-virtual {p1}, Lj0/a;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lb0/q;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lj0/a;->t()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lb0/q;

    new-instance v1, Ld0/p;

    invoke-direct {v1, p1}, Ld0/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lb0/q;-><init>(Ljava/lang/Number;)V

    return-object v0

    :cond_5
    new-instance v0, Lb0/q;

    invoke-virtual {p1}, Lj0/a;->t()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb0/q;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    new-instance v0, Lb0/o;

    invoke-direct {v0}, Lb0/o;-><init>()V

    invoke-virtual {p1}, Lj0/a;->b()V

    :goto_0
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lj0/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Le0/p$s;->b(Lj0/a;)Lb0/l;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lb0/o;->a:Ld0/q;

    if-nez v2, :cond_7

    sget-object v2, Lb0/n;->a:Lb0/n;

    :cond_7
    invoke-virtual {v3, v1, v2}, Ld0/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_8
    invoke-virtual {p1}, Lj0/a;->f()V

    return-object v0

    :cond_9
    new-instance v0, Lb0/j;

    invoke-direct {v0}, Lb0/j;-><init>()V

    invoke-virtual {p1}, Lj0/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1}, Le0/p$s;->b(Lj0/a;)Lb0/l;

    move-result-object v1

    if-nez v1, :cond_a

    .line 7
    sget-object v1, Lb0/n;->a:Lb0/n;

    :cond_a
    iget-object v2, v0, Lb0/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_b
    invoke-virtual {p1}, Lj0/a;->e()V

    return-object v0
.end method

.method public final c(Lj0/c;Lb0/l;)V
    .locals 4

    if-eqz p2, :cond_d

    .line 1
    instance-of v0, p2, Lb0/n;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p2, Lb0/q;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lb0/l;->a()Lb0/q;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lb0/q;->a:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lb0/q;->c()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj0/c;->m(Ljava/lang/Number;)Lj0/c;

    goto/16 :goto_4

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lb0/q;->b()Z

    move-result p2

    invoke-virtual {p1, p2}, Lj0/c;->o(Z)Lj0/c;

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p2}, Lb0/q;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj0/c;->n(Ljava/lang/String;)Lj0/c;

    goto/16 :goto_4

    .line 8
    :cond_3
    instance-of v0, p2, Lb0/j;

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p1}, Lj0/c;->b()Lj0/c;

    if-eqz v0, :cond_5

    .line 10
    check-cast p2, Lb0/j;

    .line 11
    invoke-virtual {p2}, Lb0/j;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/l;

    invoke-virtual {p0, p1, v0}, Le0/p$s;->c(Lj0/c;Lb0/l;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lj0/c;->e()Lj0/c;

    goto/16 :goto_4

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    instance-of v0, p2, Lb0/o;

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {p1}, Lj0/c;->c()Lj0/c;

    if-eqz v0, :cond_b

    .line 15
    check-cast p2, Lb0/o;

    .line 16
    iget-object p2, p2, Lb0/o;->a:Ld0/q;

    invoke-virtual {p2}, Ld0/q;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 17
    check-cast p2, Ld0/q$b;

    .line 18
    iget-object p2, p2, Ld0/q$b;->a:Ld0/q;

    .line 19
    iget-object v0, p2, Ld0/q;->e:Ld0/q$e;

    iget-object v0, v0, Ld0/q$e;->d:Ld0/q$e;

    iget v1, p2, Ld0/q;->d:I

    .line 20
    :goto_1
    iget-object v2, p2, Ld0/q;->e:Ld0/q$e;

    if-eq v0, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 21
    iget v2, p2, Ld0/q;->d:I

    if-ne v2, v1, :cond_8

    iget-object v2, v0, Ld0/q$e;->d:Ld0/q$e;

    .line 22
    iget-object v3, v0, Ld0/q$e;->f:Ljava/lang/Object;

    .line 23
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lj0/c;->g(Ljava/lang/String;)Lj0/c;

    .line 24
    iget-object v0, v0, Ld0/q$e;->g:Ljava/lang/Object;

    .line 25
    check-cast v0, Lb0/l;

    invoke-virtual {p0, p1, v0}, Le0/p$s;->c(Lj0/c;Lb0/l;)V

    move-object v0, v2

    goto :goto_1

    .line 26
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 27
    :cond_a
    invoke-virtual {p1}, Lj0/c;->f()Lj0/c;

    goto :goto_4

    .line 28
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    .line 30
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_3
    invoke-virtual {p1}, Lj0/c;->h()Lj0/c;

    :goto_4
    return-void
.end method

.method public final bridge synthetic d(Lj0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lb0/l;

    invoke-virtual {p0, p1, p2}, Le0/p$s;->c(Lj0/c;Lb0/l;)V

    return-void
.end method
