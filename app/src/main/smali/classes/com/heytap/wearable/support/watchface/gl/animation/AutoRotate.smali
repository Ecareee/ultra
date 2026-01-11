.class public Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;
    }
.end annotation


# instance fields
.field private mAngle:F

.field private mBackDuration:J

.field private mBackTime:J

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastRotateAngle:F

.field private mLastTime:J

.field private mLoop:Z

.field private mRotateAxis:[F

.field private mStartTime:J

.field private mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

.field private mStopAngle:F

.field private mStopDuration:J

.field private mStopTime:J

.field private mTotalRotateAngle:F

.field private mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/TransformNode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mRotateAxis:[F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastTime:J

    iput-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopTime:J

    iput-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopDuration:J

    iput-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mBackTime:J

    iput-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mBackDuration:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopAngle:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastRotateAngle:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    sget-object v2, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLoop:Z

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    const p1, 0x3c23d70a    # 0.01f

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mAngle:F

    const/4 p1, 0x0

    aput v1, v0, p1

    aput v1, v0, v2

    const/4 p1, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    return v0
.end method

.method public isRunning()Z
    .locals 2

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 5

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mRotateAxis:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->rotate(FFFF)V

    iput v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    iput v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastRotateAngle:F

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mAngle:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mRotateAxis:[F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mDuration:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLoop:Z

    return-void
.end method

.method public setInterpolator(Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastTime:J

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->RUNNING:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStartTime:J

    return-void
.end method

.method public startAfterBack(J)V
    .locals 2

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->BACK:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mBackTime:J

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mBackDuration:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastRotateAngle:F

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    return-void
.end method

.method public stop(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopTime:J

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopDuration:J

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mAngle:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopAngle:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastRotateAngle:F

    sget-object p1, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->DECELERATE:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    return-void
.end method

.method public update()V
    .locals 14

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->RUNNING:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastTime:J

    sub-long v7, v0, v7

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastTime:J

    iget-wide v9, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStartTime:J

    sub-long/2addr v0, v9

    iget-boolean v9, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLoop:Z

    if-nez v9, :cond_1

    iget-wide v9, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mDuration:J

    sub-long v0, v9, v0

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v0, v11

    if-gez v13, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    goto :goto_1

    :cond_0
    cmp-long v13, v0, v9

    if-gez v13, :cond_1

    cmp-long v11, v9, v11

    if-lez v11, :cond_1

    long-to-float v0, v0

    long-to-float v1, v9

    div-float/2addr v0, v1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mAngle:F

    invoke-static {v0, v1, v6}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateLinear(FFF)F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mAngle:F

    :goto_0
    long-to-float v1, v7

    mul-float v6, v0, v1

    :goto_1
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    add-float/2addr v0, v6

    rem-float/2addr v0, v5

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mRotateAxis:[F

    aget v4, v5, v4

    aget v3, v5, v3

    aget v2, v5, v2

    :goto_2
    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->rotate(FFFF)V

    goto/16 :goto_3

    :cond_2
    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->DECELERATE:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const v7, 0x3a83126f    # 0.001f

    if-ne v0, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopTime:J

    sub-long/2addr v0, v8

    iget-wide v8, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopDuration:J

    cmp-long v10, v0, v8

    if-gez v10, :cond_3

    long-to-float v10, v8

    cmpl-float v7, v10, v7

    if-lez v7, :cond_3

    long-to-float v0, v0

    long-to-float v1, v8

    div-float/2addr v0, v1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mStopAngle:F

    invoke-static {v0, v6, v1}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateDecrease(FFF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastRotateAngle:F

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    sub-float/2addr v0, v0

    add-float/2addr v0, v1

    rem-float/2addr v0, v5

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mRotateAxis:[F

    aget v4, v5, v4

    aget v3, v5, v3

    aget v2, v5, v2

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mState:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->BACK:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    if-ne v0, v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mBackTime:J

    sub-long/2addr v0, v8

    iget-wide v8, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mBackDuration:J

    cmp-long v10, v0, v8

    if-gez v10, :cond_6

    long-to-float v10, v8

    cmpl-float v7, v10, v7

    if-lez v7, :cond_6

    long-to-float v0, v0

    long-to-float v1, v8

    div-float/2addr v0, v1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_5

    sub-float/2addr v1, v5

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    :cond_5
    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    invoke-static {v0, v1, v6}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateLinear(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mRotateAxis:[F

    aget v4, v5, v4

    aget v3, v5, v3

    aget v2, v5, v2

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->rotate(FFFF)V

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mLastRotateAngle:F

    goto :goto_3

    :cond_6
    iput v6, p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->mTotalRotateAngle:F

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;->start()V

    :cond_7
    :goto_3
    return-void
.end method
