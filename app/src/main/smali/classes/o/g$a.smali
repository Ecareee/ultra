.class public final Lo/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/g;->f([Lr/e$c;I)Lr/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/g$b<",
        "Lr/e$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr/e$c;

    iget p1, p1, Lr/e$c;->c:I

    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lr/e$c;

    iget-boolean p1, p1, Lr/e$c;->d:Z

    return p1
.end method
