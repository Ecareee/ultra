.class public final Lm0/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lm0/p;


# direct methods
.method public constructor <init>(Lm0/p;)V
    .locals 0

    iput-object p1, p0, Lm0/q;->a:Lm0/p;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "WatchFaceLayout"

    const-string v0, "[onAnimationCancel] mEnterAodAnimation cancel"

    invoke-static {p1, v0}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lm0/q;->a:Lm0/p;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lm0/p;->i:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "[onAnimationEnd] mEnterAodAnimation end, mCancelEnterAodAnimation = "

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lm0/q;->a:Lm0/p;

    .line 3
    iget-boolean v0, v0, Lm0/p;->i:Z

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchFaceLayout"

    invoke-static {v0, p1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lm0/q;->a:Lm0/p;

    .line 5
    iget-boolean v0, p1, Lm0/p;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lm0/p;->i:Z

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p1, Lm0/p;->k:F

    .line 8
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lm0/q;->a:Lm0/p;

    .line 10
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 11
    iget-object p1, p1, Lm0/d;->d:Lo0/a$a;

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 12
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lm0/q;->a:Lm0/p;

    .line 13
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 14
    iget-object p1, p1, Lm0/d;->c:Lm0/d$c;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lm0/q;->a:Lm0/p;

    .line 16
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 17
    invoke-virtual {p1}, Lm0/d;->n()V

    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "WatchFaceLayout"

    const-string v0, "[onAnimationStart] mEnterAodAnimation start"

    invoke-static {p1, v0}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lm0/q;->a:Lm0/p;

    .line 1
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 2
    iget-object p1, p1, Lm0/d;->e:Lm0/d$b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lm0/q;->a:Lm0/p;

    .line 4
    iget-object p1, p1, Lm0/p;->c:Lm0/m;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
