.class public Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;
.super Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;
.source "SourceFile"


# instance fields
.field private mUColor:I

.field private mUColorName:Ljava/lang/String;

.field private mUCoordScale:I

.field private mUCoordScaleName:Ljava/lang/String;

.field private mULightColor:[I

.field private mULightColorName:[Ljava/lang/String;

.field private mULightCount:I

.field private mULightCountName:Ljava/lang/String;

.field private mULightVector:[I

.field private mULightVectorName:[Ljava/lang/String;

.field private mUOrigin:I

.field private mUOriginName:Ljava/lang/String;

.field public mUViewShadowMatrix:I

.field private mUViewShadowMatrixName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightVector:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightColor:[I

    const-string v1, "uLightVector[0]"

    const-string v2, "uLightVector[1]"

    const-string v3, "uLightVector[2]"

    const-string v4, "uLightVector[3]"

    const-string v5, "uLightVector[4]"

    const-string v6, "uLightVector[5]"

    const-string v7, "uLightVector[6]"

    const-string v8, "uLightVector[7]"

    const-string v9, "uLightVector[8]"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightVectorName:[Ljava/lang/String;

    const-string v1, "uLightColor[0]"

    const-string v2, "uLightColor[1]"

    const-string v3, "uLightColor[2]"

    const-string v4, "uLightColor[3]"

    const-string v5, "uLightColor[4]"

    const-string v6, "uLightColor[5]"

    const-string v7, "uLightColor[6]"

    const-string v8, "uLightColor[7]"

    const-string v9, "uLightColor[8]"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightColorName:[Ljava/lang/String;

    const-string v0, "uLightCount"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightCountName:Ljava/lang/String;

    const-string v0, "uColor"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUColorName:Ljava/lang/String;

    const-string v0, "uOrigin"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUOriginName:Ljava/lang/String;

    const-string v0, "uViewShadowMatrix"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUViewShadowMatrixName:Ljava/lang/String;

    const-string v0, "uCoordScale"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUCoordScaleName:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public init()V
    .locals 4

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->init()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightVectorName:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightVector:[I

    iget v3, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    aget-object v1, v1, v0

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    aput v1, v2, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightColor:[I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightColorName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightCountName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightCount:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUColorName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUColor:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUOriginName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUOrigin:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUViewShadowMatrixName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUViewShadowMatrix:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUCoordScaleName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUCoordScale:I

    return-void
.end method

.method public updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 10

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getModelMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v3

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getColor()[F

    move-result-object v4

    aget v5, v2, v1

    const/4 v6, 0x1

    aget v7, v2, v6

    const/4 v8, 0x2

    aget v9, v2, v8

    invoke-static {v0, v1, v5, v7, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    aget v5, v3, v1

    aget v7, v3, v6

    aget v3, v3, v8

    invoke-static {v0, v1, v5, v7, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUColor:I

    invoke-static {v0, v6, v4, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUOrigin:I

    invoke-static {v0, v6, v2, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    instance-of v0, p1, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->getLight()[Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->getLightCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightVector:[I

    aget v4, v4, v3

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v5

    invoke-static {v4, v6, v5, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightColor:[I

    aget v4, v4, v3

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getColor()[F

    move-result-object v5

    invoke-static {v4, v6, v5, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mULightCount:I

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->getLightCount()I

    move-result v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUCoordScale:I

    const v1, 0x3f1eb852    # 0.62f

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUCoordScale:I

    const v1, 0x3ee147ae    # 0.44f

    :goto_1
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    return-void
.end method

.method public updateViewData(Lcom/heytap/wearable/support/watchface/gl/Camera;)V
    .locals 5

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getViewMatrix()[F

    move-result-object v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUProjMatrix:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getProjectMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewMatrix:I

    invoke-static {v1, v3, v4, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewPos:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getPosition()[F

    move-result-object v1

    invoke-static {v0, v3, v1, v4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloon;->mUViewShadowMatrix:I

    check-cast p1, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->getViewShadowMatrix()[F

    move-result-object p1

    invoke-static {v0, v3, v4, p1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
