.class public final Le0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/w;


# instance fields
.field public final synthetic a:Lb0/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb0/s;->a:Lb0/s$a;

    iput-object v0, p0, Le0/j;->a:Lb0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb0/h;Li0/a;)Lb0/v;
    .locals 1
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
    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    new-instance p2, Le0/k;

    iget-object v0, p0, Le0/j;->a:Lb0/t;

    invoke-direct {p2, p1, v0}, Le0/k;-><init>(Lb0/h;Lb0/t;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
