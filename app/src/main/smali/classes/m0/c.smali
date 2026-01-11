.class public final synthetic Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm0/d;

.field public final synthetic b:Z

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lm0/d;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/c;->a:Lm0/d;

    iput-boolean p2, p0, Lm0/c;->b:Z

    iput-wide p3, p0, Lm0/c;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lm0/c;->a:Lm0/d;

    iget-boolean v1, p0, Lm0/c;->b:Z

    iget-wide v2, p0, Lm0/c;->c:J

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[handleAod] mIsAodMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lm0/d;->z:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", animateForAod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", duration = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "WatchFaceEngine"

    invoke-static {v7, v4}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v0, Lm0/d;->z:Z

    if-ne v4, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean v1, v0, Lm0/d;->z:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iput v4, v0, Lm0/d;->B:I

    :cond_1
    iget-object v0, v0, Lm0/d;->b:Lm0/p;

    if-eqz v0, :cond_8

    .line 2
    iget-object v7, v0, Lm0/p;->c:Lm0/m;

    .line 3
    iget-boolean v7, v7, Lm0/m;->T:Z

    const-string v8, "WatchFaceLayout"

    if-nez v7, :cond_2

    const-string v0, "[animateForAod] do not support aod, return!"

    .line 4
    invoke-static {v8, v0}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[animateForAod] enterAod = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v6, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v6, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v1, :cond_6

    .line 6
    iget-object v1, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_5

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    const v9, 0x3ea8f5c3    # 0.33f

    const v10, 0x3f2b851f    # 0.67f

    .line 7
    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v9, v7, v10, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 8
    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    new-instance v7, Lm0/n;

    invoke-direct {v7, v0, v4}, Lm0/n;-><init>(Lm0/p;I)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    new-instance v7, Lm0/q;

    invoke-direct {v7, v0}, Lm0/q;-><init>(Lm0/p;)V

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    iget-object v1, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    new-array v2, v8, [F

    iget v3, v0, Lm0/p;->k:F

    aput v3, v2, v4

    aput v6, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, v0, Lm0/p;->g:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_7

    new-array v1, v8, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    .line 9
    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e4ccccd    # 0.2f

    invoke-direct {v9, v10, v7, v10, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    new-instance v6, Lm0/n;

    invoke-direct {v6, v0, v5}, Lm0/n;-><init>(Lm0/p;I)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    new-instance v6, Lm0/r;

    invoke-direct {v6, v0}, Lm0/r;-><init>(Lm0/p;)V

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    iget-object v1, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    new-array v2, v8, [F

    iget v3, v0, Lm0/p;->k:F

    aput v3, v2, v4

    aput v7, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, v0, Lm0/p;->h:Landroid/animation/ValueAnimator;

    :goto_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
