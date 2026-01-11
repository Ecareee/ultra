.class public final Le0/o;
.super Lb0/v;
.source "SourceFile"


# annotations
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
.field public final a:Lb0/h;

.field public final b:Lb0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lb0/h;Lb0/v;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/h;",
            "Lb0/v<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lb0/v;-><init>()V

    iput-object p1, p0, Le0/o;->a:Lb0/h;

    iput-object p2, p0, Le0/o;->b:Lb0/v;

    iput-object p3, p0, Le0/o;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Le0/o;->b:Lb0/v;

    invoke-virtual {v0, p1}, Lb0/v;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
