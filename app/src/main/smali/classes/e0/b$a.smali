.class public final Le0/b$a;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb0/v<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Le0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Ld0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/r<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb0/h;Ljava/lang/reflect/Type;Lb0/v;Ld0/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/h;",
            "Ljava/lang/reflect/Type;",
            "Lb0/v<",
            "TE;>;",
            "Ld0/r<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb0/v;-><init>()V

    new-instance v0, Le0/o;

    invoke-direct {v0, p1, p3, p2}, Le0/o;-><init>(Lb0/h;Lb0/v;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Le0/b$a;->a:Le0/o;

    iput-object p4, p0, Le0/b$a;->b:Ld0/r;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lj0/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lj0/a;->r()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le0/b$a;->b:Ld0/r;

    invoke-interface {v0}, Ld0/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lj0/a;->a()V

    :goto_0
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le0/b$a;->a:Le0/o;

    invoke-virtual {v1, p1}, Le0/o;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lj0/a;->e()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
