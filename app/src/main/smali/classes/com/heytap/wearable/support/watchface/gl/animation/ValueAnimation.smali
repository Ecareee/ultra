.class public Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;
.super Lcom/heytap/wearable/support/watchface/gl/animation/Animation;
.source "SourceFile"


# instance fields
.field private mBegin:F

.field private mDelayTime:J

.field private mDuration:J

.field private mLastTime:J

.field private mPauseTime:J

.field private mRunning:Z

.field private mStartTime:J

.field private mTarget:F

.field private mValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDelayTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDuration:J

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDelayTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mBegin:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iput-wide p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDuration:J

    return-void
.end method


# virtual methods
.method public change(FF)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mBegin:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    :cond_0
    return-void
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mPauseTime:J

    return-void
.end method

.method public resume()V
    .locals 6

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    return-void
.end method

.method public start(FFJJ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mPauseTime:J

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mLastTime:J

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mBegin:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iput-wide p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDuration:J

    iput-wide p5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDelayTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    return-void
.end method

.method public stopWithValue(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    return-void
.end method

.method public update()V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDelayTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    long-to-float v0, v0

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mBegin:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    invoke-static {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateIncrease(FFF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;->onStop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateInterpolator()V
    .locals 15

    move-object v0, p0

    iget-boolean v1, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    sub-long v5, v1, v3

    iget-wide v7, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDelayTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const/4 v6, 0x0

    cmpg-float v9, v5, v6

    if-gez v9, :cond_0

    iput-wide v1, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mLastTime:J

    return-void

    :cond_0
    iget-wide v9, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDuration:J

    long-to-float v11, v9

    cmpg-float v11, v5, v11

    if-gez v11, :cond_3

    iget-wide v13, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mLastTime:J

    sub-long v11, v1, v13

    sub-long/2addr v13, v3

    sub-long/2addr v13, v7

    long-to-float v3, v13

    long-to-float v4, v9

    const v7, 0x3f07ae14    # 0.53f

    const v8, 0x3ef0a3d7    # 0.47f

    div-float/2addr v5, v4

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v6, v9, v9}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateBezier(FFFFF)F

    move-result v10

    div-float/2addr v3, v4

    invoke-static {v3, v6, v6, v9, v9}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateBezier(FFFFF)F

    move-result v13

    sub-float/2addr v10, v13

    invoke-static {v5, v6, v7, v8, v9}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateBezier(FFFFF)F

    move-result v5

    invoke-static {v3, v6, v7, v8, v9}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateBezier(FFFFF)F

    move-result v3

    sub-float/2addr v5, v3

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    cmpl-float v6, v10, v3

    if-lez v6, :cond_1

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iget v7, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mBegin:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v10

    mul-float/2addr v5, v4

    div-float/2addr v6, v5

    long-to-float v4, v11

    mul-float/2addr v6, v4

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    add-float/2addr v4, v6

    iput v4, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    :cond_1
    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    sub-float v5, v4, v5

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mBegin:F

    sub-float v6, v4, v6

    mul-float/2addr v6, v5

    cmpg-float v3, v6, v3

    if-gez v3, :cond_2

    iput v4, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;->onStop()V

    :cond_2
    iput-wide v1, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mLastTime:J

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    iput-boolean v3, v0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;->onStop()V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDelayTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    long-to-float v0, v0

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mDuration:J

    long-to-float v3, v1

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    long-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-interface {p1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mBegin:F

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mTarget:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mValue:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAnimation;->mRunning:Z

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/Animation;->onStop()V

    :cond_2
    :goto_0
    return-void
.end method
