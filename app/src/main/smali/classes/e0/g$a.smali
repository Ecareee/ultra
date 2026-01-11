.class public final Le0/g$a;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb0/v<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Le0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Le0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Ld0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/r<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Le0/g;


# direct methods
.method public constructor <init>(Le0/g;Lb0/h;Ljava/lang/reflect/Type;Lb0/v;Ljava/lang/reflect/Type;Lb0/v;Ld0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/h;",
            "Ljava/lang/reflect/Type;",
            "Lb0/v<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lb0/v<",
            "TV;>;",
            "Ld0/r<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le0/g$a;->d:Le0/g;

    invoke-direct {p0}, Lb0/v;-><init>()V

    new-instance p1, Le0/o;

    invoke-direct {p1, p2, p4, p3}, Le0/o;-><init>(Lb0/h;Lb0/v;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Le0/g$a;->a:Le0/o;

    new-instance p1, Le0/o;

    invoke-direct {p1, p2, p6, p5}, Le0/o;-><init>(Lb0/h;Lb0/v;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Le0/g$a;->b:Le0/o;

    iput-object p7, p0, Le0/g$a;->c:Ld0/r;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lj0/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lj0/a;->r()V

    const/4 p1, 0x0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Le0/g$a;->c:Ld0/r;

    invoke-interface {v1}, Ld0/r;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lj0/a;->a()V

    :goto_0
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lj0/a;->a()V

    iget-object v0, p0, Le0/g$a;->a:Le0/o;

    invoke-virtual {v0, p1}, Le0/o;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Le0/g$a;->b:Le0/o;

    invoke-virtual {v2, p1}, Le0/o;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lj0/a;->e()V

    goto :goto_0

    :cond_1
    new-instance p1, Lb0/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lj0/a;->e()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lj0/a;->b()V

    :goto_1
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/fragment/app/d;->b:Lj0/a$a;

    invoke-virtual {v0, p1}, Lj0/a$a;->i(Lj0/a;)V

    iget-object v0, p0, Le0/g$a;->a:Le0/o;

    invoke-virtual {v0, p1}, Le0/o;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Le0/g$a;->b:Le0/o;

    invoke-virtual {v2, p1}, Le0/o;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lb0/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lj0/a;->f()V

    :goto_2
    move-object p1, v1

    :goto_3
    return-object p1
.end method
