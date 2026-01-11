.class public final Lh0/c;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/v<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lh0/c$a;


# instance fields
.field public final a:Lb0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh0/c$a;

    invoke-direct {v0}, Lh0/c$a;-><init>()V

    sput-object v0, Lh0/c;->b:Lh0/c$a;

    return-void
.end method

.method public constructor <init>(Lb0/v;Lh0/c$a;)V
    .locals 0

    invoke-direct {p0}, Lb0/v;-><init>()V

    iput-object p1, p0, Lh0/c;->a:Lb0/v;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh0/c;->a:Lb0/v;

    invoke-virtual {v0, p1}, Lb0/v;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
