.class public Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;
.super Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;
.source "SourceFile"


# instance fields
.field private mUColor:I

.field private mUColorName:Ljava/lang/String;

.field private mULightVector:[I

.field private mULightVectorName:[Ljava/lang/String;

.field private mUOrigin:I

.field private mUOriginName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVector:[I

    const-string v0, "uLightVector[0]"

    const-string v1, "uLightVector[1]"

    const-string v2, "uLightVector[2]"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVectorName:[Ljava/lang/String;

    const-string v0, "uColor"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUColorName:Ljava/lang/String;

    const-string v0, "uOrigin"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUOriginName:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public init()V
    .locals 4

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->init()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVector:[I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVectorName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVector:[I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVectorName:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVector:[I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVectorName:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUColorName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUColor:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUOriginName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUOrigin:I

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

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUColor:I

    invoke-static {v0, v6, v4, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mUOrigin:I

    invoke-static {v0, v6, v2, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

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

    check-cast p1, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/CameraOrtho;->getLightVector()[[F

    move-result-object p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVector:[I

    aget v0, v0, v4

    aget-object v1, p1, v4

    invoke-static {v0, v3, v1, v4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVector:[I

    aget v0, v0, v3

    aget-object v1, p1, v3

    invoke-static {v0, v3, v1, v4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DFluidLight;->mULightVector:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    aget-object p1, p1, v1

    invoke-static {v0, v3, p1, v4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    return-void
.end method
