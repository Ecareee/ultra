.class public final Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/u;

.field public final synthetic b:Lj/a;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/fragment/app/p$a;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroidx/fragment/app/Fragment;

.field public final synthetic h:Landroidx/fragment/app/Fragment;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/u;

    iput-object p2, p0, Landroidx/fragment/app/o;->b:Lj/a;

    iput-object p3, p0, Landroidx/fragment/app/o;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/o;->d:Landroidx/fragment/app/p$a;

    iput-object p5, p0, Landroidx/fragment/app/o;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/o;->f:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/o;->i:Z

    iput-object p10, p0, Landroidx/fragment/app/o;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/o;->k:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/o;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/u;

    iget-object v1, p0, Landroidx/fragment/app/o;->b:Lj/a;

    iget-object v2, p0, Landroidx/fragment/app/o;->c:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/o;->d:Landroidx/fragment/app/p$a;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/p;->e(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Lj/a;

    iget-object v0, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/o;->i:Z

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/o;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/u;

    iget-object v2, p0, Landroidx/fragment/app/o;->j:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/u;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/fragment/app/o;->d:Landroidx/fragment/app/p$a;

    iget-object v1, p0, Landroidx/fragment/app/o;->k:Ljava/lang/Object;

    iget-boolean v2, p0, Landroidx/fragment/app/o;->i:Z

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroidx/fragment/app/p;->k(Lj/a;Landroidx/fragment/app/p$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/u;

    iget-object v2, p0, Landroidx/fragment/app/o;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/u;->f(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
