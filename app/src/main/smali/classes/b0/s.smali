.class public abstract enum Lb0/s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lb0/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb0/s;",
        ">;",
        "Lb0/t;"
    }
.end annotation


# static fields
.field public static final enum a:Lb0/s$a;

.field public static final enum b:Lb0/s$b;

.field public static final enum c:Lb0/s$c;

.field public static final enum d:Lb0/s$d;

.field public static final synthetic e:[Lb0/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lb0/s$a;

    invoke-direct {v0}, Lb0/s$a;-><init>()V

    sput-object v0, Lb0/s;->a:Lb0/s$a;

    new-instance v1, Lb0/s$b;

    const/4 v2, 0x1

    invoke-direct {v1}, Lb0/s$b;-><init>()V

    sput-object v1, Lb0/s;->b:Lb0/s$b;

    new-instance v3, Lb0/s$c;

    const/4 v4, 0x2

    invoke-direct {v3}, Lb0/s$c;-><init>()V

    sput-object v3, Lb0/s;->c:Lb0/s$c;

    new-instance v5, Lb0/s$d;

    const/4 v6, 0x3

    invoke-direct {v5}, Lb0/s$d;-><init>()V

    sput-object v5, Lb0/s;->d:Lb0/s$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lb0/s;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v1, v7, v2

    aput-object v3, v7, v4

    aput-object v5, v7, v6

    sput-object v7, Lb0/s;->e:[Lb0/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILb0/s$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb0/s;
    .locals 1

    const-class v0, Lb0/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb0/s;

    return-object p0
.end method

.method public static values()[Lb0/s;
    .locals 1

    sget-object v0, Lb0/s;->e:[Lb0/s;

    invoke-virtual {v0}, [Lb0/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb0/s;

    return-object v0
.end method
