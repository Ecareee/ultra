.class public final Lb0/f;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/v<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb0/v;


# direct methods
.method public constructor <init>(Lb0/v;)V
    .locals 0

    iput-object p1, p0, Lb0/f;->a:Lb0/v;

    invoke-direct {p0}, Lb0/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb0/f;->a:Lb0/v;

    invoke-virtual {v0, p1}, Lb0/v;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v0
.end method
