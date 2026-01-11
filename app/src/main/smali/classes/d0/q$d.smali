.class public abstract Ld0/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ld0/q$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/q$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Ld0/q$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/q$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Ld0/q;


# direct methods
.method public constructor <init>(Ld0/q;)V
    .locals 1

    iput-object p1, p0, Ld0/q$d;->d:Ld0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ld0/q;->e:Ld0/q$e;

    iget-object v0, v0, Ld0/q$e;->d:Ld0/q$e;

    iput-object v0, p0, Ld0/q$d;->a:Ld0/q$e;

    const/4 v0, 0x0

    iput-object v0, p0, Ld0/q$d;->b:Ld0/q$e;

    iget p1, p1, Ld0/q;->d:I

    iput p1, p0, Ld0/q$d;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ld0/q$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld0/q$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ld0/q$d;->a:Ld0/q$e;

    iget-object v1, p0, Ld0/q$d;->d:Ld0/q;

    iget-object v2, v1, Ld0/q;->e:Ld0/q$e;

    if-eq v0, v2, :cond_1

    iget v1, v1, Ld0/q;->d:I

    iget v2, p0, Ld0/q$d;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Ld0/q$e;->d:Ld0/q$e;

    iput-object v1, p0, Ld0/q$d;->a:Ld0/q$e;

    iput-object v0, p0, Ld0/q$d;->b:Ld0/q$e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Ld0/q$d;->a:Ld0/q$e;

    iget-object v1, p0, Ld0/q$d;->d:Ld0/q;

    iget-object v1, v1, Ld0/q;->e:Ld0/q$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Ld0/q$d;->b:Ld0/q$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld0/q$d;->d:Ld0/q;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ld0/q;->e(Ld0/q$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld0/q$d;->b:Ld0/q$e;

    iget-object v0, p0, Ld0/q$d;->d:Ld0/q;

    iget v0, v0, Ld0/q;->d:I

    iput v0, p0, Ld0/q$d;->c:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
