.class public Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

.field private mCenter:Landroid/renderscript/Float3;

.field private mDegree:F

.field private mDelayTime:J

.field private mDis:F

.field private mDisTarget:F

.field private mDuration:J

.field private mLook:Landroid/renderscript/Float3;

.field private mLookCur:Landroid/renderscript/Float3;

.field private mLookTarget:Landroid/renderscript/Float3;

.field private mPosCur:Landroid/renderscript/Float3;

.field private mPosTarget:Landroid/renderscript/Float3;

.field private mRightCur:Landroid/renderscript/Float3;

.field private mRotateAxis:Landroid/renderscript/Float3;

.field private mRunning:Z

.field private mStartTime:J

.field private mUp:Landroid/renderscript/Float3;

.field private mUpCur:Landroid/renderscript/Float3;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/Camera;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLook:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mPosTarget:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookTarget:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRotateAxis:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookCur:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mPosCur:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRightCur:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mUpCur:Landroid/renderscript/Float3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRunning:Z

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    new-instance p1, Landroid/renderscript/Float3;

    iget v0, p2, Landroid/renderscript/Float3;->x:F

    iget v1, p2, Landroid/renderscript/Float3;->y:F

    iget p2, p2, Landroid/renderscript/Float3;->z:F

    invoke-direct {p1, v0, v1, p2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCenter:Landroid/renderscript/Float3;

    new-instance p1, Landroid/renderscript/Float3;

    iget p2, p3, Landroid/renderscript/Float3;->x:F

    iget v0, p3, Landroid/renderscript/Float3;->y:F

    iget p3, p3, Landroid/renderscript/Float3;->z:F

    invoke-direct {p1, p2, v0, p3}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mUp:Landroid/renderscript/Float3;

    return-void
.end method


# virtual methods
.method public IsRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRunning:Z

    return v0
.end method

.method public TranslateTo(Landroid/renderscript/Float3;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRunning:Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCenter:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mUp:Landroid/renderscript/Float3;

    invoke-virtual {v0, p1, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setLookAtM(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    return-void
.end method

.method public TranslateTo(Landroid/renderscript/Float3;Landroid/renderscript/Float3;JJ)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRunning:Z

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mPosTarget:Landroid/renderscript/Float3;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLook:Landroid/renderscript/Float3;

    iget v0, p2, Landroid/renderscript/Float3;->x:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCenter:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/renderscript/Float3;->x:F

    iget v0, p2, Landroid/renderscript/Float3;->y:F

    iget v2, v1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/renderscript/Float3;->y:F

    iget p2, p2, Landroid/renderscript/Float3;->z:F

    iget v0, v1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/renderscript/Float3;->z:F

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->length(Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDis:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLook:Landroid/renderscript/Float3;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookTarget:Landroid/renderscript/Float3;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mPosTarget:Landroid/renderscript/Float3;

    iget v0, p2, Landroid/renderscript/Float3;->x:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCenter:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/renderscript/Float3;->x:F

    iget v0, p2, Landroid/renderscript/Float3;->y:F

    iget v2, v1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/renderscript/Float3;->y:F

    iget p2, p2, Landroid/renderscript/Float3;->z:F

    iget v0, v1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/renderscript/Float3;->z:F

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->length(Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDisTarget:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookTarget:Landroid/renderscript/Float3;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRotateAxis:Landroid/renderscript/Float3;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookTarget:Landroid/renderscript/Float3;

    invoke-static {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->cross(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookTarget:Landroid/renderscript/Float3;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLook:Landroid/renderscript/Float3;

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->angle(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDegree:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mStartTime:J

    iput-wide p5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDuration:J

    iput-wide p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDelayTime:J

    return-void
.end method

.method public update()V
    .locals 9

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDelayTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    iget-wide v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDuration:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    long-to-float v5, v3

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    long-to-float v0, v0

    long-to-float v1, v3

    div-float v2, v0, v1

    :cond_2
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDis:F

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDisTarget:F

    invoke-static {v2, v0, v1}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateLinear(FFF)F

    move-result v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mDegree:F

    mul-float v5, v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookCur:Landroid/renderscript/Float3;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRotateAxis:Landroid/renderscript/Float3;

    iget v6, v1, Landroid/renderscript/Float3;->x:F

    iget v7, v1, Landroid/renderscript/Float3;->y:F

    iget v8, v1, Landroid/renderscript/Float3;->z:F

    invoke-static/range {v3 .. v8}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;Landroid/renderscript/Float3;FFFF)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mPosCur:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCenter:Landroid/renderscript/Float3;

    iget v3, v2, Landroid/renderscript/Float3;->x:F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookCur:Landroid/renderscript/Float3;

    iget v5, v4, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    iput v5, v1, Landroid/renderscript/Float3;->x:F

    iget v3, v2, Landroid/renderscript/Float3;->y:F

    iget v5, v4, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    iput v5, v1, Landroid/renderscript/Float3;->y:F

    iget v2, v2, Landroid/renderscript/Float3;->z:F

    iget v3, v4, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    iput v3, v1, Landroid/renderscript/Float3;->z:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRightCur:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mUp:Landroid/renderscript/Float3;

    invoke-static {v0, v4, v1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->cross(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mUpCur:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRightCur:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mLookCur:Landroid/renderscript/Float3;

    invoke-static {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->cross(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mPosCur:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCenter:Landroid/renderscript/Float3;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mUp:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setLookAtM(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mPosTarget:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mCenter:Landroid/renderscript/Float3;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mUp:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setLookAtM(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/CenterCamera;->mRunning:Z

    :goto_0
    return-void
.end method
