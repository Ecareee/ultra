.class public final Lr/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lr/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lr/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lr/b;->b:Lr/a;

    iput p3, p0, Lr/b;->c:I

    iput-object p4, p0, Lr/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lr/b;->b:Lr/a;

    iget v2, p0, Lr/b;->c:I

    invoke-static {v0, v1, v2}, Lr/e;->b(Landroid/content/Context;Lr/a;I)Lr/e$d;

    move-result-object v0

    iget-object v1, v0, Lr/e$d;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, Lr/e;->a:Lj/e;

    iget-object v3, p0, Lr/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lj/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
