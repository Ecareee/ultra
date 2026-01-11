.class public final Ld0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/f;->a(Li0/a;)Ld0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld0/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb0/i;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lb0/i;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Ld0/f$a;->a:Lb0/i;

    iput-object p2, p0, Ld0/f$a;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ld0/f$a;->a:Lb0/i;

    invoke-interface {v0}, Lb0/i;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
