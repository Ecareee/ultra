.class public Lcom/heytap/wearable/support/watchface/gl/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCenter:Landroid/renderscript/Float3;

.field private mInvertModelViewPrj:[F

.field public mLightVector:[F

.field private mLookDirOrigin:Landroid/renderscript/Float3;

.field private mModelView:[F

.field private mModelViewPrj:[F

.field public mPos:[F

.field public mProjectMatrix:[F

.field public mRatio:F

.field private mResultVec:[F

.field private mRightOrigin:Landroid/renderscript/Float3;

.field public mUp:Landroid/renderscript/Float3;

.field private mUpOrigin:Landroid/renderscript/Float3;

.field private mValueLock:Ljava/util/concurrent/locks/Lock;

.field private mVec:[F

.field public mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mLightVector:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    new-instance v1, Landroid/renderscript/Float3;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    new-instance v1, Landroid/renderscript/Float3;

    invoke-direct {v1, v2, v2, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mCenter:Landroid/renderscript/Float3;

    new-instance v1, Landroid/renderscript/Float3;

    invoke-direct {v1}, Landroid/renderscript/Float3;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUpOrigin:Landroid/renderscript/Float3;

    new-instance v1, Landroid/renderscript/Float3;

    invoke-direct {v1}, Landroid/renderscript/Float3;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRightOrigin:Landroid/renderscript/Float3;

    new-instance v1, Landroid/renderscript/Float3;

    invoke-direct {v1, v3, v2, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mLookDirOrigin:Landroid/renderscript/Float3;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelView:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mInvertModelViewPrj:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getDistance(FFF)F
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    sub-float/2addr p3, v0

    invoke-static {p1, p2, p3}, Landroid/opengl/Matrix;->length(FFF)F

    move-result p1

    return p1
.end method

.method public getPixelLength(FFF)F
    .locals 12

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    const/4 p2, 0x1

    aget v0, v4, p2

    iput v0, p1, Landroid/renderscript/Float3;->x:F

    const/4 v1, 0x5

    aget v1, v4, v1

    iput v1, p1, Landroid/renderscript/Float3;->y:F

    const/16 v2, 0x9

    aget v2, v4, v2

    iput v2, p1, Landroid/renderscript/Float3;->z:F

    const/16 p1, 0x10

    new-array v7, p1, [F

    const/4 p1, 0x4

    new-array v9, p1, [F

    mul-float/2addr v0, p3

    const/4 v3, 0x0

    aput v0, v9, v3

    mul-float/2addr v1, p3

    aput v1, v9, p2

    mul-float/2addr p3, v2

    const/4 v0, 0x2

    aput p3, v9, v0

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v11, 0x3

    aput p3, v9, v11

    new-array p1, p1, [F

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    aget p3, p1, v11

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    aget p2, p1, p2

    aget p1, p1, v11

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public getPos(Landroid/renderscript/Float3;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Landroid/renderscript/Float3;->x:F

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p1, Landroid/renderscript/Float3;->y:F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public getPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    return-object v0
.end method

.method public getProjectMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    return-object v0
.end method

.method public getRotate(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p3, Landroid/renderscript/Float3;->x:F

    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p3, Landroid/renderscript/Float3;->y:F

    const/16 v1, 0x8

    aget v1, v0, v1

    iput v1, p3, Landroid/renderscript/Float3;->z:F

    const/4 p3, 0x1

    aget p3, v0, p3

    iput p3, p2, Landroid/renderscript/Float3;->x:F

    const/4 p3, 0x5

    aget p3, v0, p3

    iput p3, p2, Landroid/renderscript/Float3;->y:F

    const/16 p3, 0x9

    aget p3, v0, p3

    iput p3, p2, Landroid/renderscript/Float3;->z:F

    const/4 p2, 0x2

    aget p2, v0, p2

    iput p2, p1, Landroid/renderscript/Float3;->x:F

    const/4 p2, 0x6

    aget p2, v0, p2

    iput p2, p1, Landroid/renderscript/Float3;->y:F

    const/16 p2, 0xa

    aget p2, v0, p2

    iput p2, p1, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public getScreenPos(FFF[F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v4, 0x2

    aput p3, v1, v4

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    iget-object v9, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v11, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    iget-object v13, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    iget-object v15, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    aget v5, v1, v2

    const/4 v6, 0x3

    aget v7, v1, v6

    div-float/2addr v5, v7

    aput v5, p4, v2

    aget v2, v1, v3

    aget v5, v1, v6

    div-float/2addr v2, v5

    aput v2, p4, v3

    aget v2, v1, v4

    aget v1, v1, v6

    div-float/2addr v2, v1

    aput v2, p4, v4

    return-void
.end method

.method public getScreenPos(FFF[F[F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v4, 0x2

    aput p3, v1, v4

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelView:[F

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v11, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    iget-object v13, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    iget-object v15, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelView:[F

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    iget-object v9, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    aget v5, v1, v2

    const/4 v6, 0x3

    aget v7, v1, v6

    div-float/2addr v5, v7

    aput v5, p5, v2

    aget v2, v1, v3

    aget v5, v1, v6

    div-float/2addr v2, v5

    aput v2, p5, v3

    aget v2, v1, v4

    aget v1, v1, v6

    div-float/2addr v2, v1

    aput v2, p5, v4

    return-void
.end method

.method public getViewMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    return-object v0
.end method

.method public getViewMatrixSafe([F)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    aget v1, v1, v0

    aput v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mValueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public getWorldPos(FFF[F)V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p2, 0x2

    aput p3, v0, p2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mInvertModelViewPrj:[F

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    invoke-static {p2, v1, p3, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mInvertModelViewPrj:[F

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    aget p3, p2, v1

    const/4 v0, 0x3

    aget v2, p2, v0

    div-float/2addr p3, v2

    aput p3, p4, v1

    aget p3, p2, p1

    aget p2, p2, v0

    div-float/2addr p3, p2

    aput p3, p4, p1

    return-void
.end method

.method public getWorldPos(FFF[F[F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v4, 0x2

    aput p3, v1, v4

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelView:[F

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v11, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    iget-object v13, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    iget-object v15, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelView:[F

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mInvertModelViewPrj:[F

    iget-object v4, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mModelViewPrj:[F

    invoke-static {v1, v2, v4, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mInvertModelViewPrj:[F

    iget-object v9, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mVec:[F

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mResultVec:[F

    aget v4, v1, v2

    const/4 v5, 0x3

    aget v6, v1, v5

    div-float/2addr v4, v6

    aput v4, p5, v2

    aget v2, v1, v3

    aget v1, v1, v5

    div-float/2addr v2, v1

    aput v2, p5, v3

    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v2, v2, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mCenter:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    const v0, 0x3f524925

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRatio:F

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setUp()V

    return-void
.end method

.method public init(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;F)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mCenter:Landroid/renderscript/Float3;

    iget v0, p2, Landroid/renderscript/Float3;->x:F

    iput v0, p1, Landroid/renderscript/Float3;->x:F

    iget v0, p2, Landroid/renderscript/Float3;->y:F

    iput v0, p1, Landroid/renderscript/Float3;->y:F

    iget p2, p2, Landroid/renderscript/Float3;->z:F

    iput p2, p1, Landroid/renderscript/Float3;->z:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    iget p2, p3, Landroid/renderscript/Float3;->x:F

    iput p2, p1, Landroid/renderscript/Float3;->x:F

    iget p2, p3, Landroid/renderscript/Float3;->y:F

    iput p2, p1, Landroid/renderscript/Float3;->y:F

    iget p2, p3, Landroid/renderscript/Float3;->z:F

    iput p2, p1, Landroid/renderscript/Float3;->z:F

    iput p4, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRatio:F

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setUp()V

    return-void
.end method

.method public setLookAtM(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mCenter:Landroid/renderscript/Float3;

    iget v0, p2, Landroid/renderscript/Float3;->x:F

    iput v0, p1, Landroid/renderscript/Float3;->x:F

    iget v0, p2, Landroid/renderscript/Float3;->y:F

    iput v0, p1, Landroid/renderscript/Float3;->y:F

    iget p2, p2, Landroid/renderscript/Float3;->z:F

    iput p2, p1, Landroid/renderscript/Float3;->z:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    iget p2, p3, Landroid/renderscript/Float3;->x:F

    iput p2, p1, Landroid/renderscript/Float3;->x:F

    iget p2, p3, Landroid/renderscript/Float3;->y:F

    iput p2, p1, Landroid/renderscript/Float3;->y:F

    iget p2, p3, Landroid/renderscript/Float3;->z:F

    iput p2, p1, Landroid/renderscript/Float3;->z:F

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setUp()V

    return-void
.end method

.method public setUp()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRatio:F

    const/4 v2, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    aget v9, v1, v2

    const/4 v3, 0x1

    aget v10, v1, v3

    const/4 v4, 0x2

    aget v11, v1, v4

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mCenter:Landroid/renderscript/Float3;

    iget v12, v1, Landroid/renderscript/Float3;->x:F

    iget v13, v1, Landroid/renderscript/Float3;->y:F

    iget v14, v1, Landroid/renderscript/Float3;->z:F

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    iget v15, v1, Landroid/renderscript/Float3;->x:F

    iget v5, v1, Landroid/renderscript/Float3;->y:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    const/4 v8, 0x0

    move/from16 v16, v5

    move/from16 v17, v1

    invoke-static/range {v7 .. v17}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const-wide v5, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v9, -0x4016de04abbbd2e8L    # -0.7853981633974483

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    double-to-float v1, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    double-to-float v7, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mLightVector:[F

    aput v1, v6, v2

    aput v7, v6, v3

    aput v5, v6, v4

    return-void
.end method

.method public updatePos([F)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    aget p1, p1, v1

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/Camera;->setUp()V

    return-void
.end method

.method public updateProj(FF)V
    .locals 6

    div-float v3, p1, p2

    iput v3, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRatio:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x43960000    # 300.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method
