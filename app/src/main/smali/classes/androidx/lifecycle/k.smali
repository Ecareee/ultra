.class public Landroidx/lifecycle/k;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string p1, "setValue"

    invoke-static {p1}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    iget p1, p0, Landroidx/lifecycle/LiveData;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/lifecycle/LiveData;->f:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$a;)V

    return-void
.end method
