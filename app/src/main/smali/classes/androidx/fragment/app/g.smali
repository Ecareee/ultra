.class public abstract Landroidx/fragment/app/g;
.super Landroidx/fragment/app/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/d;"
    }
.end annotation


# instance fields
.field public final c:Landroid/app/Activity;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:I

.field public final g:Landroidx/fragment/app/i;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    new-instance v1, Landroidx/fragment/app/i;

    invoke-direct {v1}, Landroidx/fragment/app/i;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    iput-object p1, p0, Landroidx/fragment/app/g;->c:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/g;->d:Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/g;->e:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/fragment/app/g;->f:I

    return-void
.end method


# virtual methods
.method public abstract i(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract j(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract k()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract l()Landroid/view/LayoutInflater;
.end method

.method public abstract m()V
.end method
