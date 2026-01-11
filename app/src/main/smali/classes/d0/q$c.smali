.class public final Ld0/q$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld0/q;


# direct methods
.method public constructor <init>(Ld0/q;)V
    .locals 0

    iput-object p1, p0, Ld0/q$c;->a:Ld0/q;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Ld0/q$c;->a:Ld0/q;

    invoke-virtual {v0}, Ld0/q;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ld0/q$c;->a:Ld0/q;

    invoke-virtual {v0, p1}, Ld0/q;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ld0/q$c$a;

    invoke-direct {v0, p0}, Ld0/q$c$a;-><init>(Ld0/q$c;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ld0/q$c;->a:Ld0/q;

    invoke-virtual {v0, p1}, Ld0/q;->c(Ljava/lang/Object;)Ld0/q$e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, v1}, Ld0/q;->e(Ld0/q$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Ld0/q$c;->a:Ld0/q;

    iget v0, v0, Ld0/q;->c:I

    return v0
.end method
