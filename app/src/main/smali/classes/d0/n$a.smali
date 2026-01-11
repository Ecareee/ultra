.class public final Ld0/n$a;
.super Lb0/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/n;->a(Lb0/h;Li0/a;)Lb0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lb0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lb0/h;

.field public final synthetic e:Li0/a;

.field public final synthetic f:Ld0/n;


# direct methods
.method public constructor <init>(Ld0/n;ZZLb0/h;Li0/a;)V
    .locals 0

    iput-object p1, p0, Ld0/n$a;->f:Ld0/n;

    iput-boolean p2, p0, Ld0/n$a;->b:Z

    iput-boolean p3, p0, Ld0/n$a;->c:Z

    iput-object p4, p0, Ld0/n$a;->d:Lb0/h;

    iput-object p5, p0, Ld0/n$a;->e:Li0/a;

    invoke-direct {p0}, Lb0/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/a;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Ld0/n$a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj0/a;->A()V

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Ld0/n$a;->a:Lb0/v;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld0/n$a;->d:Lb0/h;

    iget-object v1, p0, Ld0/n$a;->f:Ld0/n;

    iget-object v2, p0, Ld0/n$a;->e:Li0/a;

    invoke-virtual {v0, v1, v2}, Lb0/h;->c(Lb0/w;Li0/a;)Lb0/v;

    move-result-object v0

    iput-object v0, p0, Ld0/n$a;->a:Lb0/v;

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Lb0/v;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
