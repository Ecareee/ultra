.class public Lcom/heytap/wearable/support/watchface/gl/CameraProj;
.super Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;
.source "SourceFile"


# instance fields
.field private mFovy:F

.field private mLightVector:[[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraProj;->mLightVector:[[F

    const/high16 v0, 0x42be0000    # 95.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraProj;->mFovy:F

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

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/CameraProj;->mLightVector:[[F

    return-object v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mPos:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

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

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/CameraProj;->setUp()V

    return-void
.end method

.method public setUp()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    iget v3, v0, Lcom/heytap/wearable/support/watchface/gl/CameraProj;->mFovy:F

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRatio:F

    const/4 v2, 0x0

    const v5, 0x3c23d70a    # 0.01f

    const v6, 0x453b8000    # 3000.0f

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

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/CameraProj;->mLightVector:[[F

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
    .locals 6

    div-float v3, p1, p2

    iput v3, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mRatio:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/Camera;->mProjectMatrix:[F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/CameraProj;->mFovy:F

    const/4 v1, 0x0

    const v4, 0x3c23d70a    # 0.01f

    const v5, 0x453b8000    # 3000.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method
