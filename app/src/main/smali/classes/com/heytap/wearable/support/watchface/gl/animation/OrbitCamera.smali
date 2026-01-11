.class public Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrbitCamera"


# instance fields
.field private mAxis:Landroid/renderscript/Float3;

.field private mAxisLook:Landroid/renderscript/Float3;

.field private mAxisRight:Landroid/renderscript/Float3;

.field private mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

.field private mCenter:Landroid/renderscript/Float3;

.field private mDecrease:Z

.field private mDis:F

.field private mDuration:J

.field private mLastDegreeX:F

.field private mLastDegreeY:F

.field private mLook:Landroid/renderscript/Float3;

.field private mPos:Landroid/renderscript/Float3;

.field private mRight:Landroid/renderscript/Float3;

.field private mRunning:Z

.field private mStartTime:J

.field private mTargetDegreeX:F

.field private mTargetDegreeY:F

.field private mTargetUp:Landroid/renderscript/Float3;

.field private mUp:Landroid/renderscript/Float3;

.field private mValueLock:Ljava/util/concurrent/locks/Lock;

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/Camera;Landroid/renderscript/Float3;F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/renderscript/Float3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v3}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v1, v1, v3}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetUp:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v2, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v0, v3, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mPos:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v1, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCenter:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v1, v1, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxis:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v1, v2, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxisRight:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v2, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxisLook:Landroid/renderscript/Float3;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mViewMatrix:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDecrease:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iput p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDis:F

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCenter:Landroid/renderscript/Float3;

    return-void
.end method

.method private getDegreeX()F
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getRotate(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxis:Landroid/renderscript/Float3;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x43b40000    # 360.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxisRight:Landroid/renderscript/Float3;

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Landroid/renderscript/Float3;

    invoke-direct {v2}, Landroid/renderscript/Float3;-><init>()V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxisLook:Landroid/renderscript/Float3;

    invoke-static {v2, v3, v4}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->cross(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxis:Landroid/renderscript/Float3;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    sub-float v0, v1, v0

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxisRight:Landroid/renderscript/Float3;

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Landroid/renderscript/Float3;

    invoke-direct {v2}, Landroid/renderscript/Float3;-><init>()V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxisLook:Landroid/renderscript/Float3;

    invoke-static {v2, v3, v4}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->cross(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result v2

    const v3, -0x457ced91    # -0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    sub-float v0, v1, v0

    :cond_3
    return v0
.end method


# virtual methods
.method public OrbitTo(FF)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mPos:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getPos(Landroid/renderscript/Float3;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->getDegreeX()F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mPos:Landroid/renderscript/Float3;

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDis:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v3, p1

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr p1, v2

    :cond_0
    sub-float/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->rotateRoundSphere(FF)V

    return-void
.end method

.method public OrbitTo(FFJ)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mStartTime:J

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mPos:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getPos(Landroid/renderscript/Float3;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->getDegreeX()F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mPos:Landroid/renderscript/Float3;

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDis:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v3, p1

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr p1, v2

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mStartTime:J

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetDegreeX:F

    sub-float/2addr p2, v1

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetDegreeY:F

    iput-wide p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDuration:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeX:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDecrease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    return v0
.end method

.method public orbitSphereAnimation(FFJ)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mStartTime:J

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float p1, v0, p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42340000    # 45.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    mul-float/2addr v2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float p2, v2, p2

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mStartTime:J

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetDegreeX:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetDegreeY:F

    iput-wide p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDuration:J

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeX:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDecrease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public rotateRoundSphere(FF)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getRotate(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetUp:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    iput v2, v0, Landroid/renderscript/Float3;->x:F

    iget v2, v1, Landroid/renderscript/Float3;->y:F

    iput v2, v0, Landroid/renderscript/Float3;->y:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    iget v3, v1, Landroid/renderscript/Float3;->y:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    invoke-static {v0, p2, v2, v3, v1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;FFFF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetUp:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxis:Landroid/renderscript/Float3;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->dot(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, v0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, v0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, p2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxis:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    iget v2, v0, Landroid/renderscript/Float3;->y:F

    iget v0, v0, Landroid/renderscript/Float3;->z:F

    invoke-static {p2, p1, v1, v2, v0}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;FFFF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mPos:Landroid/renderscript/Float3;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCenter:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    invoke-virtual {p1, p2, v0, v1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setLookAtM(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    iget v3, v1, Landroid/renderscript/Float3;->y:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    invoke-static {v0, p2, v2, v3, v1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;FFFF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRight:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    iget v3, v1, Landroid/renderscript/Float3;->y:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    invoke-static {v0, p2, v2, v3, v1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;FFFF)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxis:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    iget v2, v0, Landroid/renderscript/Float3;->y:F

    iget v0, v0, Landroid/renderscript/Float3;->z:F

    invoke-static {p2, p1, v1, v2, v0}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;FFFF)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mAxis:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    iget v2, v0, Landroid/renderscript/Float3;->y:F

    iget v0, v0, Landroid/renderscript/Float3;->z:F

    invoke-static {p2, p1, v1, v2, v0}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;FFFF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mPos:Landroid/renderscript/Float3;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCenter:Landroid/renderscript/Float3;

    iget v0, p2, Landroid/renderscript/Float3;->x:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLook:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    iget v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDis:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p1, Landroid/renderscript/Float3;->x:F

    iget v0, p2, Landroid/renderscript/Float3;->y:F

    iget v2, v1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p1, Landroid/renderscript/Float3;->y:F

    iget v0, p2, Landroid/renderscript/Float3;->z:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    iput v1, p1, Landroid/renderscript/Float3;->z:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mUp:Landroid/renderscript/Float3;

    invoke-virtual {v0, p1, p2, v1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setLookAtM(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    return-void
.end method

.method public update()V
    .locals 12

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mStartTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDuration:J

    long-to-float v2, v2

    iget v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetDegreeX:F

    iget v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mTargetDegreeY:F

    iget v5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeX:F

    iget v6, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeY:F

    iget-boolean v7, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDecrease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-wide v8, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mDuration:J

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    const/4 v11, 0x0

    if-nez v10, :cond_1

    iput-boolean v11, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    invoke-virtual {p0, v3, v3}, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->rotateRoundSphere(FF)V

    return-void

    :cond_1
    long-to-float v0, v0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    long-to-float v2, v8

    const v10, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v10

    if-lez v2, :cond_2

    long-to-float v1, v8

    div-float v1, v0, v1

    :cond_2
    const/4 v0, 0x0

    if-nez v7, :cond_3

    invoke-static {v1, v0, v3}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateLinear(FFF)F

    move-result v2

    invoke-static {v1, v0, v4}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateLinear(FFF)F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {v1, v0, v3}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateDecrease(FFF)F

    move-result v2

    invoke-static {v1, v0, v4}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateDecrease(FFF)F

    move-result v0

    :goto_0
    sub-float v1, v2, v5

    sub-float v3, v0, v6

    invoke-virtual {p0, v1, v3}, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->rotateRoundSphere(FF)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iput v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mLastDegreeY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    iput-boolean v11, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mRunning:Z

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/OrbitCamera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
