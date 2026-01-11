.class public Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;
.super Lcom/heytap/wearable/support/watchface/gl/Camera;
.source "SourceFile"


# instance fields
.field private mLightVector:[[F

.field public mShadowCenter:Landroid/renderscript/Float3;

.field public mShadowPos:[F

.field public mShadowUp:Landroid/renderscript/Float3;

.field public mViewShadowMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/Camera;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mLightVector:[[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mViewShadowMatrix:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowPos:[F

    new-instance v0, Landroid/renderscript/Float3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowUp:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0, v1, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowCenter:Landroid/renderscript/Float3;

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method public getLightVector()[[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mLightVector:[[F

    return-object v0
.end method

.method public getViewShadowMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mViewShadowMatrix:[F

    return-object v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

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

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->setUp()V

    return-void
.end method

.method public init(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;FLandroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    const/4 v1, 0x2

    aput p1, v0, v1

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mCenter:Landroid/renderscript/Float3;

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    iput p4, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRatio:F

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowPos:[F

    iget p2, p5, Landroid/renderscript/Float3;->x:F

    aput p2, p1, v2

    iget p2, p5, Landroid/renderscript/Float3;->y:F

    aput p2, p1, v3

    iget p2, p5, Landroid/renderscript/Float3;->z:F

    aput p2, p1, v1

    iput-object p6, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowCenter:Landroid/renderscript/Float3;

    iput-object p7, p0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowUp:Landroid/renderscript/Float3;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->setUp()V

    return-void
.end method

.method public setUp()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, -0x3a860000    # -4000.0f

    const/high16 v8, 0x457a0000    # 4000.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v9, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mViewMatrix:[F

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    aget v11, v1, v2

    const/4 v3, 0x1

    aget v12, v1, v3

    const/4 v4, 0x2

    aget v13, v1, v4

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mCenter:Landroid/renderscript/Float3;

    iget v14, v1, Landroid/renderscript/Float3;->x:F

    iget v15, v1, Landroid/renderscript/Float3;->y:F

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mUp:Landroid/renderscript/Float3;

    iget v6, v5, Landroid/renderscript/Float3;->x:F

    iget v7, v5, Landroid/renderscript/Float3;->y:F

    iget v5, v5, Landroid/renderscript/Float3;->z:F

    const/4 v10, 0x0

    move/from16 v16, v1

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v5

    invoke-static/range {v9 .. v19}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mViewShadowMatrix:[F

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowPos:[F

    aget v18, v5, v2

    aget v19, v5, v3

    aget v20, v5, v4

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowCenter:Landroid/renderscript/Float3;

    iget v6, v5, Landroid/renderscript/Float3;->x:F

    iget v7, v5, Landroid/renderscript/Float3;->y:F

    iget v5, v5, Landroid/renderscript/Float3;->z:F

    iget-object v8, v0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mShadowUp:Landroid/renderscript/Float3;

    iget v9, v8, Landroid/renderscript/Float3;->x:F

    iget v10, v8, Landroid/renderscript/Float3;->y:F

    iget v8, v8, Landroid/renderscript/Float3;->z:F

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v8

    invoke-static/range {v16 .. v26}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->mLightVector:[[F

    aget-object v5, v1, v2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v2

    aget-object v5, v1, v2

    const/4 v7, 0x0

    aput v7, v5, v3

    aget-object v5, v1, v2

    aput v7, v5, v4

    aget-object v5, v1, v3

    aput v7, v5, v2

    aget-object v5, v1, v3

    aput v6, v5, v3

    aget-object v5, v1, v3

    aput v6, v5, v4

    aget-object v5, v1, v4

    aput v7, v5, v2

    aget-object v2, v1, v4

    aput v6, v2, v3

    aget-object v1, v1, v4

    aput v6, v1, v4

    return-void
.end method

.method public updateProj(FF)V
    .locals 8

    div-float/2addr p2, p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    const/high16 p1, -0x3d380000    # -100.0f

    mul-float v4, p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v5, p2, p1

    const/4 v1, 0x0

    const/high16 v2, -0x3d380000    # -100.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v6, -0x3a860000    # -4000.0f

    const/high16 v7, 0x457a0000    # 4000.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public updateProj(FFFF)V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    const/4 v1, 0x0

    const/high16 v6, -0x3a860000    # -4000.0f

    const/high16 v7, 0x457a0000    # 4000.0f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method
