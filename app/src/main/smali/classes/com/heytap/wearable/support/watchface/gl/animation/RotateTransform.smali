.class public Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIRST_CONTROL_VALUE:F = 0.9f

.field private static final KEEP_TIME:J = 0xe6L

.field private static final SECOND_CONTROL_VALUE:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "RotateCamera"


# instance fields
.field private mBeginHeading:F

.field private mBeginPitch:F

.field private mControlHeading:[F

.field private mControlPitch:[F

.field private mLastHeading:F

.field private mLastPitch:F

.field private mPos:Landroid/renderscript/Float3;

.field private mRunning:Z

.field private mStartTime:J

.field private mTargetHeading:F

.field private mTargetPitch:F

.field private mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

.field private mValueLock:Ljava/util/concurrent/locks/Lock;

.field private mViewMatrix:[F

.field private mXAxis:Landroid/renderscript/Float3;

.field private mYAxis:Landroid/renderscript/Float3;

.field private mZAxis:Landroid/renderscript/Float3;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/TransformNode;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mViewMatrix:[F

    new-instance v0, Landroid/renderscript/Float3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mYAxis:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v3}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mZAxis:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v2, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mXAxis:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v1, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mPos:Landroid/renderscript/Float3;

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mLastHeading:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mLastPitch:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTargetHeading:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTargetPitch:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mBeginHeading:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mBeginPitch:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mControlHeading:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mControlPitch:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mRunning:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mValueLock:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    return-void
.end method

.method private updateMatrix(FF)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mXAxis:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mYAxis:Landroid/renderscript/Float3;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mZAxis:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->getLocalAxis(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mYAxis:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    iget v3, v1, Landroid/renderscript/Float3;->y:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->rotate(FFFF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mXAxis:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mYAxis:Landroid/renderscript/Float3;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mZAxis:Landroid/renderscript/Float3;

    invoke-virtual {p1, v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->getLocalAxis(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mXAxis:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    iget v2, v0, Landroid/renderscript/Float3;->y:F

    iget v0, v0, Landroid/renderscript/Float3;->z:F

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->rotateAppend(FFFF)V

    return-void
.end method


# virtual methods
.method public setValue(FF)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTargetHeading:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTargetPitch:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mLastHeading:F

    iput v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mBeginHeading:F

    iget v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mLastPitch:F

    iput v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mBeginPitch:F

    sub-float/2addr p1, v2

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mControlHeading:[F

    const v5, 0x3f666666    # 0.9f

    mul-float v6, p1, v5

    add-float/2addr v6, v2

    const/4 v7, 0x0

    aput v6, v4, v7

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v6

    add-float/2addr p1, v2

    const/4 v2, 0x1

    aput p1, v4, v2

    sub-float/2addr p2, v3

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mControlPitch:[F

    mul-float/2addr v5, p2

    add-float/2addr v5, v3

    aput v5, p1, v7

    mul-float/2addr p2, v6

    add-float/2addr p2, v3

    aput p2, p1, v2

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mStartTime:J

    iput-boolean v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public update()V
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTargetHeading:F

    iget v4, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mTargetPitch:F

    iget v5, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mBeginHeading:F

    iget v6, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mBeginPitch:F

    iget-object v7, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mControlHeading:[F

    const/4 v8, 0x0

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v7, v7, v10

    iget-object v11, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mControlPitch:[F

    aget v12, v11, v8

    aget v10, v11, v10

    iget-wide v13, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v13

    iget-object v11, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v15, 0xe6

    cmp-long v11, v13, v15

    if-lez v11, :cond_0

    iput-boolean v8, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mRunning:Z

    :cond_0
    iget-boolean v8, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mRunning:Z

    if-eqz v8, :cond_1

    long-to-float v2, v2

    const/high16 v3, 0x43660000    # 230.0f

    div-float/2addr v2, v3

    invoke-static {v2, v5, v9, v7, v0}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateBezier(FFFFF)F

    move-result v0

    invoke-static {v2, v6, v12, v10, v4}, Lcom/heytap/wearable/support/watchface/gl/math/Interpolate;->interpolateBezier(FFFFF)F

    move-result v2

    iput v0, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mLastHeading:F

    iput v2, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mLastPitch:F

    invoke-direct {v1, v0, v2}, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->updateMatrix(FF)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/heytap/wearable/support/watchface/gl/animation/RotateTransform;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
