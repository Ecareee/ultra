.class public final enum Lb0/s$b;
.super Lb0/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "LAZILY_PARSED_NUMBER"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lb0/s;-><init>(Ljava/lang/String;ILb0/s$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Number;
    .locals 1

    new-instance v0, Ld0/p;

    invoke-virtual {p1}, Lj0/a;->t()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld0/p;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
