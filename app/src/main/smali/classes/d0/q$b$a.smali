.class public final Ld0/q$b$a;
.super Ld0/q$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/q$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld0/q<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld0/q$b;)V
    .locals 0

    iget-object p1, p1, Ld0/q$b;->a:Ld0/q;

    invoke-direct {p0, p1}, Ld0/q$d;-><init>(Ld0/q;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld0/q$d;->a()Ld0/q$e;

    move-result-object v0

    return-object v0
.end method
