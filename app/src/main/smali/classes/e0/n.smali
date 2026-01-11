.class public final Le0/n;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/n$a;
    }
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
.field public final a:Lb0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lb0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lb0/h;

.field public final d:Li0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Le0/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/n<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public f:Lb0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb0/r;Lb0/k;Lb0/h;Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/r<",
            "TT;>;",
            "Lb0/k<",
            "TT;>;",
            "Lb0/h;",
            "Li0/a<",
            "TT;>;",
            "Lb0/w;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lb0/v;-><init>()V

    new-instance v0, Le0/n$a;

    invoke-direct {v0}, Le0/n$a;-><init>()V

    iput-object v0, p0, Le0/n;->e:Le0/n$a;

    iput-object p1, p0, Le0/n;->a:Lb0/r;

    iput-object p2, p0, Le0/n;->b:Lb0/k;

    iput-object p3, p0, Le0/n;->c:Lb0/h;

    iput-object p4, p0, Le0/n;->d:Li0/a;

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

    iget-object v0, p0, Le0/n;->b:Lb0/k;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Le0/n;->f:Lb0/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le0/n;->c:Lb0/h;

    iget-object v2, p0, Le0/n;->d:Li0/a;

    invoke-virtual {v0, v1, v2}, Lb0/h;->c(Lb0/w;Li0/a;)Lb0/v;

    move-result-object v0

    iput-object v0, p0, Le0/n;->f:Lb0/v;

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Lb0/v;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lj0/a;->v()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lj0/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v2, Le0/p;->U:Le0/p$s;

    .line 4
    invoke-virtual {v2, p1}, Le0/p$s;->b(Lj0/a;)Lb0/l;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lj0/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 5
    new-instance v0, Lb0/m;

    invoke-direct {v0, p1}, Lb0/m;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lb0/m;

    invoke-direct {v0, p1}, Lb0/m;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    new-instance v0, Lb0/m;

    invoke-direct {v0, p1}, Lb0/m;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    sget-object p1, Lb0/n;->a:Lb0/n;

    .line 6
    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of p1, p1, Lb0/n;

    if-eqz p1, :cond_2

    return-object v1

    .line 8
    :cond_2
    iget-object p1, p0, Le0/n;->b:Lb0/k;

    iget-object v0, p0, Le0/n;->d:Li0/a;

    .line 9
    iget-object v0, v0, Li0/a;->b:Ljava/lang/reflect/Type;

    .line 10
    invoke-interface {p1}, Lb0/k;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    new-instance v0, Lb0/m;

    invoke-direct {v0, p1}, Lb0/m;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
