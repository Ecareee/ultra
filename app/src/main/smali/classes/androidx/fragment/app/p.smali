.class public final Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/p$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Landroidx/fragment/app/q;

.field public static final c:Landroidx/fragment/app/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/p;->a:[I

    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Landroidx/fragment/app/q;-><init>()V

    sput-object v0, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/q;

    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/u;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-object v0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/u;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method public static a(Ljava/util/ArrayList;Lj/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lj/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lj/g;->c:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lj/g;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lu/j;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Landroidx/fragment/app/a;Landroidx/fragment/app/k$a;Landroid/util/SparseArray;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/k$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/p$a;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v10, v1, Landroidx/fragment/app/k$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v10, :cond_0

    return-void

    :cond_0
    iget v11, v10, Landroidx/fragment/app/Fragment;->w:I

    if-nez v11, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Landroidx/fragment/app/p;->a:[I

    iget v1, v1, Landroidx/fragment/app/k$a;->a:I

    aget v1, v4, v1

    goto :goto_0

    :cond_2
    iget v1, v1, Landroidx/fragment/app/k$a;->a:I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_a

    const/4 v6, 0x3

    if-eq v1, v6, :cond_7

    const/4 v6, 0x4

    if-eq v1, v6, :cond_5

    const/4 v6, 0x5

    if-eq v1, v6, :cond_3

    const/4 v6, 0x6

    if-eq v1, v6, :cond_7

    const/4 v6, 0x7

    if-eq v1, v6, :cond_a

    move v1, v4

    move v12, v1

    move v13, v12

    goto/16 :goto_6

    :cond_3
    if-eqz p4, :cond_4

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_4
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->y:Z

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_6

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_6
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v1, :cond_9

    goto :goto_1

    :cond_7
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v1, :cond_9

    :goto_1
    move v1, v5

    goto :goto_3

    :cond_9
    :goto_2
    move v1, v4

    :goto_3
    move v13, v1

    move v1, v4

    move v12, v5

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->I:Z

    goto :goto_5

    :cond_b
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->k:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v1, :cond_c

    :goto_4
    move v1, v5

    goto :goto_5

    :cond_c
    move v1, v4

    :goto_5
    move v12, v4

    move v13, v12

    move v4, v1

    move v1, v5

    :goto_6
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/p$a;

    if-eqz v4, :cond_e

    if-nez v6, :cond_d

    .line 1
    new-instance v4, Landroidx/fragment/app/p$a;

    invoke-direct {v4}, Landroidx/fragment/app/p$a;-><init>()V

    invoke-virtual {v2, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v4

    .line 2
    :cond_d
    iput-object v10, v6, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    iput-boolean v3, v6, Landroidx/fragment/app/p$a;->b:Z

    iput-object v0, v6, Landroidx/fragment/app/p$a;->c:Landroidx/fragment/app/a;

    :cond_e
    move-object v14, v6

    const/4 v15, 0x0

    if-nez p4, :cond_10

    if-eqz v1, :cond_10

    if-eqz v14, :cond_f

    iget-object v1, v14, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    if-ne v1, v10, :cond_f

    iput-object v15, v14, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    :cond_f
    iget-object v4, v0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/i;

    iget v1, v10, Landroidx/fragment/app/Fragment;->b:I

    if-ge v1, v5, :cond_10

    iget v1, v4, Landroidx/fragment/app/i;->o:I

    if-lt v1, v5, :cond_10

    iget-boolean v1, v0, Landroidx/fragment/app/k;->p:Z

    if-nez v1, :cond_10

    invoke-virtual {v4, v10}, Landroidx/fragment/app/i;->T(Landroidx/fragment/app/Fragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/i;->W(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_10
    if-eqz v13, :cond_13

    if-eqz v14, :cond_11

    iget-object v1, v14, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_13

    :cond_11
    if-nez v14, :cond_12

    .line 3
    new-instance v1, Landroidx/fragment/app/p$a;

    invoke-direct {v1}, Landroidx/fragment/app/p$a;-><init>()V

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v14, v1

    .line 4
    :cond_12
    iput-object v10, v14, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    iput-boolean v3, v14, Landroidx/fragment/app/p$a;->e:Z

    iput-object v0, v14, Landroidx/fragment/app/p$a;->f:Landroidx/fragment/app/a;

    :cond_13
    if-nez p4, :cond_14

    if-eqz v12, :cond_14

    if-eqz v14, :cond_14

    iget-object v0, v14, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    if-ne v0, v10, :cond_14

    iput-object v15, v14, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    :cond_14
    return-void
.end method

.method public static c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lj/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static d(Landroidx/fragment/app/u;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/u;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/u;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Lj/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/u;",
            "Lj/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/p$a;",
            ")",
            "Lj/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p3, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lj/g;->isEmpty()Z

    move-result p0

    invoke-virtual {p1}, Lj/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Lj/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/u;",
            "Lj/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/p$a;",
            ")",
            "Lj/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lj/g;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p3, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->v()Landroid/view/View;

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lj/g;->clear()V

    return-object v0
.end method

.method public static g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    .line 1
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->H:Landroidx/fragment/app/Fragment$a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroidx/fragment/app/Fragment$a;->g:Ljava/lang/Object;

    sget-object v3, Landroidx/fragment/app/Fragment;->R:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    :goto_0
    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->H:Landroidx/fragment/app/Fragment$a;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->i:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/Fragment;->R:Ljava/lang/Object;

    if-ne p0, v2, :cond_4

    :goto_1
    move-object p0, v1

    :cond_4
    if-eqz p0, :cond_5

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_8

    .line 5
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->H:Landroidx/fragment/app/Fragment$a;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    sget-object p1, Landroidx/fragment/app/Fragment;->R:Ljava/lang/Object;

    if-ne p0, p1, :cond_7

    :goto_2
    move-object p0, v1

    :cond_7
    if-eqz p0, :cond_8

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    return-object v1

    :cond_9
    sget-object p0, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/q;

    invoke-static {p0, v0}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/u;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p0

    :cond_a
    sget-object p0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/u;

    if-eqz p0, :cond_b

    invoke-static {p0, v0}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/u;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Landroidx/fragment/app/u;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/u;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/u;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static i(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->H:Landroidx/fragment/app/Fragment$a;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    sget-object p2, Landroidx/fragment/app/Fragment;->R:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->H:Landroidx/fragment/app/Fragment$a;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/fragment/app/Fragment$a;->g:Ljava/lang/Object;

    sget-object p2, Landroidx/fragment/app/Fragment;->R:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lj/a;Landroidx/fragment/app/p$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/p$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object p1, p1, Landroidx/fragment/app/p$a;->c:Landroidx/fragment/app/a;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, Landroidx/fragment/app/k;->n:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/k;->n:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/k;->o:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-virtual {p0, p1, v0}, Lj/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static l(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->H:Landroidx/fragment/app/Fragment$a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment$a;->i:Ljava/lang/Object;

    sget-object p2, Landroidx/fragment/app/Fragment;->R:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n(Landroidx/fragment/app/i;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/i;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Landroidx/fragment/app/i;->o:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v3, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/a;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1
    iget-object v8, v9, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/i;

    iget-object v8, v8, Landroidx/fragment/app/i;->q:Landroidx/fragment/app/d;

    invoke-virtual {v8}, Landroidx/fragment/app/d;->h()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    iget-object v8, v9, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_1
    if-ltz v8, :cond_3

    iget-object v10, v9, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/k$a;

    invoke-static {v9, v10, v5, v6, v4}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/k$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2
    :cond_2
    iget-object v10, v9, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v8

    :goto_2
    if-ge v11, v10, :cond_3

    iget-object v12, v9, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/k$a;

    invoke-static {v9, v12, v5, v8, v4}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/k$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3
    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_28

    new-instance v7, Landroid/view/View;

    iget-object v9, v0, Landroidx/fragment/app/i;->p:Landroidx/fragment/app/g;

    .line 4
    iget-object v9, v9, Landroidx/fragment/app/g;->d:Landroid/content/Context;

    .line 5
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    move v14, v8

    :goto_4
    if-ge v14, v15, :cond_28

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 6
    new-instance v13, Lj/a;

    invoke-direct {v13}, Lj/a;-><init>()V

    add-int/lit8 v10, v3, -0x1

    move/from16 v12, p3

    :goto_5
    if-lt v10, v12, :cond_9

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/a;

    invoke-virtual {v11, v9}, Landroidx/fragment/app/a;->e(I)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    iget-object v8, v11, Landroidx/fragment/app/k;->n:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v6, v11, Landroidx/fragment/app/k;->n:Ljava/util/ArrayList;

    iget-object v11, v11, Landroidx/fragment/app/k;->o:Ljava/util/ArrayList;

    if-eqz v16, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v36, v11

    move-object v11, v6

    move-object/from16 v6, v36

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v8, :cond_8

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Lj/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-virtual {v13, v2, v6}, Lj/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    invoke-virtual {v13, v2, v3}, Lj/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, v17

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_5

    .line 7
    :cond_9
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/p$a;

    if-eqz v4, :cond_1b

    .line 8
    iget-object v3, v0, Landroidx/fragment/app/i;->q:Landroidx/fragment/app/d;

    invoke-virtual {v3}, Landroidx/fragment/app/d;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Landroidx/fragment/app/i;->q:Landroidx/fragment/app/d;

    invoke-virtual {v3, v9}, Landroidx/fragment/app/d;->g(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_b

    goto :goto_b

    :cond_b
    iget-object v6, v1, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    iget-object v8, v1, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    invoke-static {v8, v6}, Landroidx/fragment/app/p;->g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object v9

    if-nez v9, :cond_d

    :goto_b
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    :cond_c
    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_16

    :cond_d
    iget-boolean v10, v1, Landroidx/fragment/app/p$a;->b:Z

    iget-boolean v11, v1, Landroidx/fragment/app/p$a;->e:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v6, v10}, Landroidx/fragment/app/p;->i(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v8, v11}, Landroidx/fragment/app/p;->j(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v31, v5

    .line 9
    iget-object v5, v1, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    iget-object v12, v1, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v5, :cond_1a

    if-eqz v5, :cond_12

    if-nez v12, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v32, v14

    iget-boolean v14, v1, Landroidx/fragment/app/p$a;->b:Z

    invoke-virtual {v13}, Lj/g;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v33, v15

    const/4 v15, 0x0

    goto :goto_d

    :cond_f
    invoke-static {v9, v5, v12, v14}, Landroidx/fragment/app/p;->l(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move/from16 v33, v15

    move-object/from16 v15, v16

    :goto_d
    invoke-static {v9, v13, v15, v1}, Landroidx/fragment/app/p;->f(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Lj/a;

    invoke-static {v9, v13, v15, v1}, Landroidx/fragment/app/p;->e(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Lj/a;

    invoke-virtual {v13}, Lj/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v10, :cond_10

    if-nez v11, :cond_10

    goto :goto_f

    :cond_10
    invoke-static {v5, v12, v14}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    const/16 v28, 0x0

    const/16 v30, 0x0

    new-instance v1, Landroidx/fragment/app/n;

    const/16 v27, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v12

    move/from16 v26, v14

    move-object/from16 v29, v9

    invoke-direct/range {v23 .. v30}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLj/a;Landroid/view/View;Landroidx/fragment/app/u;Landroid/graphics/Rect;)V

    invoke-static {v3, v1}, Lu/i;->a(Landroid/view/View;Ljava/lang/Runnable;)Lu/i;

    goto :goto_f

    :cond_11
    invoke-virtual {v13}, Lj/a;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v4, v1, v0}, Landroidx/fragment/app/p;->a(Ljava/util/ArrayList;Lj/a;Ljava/util/Collection;)V

    throw v1

    :cond_12
    :goto_e
    move/from16 v32, v14

    move/from16 v33, v15

    :goto_f
    if-nez v10, :cond_13

    if-nez v11, :cond_13

    goto :goto_c

    .line 10
    :cond_13
    invoke-static {v9, v11, v8, v4, v7}, Landroidx/fragment/app/p;->h(Landroidx/fragment/app/u;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v9, v10, v6, v2, v7}, Landroidx/fragment/app/p;->h(Landroidx/fragment/app/u;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroidx/fragment/app/p;->m(Ljava/util/ArrayList;I)V

    const/4 v6, 0x0

    .line 11
    invoke-virtual {v9, v11, v10, v6}, Landroidx/fragment/app/u;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_c

    if-eqz v8, :cond_14

    if-eqz v11, :cond_14

    .line 12
    iget-boolean v14, v8, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v14, :cond_14

    iget-boolean v14, v8, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v14, :cond_14

    iget-boolean v14, v8, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v14, :cond_14

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroidx/fragment/app/Fragment;->A(Z)V

    invoke-virtual {v9, v11, v6, v1}, Landroidx/fragment/app/u;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v6, v8, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    new-instance v8, Landroidx/fragment/app/l;

    invoke-direct {v8, v1}, Landroidx/fragment/app/l;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v6, v8}, Lu/i;->a(Landroid/view/View;Ljava/lang/Runnable;)Lu/i;

    goto :goto_10

    :cond_14
    const/4 v15, 0x1

    .line 13
    :goto_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v8, :cond_15

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/view/View;

    sget-object v16, Lu/j;->a:Ljava/util/WeakHashMap;

    move/from16 v16, v8

    .line 14
    invoke-virtual {v15}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 16
    invoke-virtual {v15, v8}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    const/4 v15, 0x1

    goto :goto_11

    :cond_15
    const/4 v8, 0x0

    move-object/from16 v23, v9

    move-object/from16 v24, v12

    move-object/from16 v25, v10

    move-object/from16 v26, v5

    move-object/from16 v27, v11

    move-object/from16 v28, v1

    move-object/from16 v29, v8

    move-object/from16 v30, v2

    .line 17
    invoke-virtual/range {v23 .. v30}, Landroidx/fragment/app/u;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v3, v12}, Landroidx/fragment/app/u;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v1, :cond_19

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    sget-object v12, Lu/j;->a:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {v11}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v12

    .line 20
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_16

    goto :goto_14

    :cond_16
    const/4 v14, 0x0

    .line 21
    invoke-virtual {v11, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v13, v12, v14}, Lj/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 23
    check-cast v11, Ljava/lang/String;

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v1, :cond_18

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 24
    invoke-virtual {v11, v12}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_14

    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_18
    :goto_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 25
    :cond_19
    new-instance v10, Landroidx/fragment/app/r;

    move-object/from16 v16, v10

    move/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Landroidx/fragment/app/r;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v10}, Lu/i;->a(Landroid/view/View;Ljava/lang/Runnable;)Lu/i;

    const/4 v3, 0x0

    .line 26
    invoke-static {v5, v3}, Landroidx/fragment/app/p;->m(Ljava/util/ArrayList;I)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v4, v2}, Landroidx/fragment/app/u;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_16

    :cond_1a
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->v()Landroid/view/View;

    throw v1

    :cond_1b
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v3, 0x0

    .line 28
    iget-object v2, v0, Landroidx/fragment/app/i;->q:Landroidx/fragment/app/d;

    invoke-virtual {v2}, Landroidx/fragment/app/d;->h()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroidx/fragment/app/i;->q:Landroidx/fragment/app/d;

    invoke-virtual {v2, v9}, Landroidx/fragment/app/d;->g(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_15

    :cond_1c
    const/4 v2, 0x0

    :goto_15
    if-nez v2, :cond_1d

    goto :goto_16

    :cond_1d
    iget-object v4, v1, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    iget-object v5, v1, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    invoke-static {v5, v4}, Landroidx/fragment/app/p;->g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object v6

    if-nez v6, :cond_1e

    :goto_16
    move/from16 v1, v32

    move/from16 v22, v33

    const/16 v26, 0x1

    goto/16 :goto_1b

    :cond_1e
    iget-boolean v8, v1, Landroidx/fragment/app/p$a;->b:Z

    iget-boolean v9, v1, Landroidx/fragment/app/p$a;->e:Z

    invoke-static {v6, v4, v8}, Landroidx/fragment/app/p;->i(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v5, v9}, Landroidx/fragment/app/p;->j(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v11, v1, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    iget-object v10, v1, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_23

    if-nez v10, :cond_1f

    goto :goto_18

    :cond_1f
    iget-boolean v9, v1, Landroidx/fragment/app/p$a;->b:Z

    invoke-virtual {v13}, Lj/g;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_20

    const/4 v3, 0x0

    goto :goto_17

    :cond_20
    invoke-static {v6, v11, v10, v9}, Landroidx/fragment/app/p;->l(Landroidx/fragment/app/u;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    :goto_17
    invoke-static {v6, v13, v3, v1}, Landroidx/fragment/app/p;->f(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Lj/a;

    invoke-virtual {v13}, Lj/g;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    if-nez v8, :cond_21

    if-nez v15, :cond_21

    goto :goto_18

    :cond_21
    invoke-static {v11, v10, v9}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    const/16 v21, 0x0

    new-instance v3, Landroidx/fragment/app/o;

    move/from16 v18, v9

    move-object v9, v3

    move-object/from16 v17, v10

    move-object v10, v6

    move-object/from16 v16, v11

    move-object v11, v13

    move-object/from16 v23, v12

    const/16 v24, 0x0

    move-object/from16 v12, v24

    move-object/from16 v34, v13

    move-object v13, v1

    move-object/from16 v25, v14

    move/from16 v1, v32

    move-object/from16 v14, v23

    move-object/from16 v35, v15

    move/from16 v22, v33

    const/16 v26, 0x1

    move-object v15, v7

    move-object/from16 v19, v25

    move-object/from16 v20, v8

    invoke-direct/range {v9 .. v21}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/u;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v2, v3}, Lu/i;->a(Landroid/view/View;Ljava/lang/Runnable;)Lu/i;

    move-object/from16 v9, v24

    const/4 v3, 0x0

    goto :goto_19

    :cond_22
    const/4 v3, 0x0

    throw v3

    :cond_23
    :goto_18
    move-object/from16 v23, v12

    move-object/from16 v34, v13

    move-object/from16 v25, v14

    move-object/from16 v35, v15

    move/from16 v1, v32

    move/from16 v22, v33

    const/4 v3, 0x0

    const/16 v26, 0x1

    move-object v9, v3

    :goto_19
    move-object/from16 v10, v35

    if-nez v8, :cond_24

    if-nez v10, :cond_24

    goto/16 :goto_1b

    :cond_24
    move-object/from16 v11, v25

    .line 30
    invoke-static {v6, v10, v5, v11, v7}, Landroidx/fragment/app/p;->h(Landroidx/fragment/app/u;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_25

    goto :goto_1a

    :cond_25
    move-object v3, v10

    :cond_26
    :goto_1a
    invoke-virtual {v6, v8, v7}, Landroidx/fragment/app/u;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 31
    invoke-virtual {v6, v3, v8, v9}, Landroidx/fragment/app/u;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_27

    .line 32
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    move-object v15, v13

    move-object/from16 v16, v8

    move-object/from16 v17, v24

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v23

    invoke-virtual/range {v14 .. v21}, Landroidx/fragment/app/u;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 33
    new-instance v15, Landroidx/fragment/app/m;

    move-object v9, v15

    move-object v10, v8

    move-object v11, v6

    move-object v12, v7

    move-object v8, v13

    move-object v13, v4

    move-object/from16 v14, v23

    move-object v4, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-direct/range {v9 .. v17}, Landroidx/fragment/app/m;-><init>(Ljava/lang/Object;Landroidx/fragment/app/u;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lu/i;->a(Landroid/view/View;Ljava/lang/Runnable;)Lu/i;

    .line 34
    new-instance v3, Landroidx/fragment/app/s;

    move-object/from16 v5, v23

    move-object/from16 v4, v34

    invoke-direct {v3, v5, v4}, Landroidx/fragment/app/s;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v3}, Lu/i;->a(Landroid/view/View;Ljava/lang/Runnable;)Lu/i;

    .line 35
    invoke-virtual {v6, v2, v8}, Landroidx/fragment/app/u;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 36
    new-instance v3, Landroidx/fragment/app/t;

    invoke-direct {v3, v5, v4}, Landroidx/fragment/app/t;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v3}, Lu/i;->a(Landroid/view/View;Ljava/lang/Runnable;)Lu/i;

    :cond_27
    :goto_1b
    add-int/lit8 v14, v1, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v15, v22

    move/from16 v6, v26

    move-object/from16 v5, v31

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_28
    return-void
.end method
