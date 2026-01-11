.class public final Lh0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb0/h;Li0/a;)Lb0/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb0/h;",
            "Li0/a<",
            "TT;>;)",
            "Lb0/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Li0/a;->a:Ljava/lang/Class;

    .line 2
    const-class v0, Ljava/sql/Timestamp;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const-class p2, Ljava/util/Date;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li0/a;

    invoke-direct {v0, p2}, Li0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 4
    invoke-virtual {p1, v0}, Lb0/h;->b(Li0/a;)Lb0/v;

    move-result-object p1

    .line 5
    new-instance p2, Lh0/c;

    invoke-direct {p2, p1, v1}, Lh0/c;-><init>(Lb0/v;Lh0/c$a;)V

    return-object p2

    :cond_0
    return-object v1
.end method
