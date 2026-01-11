.class public Landroidx/fragment/app/c;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$a;
    }
.end annotation


# instance fields
.field public final g:Landroidx/fragment/app/e;

.field public final h:Landroidx/lifecycle/h;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Lj/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/c$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$a;-><init>(Landroidx/fragment/app/c;)V

    .line 1
    new-instance v1, Landroidx/fragment/app/e;

    invoke-direct {v1, v0}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/g;)V

    .line 2
    iput-object v1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    new-instance v0, Landroidx/lifecycle/h;

    invoke-direct {v0, p0}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/g;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    return-void
.end method

.method public static g(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Landroidx/fragment/app/h;)Z
    .locals 4

    sget-object v0, Landroidx/lifecycle/d$b;->c:Landroidx/lifecycle/d$b;

    check-cast p0, Landroidx/fragment/app/i;

    .line 1
    iget-object v1, p0, Landroidx/fragment/app/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/i;->f:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroidx/fragment/app/i;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->N:Landroidx/lifecycle/h;

    .line 4
    iget-object v3, v3, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/d$b;

    .line 5
    invoke-virtual {v3}, Landroidx/lifecycle/d$b;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v2, Landroidx/fragment/app/Fragment;->N:Landroidx/lifecycle/h;

    .line 6
    invoke-virtual {v1, v0}, Landroidx/lifecycle/h;->g(Landroidx/lifecycle/d$b;)V

    const/4 v1, 0x1

    .line 7
    :cond_3
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/g;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/g;->k()Ljava/lang/Object;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->i()Landroidx/fragment/app/h;

    move-result-object v2

    invoke-static {v2}, Landroidx/fragment/app/c;->h(Landroidx/fragment/app/h;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    :cond_5
    return v1

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/c;->i:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/c;->j:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/c;->k:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lx/a;->b(Landroidx/lifecycle/g;)Lx/a;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lx/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 1
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/i;->I(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->b()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p0, Landroidx/fragment/app/c;->m:Lj/h;

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, v0, p2}, Lj/h;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {p2, v0}, Lj/h;->g(I)V

    const-string p2, "FragmentActivity"

    if-nez p1, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p3, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 3
    iget-object p3, p3, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast p3, Landroidx/fragment/app/g;

    iget-object p3, p3, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/i;->O(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity result no fragment exists for who: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget v0, Ll/a;->b:I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->b()V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->i(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 1
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v1, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Landroidx/fragment/app/i;->d(Landroidx/fragment/app/g;Landroidx/fragment/app/d;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android:support:fragments"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 3
    iget-object v2, v2, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/g;

    instance-of v3, v2, Landroidx/lifecycle/r;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/i;->a0(Landroid/os/Parcelable;)V

    const-string v1, "android:support:next_request_index"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/c;->l:I

    const-string v1, "android:support:request_indicies"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android:support:request_fragment_who"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lj/h;

    array-length v4, v1

    invoke-direct {v3, v4}, Lj/h;-><init>(I)V

    iput-object v3, p0, Landroidx/fragment/app/c;->m:Lj/h;

    move v3, v0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroidx/fragment/app/c;->m:Lj/h;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Lj/h;->f(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "FragmentActivity"

    const-string v2, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    :goto_2
    iget-object v1, p0, Landroidx/fragment/app/c;->m:Lj/h;

    if-nez v1, :cond_4

    new-instance v1, Lj/h;

    invoke-direct {v1}, Lj/h;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/c;->m:Lj/h;

    iput v0, p0, Landroidx/fragment/app/c;->l:I

    :cond_4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    sget-object v0, Landroidx/lifecycle/d$a;->ON_CREATE:Landroidx/lifecycle/d$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/d$a;)V

    iget-object p1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 7
    iget-object p1, p1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/g;

    iget-object p1, p1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/i;->k()V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/i;->l(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/i;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/i;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 1
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->m()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/d$a;->ON_DESTROY:Landroidx/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/d$a;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->n()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/g;

    iget-object p1, p1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/i;->j(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/g;

    iget-object p1, p1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/i;->C(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->o(Z)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {p1}, Landroidx/fragment/app/e;->b()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 1
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/i;->D(Landroid/view/Menu;)V

    .line 2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/c;->j:Z

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 1
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i;->H(I)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/d$a;->ON_PAUSE:Landroidx/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/d$a;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->F(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/d$a;->ON_RESUME:Landroidx/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/d$a;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Landroidx/fragment/app/i;->u:Z

    iput-boolean v1, v0, Landroidx/fragment/app/i;->v:Z

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/fragment/app/i;->H(I)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 3
    iget-object p2, p2, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/g;

    iget-object p2, p2, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/i;->G(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object p2, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {p2}, Landroidx/fragment/app/e;->b()V

    shr-int/lit8 p1, p1, 0x10

    const p2, 0xffff

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Landroidx/fragment/app/c;->m:Lj/h;

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p2, p1, p3}, Lj/h;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {p3, p1}, Lj/h;->g(I)V

    const-string p1, "FragmentActivity"

    if-nez p2, :cond_0

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p3, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 3
    iget-object p3, p3, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast p3, Landroidx/fragment/app/g;

    iget-object p3, p3, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {p3, p2}, Landroidx/fragment/app/i;->O(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity result no fragment exists for who: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/c;->j:Z

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->b()V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->K()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    .line 3
    invoke-static {v0}, Landroidx/fragment/app/c;->h(Landroidx/fragment/app/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/d$a;->ON_STOP:Landroidx/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/d$a;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->b0()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android:support:fragments"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {v0}, Lj/h;->h()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/c;->l:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {v0}, Lj/h;->h()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {v1}, Lj/h;->h()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {v3}, Lj/h;->h()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {v3, v2}, Lj/h;->e(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Landroidx/fragment/app/c;->m:Lj/h;

    invoke-virtual {v3, v2}, Lj/h;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    iget-boolean v1, p0, Landroidx/fragment/app/c;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/c;->i:Z

    iget-object v1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 1
    iget-object v1, v1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/g;

    iget-object v1, v1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    .line 2
    iput-boolean v0, v1, Landroidx/fragment/app/i;->u:Z

    iput-boolean v0, v1, Landroidx/fragment/app/i;->v:Z

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/i;->H(I)V

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {v1}, Landroidx/fragment/app/e;->b()V

    iget-object v1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/g;

    iget-object v1, v1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->K()V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    sget-object v2, Landroidx/lifecycle/d$a;->ON_START:Landroidx/lifecycle/d$a;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/d$a;)V

    iget-object v1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 6
    iget-object v1, v1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/g;

    iget-object v1, v1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    .line 7
    iput-boolean v0, v1, Landroidx/fragment/app/i;->u:Z

    iput-boolean v0, v1, Landroidx/fragment/app/i;->v:Z

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroidx/fragment/app/i;->H(I)V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->b()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    .line 1
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 2
    iget-object v1, v1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/g;

    iget-object v1, v1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    .line 3
    invoke-static {v1}, Landroidx/fragment/app/c;->h(Landroidx/fragment/app/h;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/c;->g:Landroidx/fragment/app/e;

    .line 5
    iget-object v1, v1, Landroidx/fragment/app/e;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/g;

    iget-object v1, v1, Landroidx/fragment/app/g;->g:Landroidx/fragment/app/i;

    .line 6
    iput-boolean v0, v1, Landroidx/fragment/app/i;->v:Z

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroidx/fragment/app/i;->H(I)V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/lifecycle/h;

    sget-object v1, Landroidx/lifecycle/d$a;->ON_STOP:Landroidx/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/d$a;)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroidx/fragment/app/c;->g(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroidx/fragment/app/c;->g(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroidx/fragment/app/c;->g(I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroidx/fragment/app/c;->g(I)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
