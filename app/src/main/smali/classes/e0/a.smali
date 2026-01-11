.class public final Le0/a;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb0/v<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le0/a$a;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Le0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le0/a$a;

    invoke-direct {v0}, Le0/a$a;-><init>()V

    sput-object v0, Le0/a;->c:Le0/a$a;

    return-void
.end method

.method public constructor <init>(Lb0/h;Lb0/v;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/h;",
            "Lb0/v<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb0/v;-><init>()V

    new-instance v0, Le0/o;

    invoke-direct {v0, p1, p2, p3}, Le0/o;-><init>(Lb0/h;Lb0/v;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Le0/a;->b:Le0/o;

    iput-object p3, p0, Le0/a;->a:Ljava/lang/Class;

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

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lj0/a;->a()V

    :goto_0
    invoke-virtual {p1}, Lj0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le0/a;->b:Le0/o;

    invoke-virtual {v1, p1}, Le0/o;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lj0/a;->e()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Le0/a;->a:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method
