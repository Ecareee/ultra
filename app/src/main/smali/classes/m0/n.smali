.class public final synthetic Lm0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm0/p;


# direct methods
.method public synthetic constructor <init>(Lm0/p;I)V
    .locals 0

    iput p2, p0, Lm0/n;->a:I

    iput-object p1, p0, Lm0/n;->b:Lm0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lm0/n;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lm0/n;->b:Lm0/p;

    .line 1
    iget-object v1, v0, Lm0/p;->c:Lm0/m;

    .line 2
    iget-object v1, v1, Lm0/d;->e:Lm0/d$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lm0/p;->k:F

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lm0/n;->b:Lm0/p;

    .line 5
    iget-object v1, v0, Lm0/p;->c:Lm0/m;

    .line 6
    iget-object v1, v1, Lm0/d;->e:Lm0/d$b;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lm0/p;->k:F

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
