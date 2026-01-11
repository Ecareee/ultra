.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$a;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.a;",
        "Landroidx/lifecycle/e;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/g;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# virtual methods
.method public final h(Landroidx/lifecycle/g;Landroidx/lifecycle/d$a;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/h;

    .line 1
    iget-object p1, p1, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/d$b;

    .line 2
    sget-object p2, Landroidx/lifecycle/d$b;->a:Landroidx/lifecycle/d$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$a;->a:Landroidx/lifecycle/l;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/l;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/h;

    .line 4
    iget-object p1, p1, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/d$b;

    .line 5
    invoke-virtual {p1}, Landroidx/lifecycle/d$b;->a()Z

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$a;->e(Z)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {v0}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/d;->b(Landroidx/lifecycle/f;)V

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {v0}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/d;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h;

    .line 1
    iget-object v0, v0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/d$b;

    .line 2
    invoke-virtual {v0}, Landroidx/lifecycle/d$b;->a()Z

    move-result v0

    return v0
.end method
