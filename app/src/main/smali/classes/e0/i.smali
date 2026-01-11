.class public final Le0/i;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/v<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le0/h;


# instance fields
.field public final a:Lb0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le0/i;

    invoke-direct {v0}, Le0/i;-><init>()V

    new-instance v1, Le0/h;

    invoke-direct {v1, v0}, Le0/h;-><init>(Le0/i;)V

    .line 2
    sput-object v1, Le0/i;->b:Le0/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb0/s;->b:Lb0/s$b;

    invoke-direct {p0}, Lb0/v;-><init>()V

    iput-object v0, p0, Le0/i;->a:Lb0/t;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lj0/a;->v()I

    move-result v0

    invoke-static {v0}, Lj0/b;->a(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lj0/a;->r()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lb0/m;

    const-string v1, "Expecting number, got: "

    .line 2
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lj0/b;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Le0/i;->a:Lb0/t;

    invoke-interface {v0, p1}, Lb0/t;->a(Lj0/a;)Ljava/lang/Number;

    move-result-object p1

    :goto_0
    return-object p1
.end method
