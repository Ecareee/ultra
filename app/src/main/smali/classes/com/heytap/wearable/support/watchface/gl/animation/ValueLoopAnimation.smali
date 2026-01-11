.class public Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDelayTime:J

.field private mDeltaTime:J

.field private mDuration:J

.field private mEnd:F

.field private mPauseTime:J

.field private mRunning:Z

.field private mStart:F

.field private mStartTime:J

.field private mValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mDeltaTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mRunning:Z

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mValue:F

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mRunning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mPauseTime:J

    return-void
.end method

.method public resume()V
    .locals 6

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mRunning:Z

    return-void
.end method

.method public start(FFJJ)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStart:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mEnd:F

    iput-wide p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mDuration:J

    iput-wide p5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mDelayTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mPauseTime:J

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStart:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mRunning:Z

    return-void
.end method

.method public update()V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mDelayTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mDeltaTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mDuration:J

    rem-long/2addr v0, v2

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStart:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mEnd:F

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mEnd:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mStart:F

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueLoopAnimation;->mValue:F

    return-void
.end method
