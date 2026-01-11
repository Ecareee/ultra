.class public Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;
.super Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;
.source "SourceFile"


# instance fields
.field public mACoordinate:I

.field private mACoordinateName:Ljava/lang/String;

.field public mANormal:I

.field private mANormalName:Ljava/lang/String;

.field public mAPosition:I

.field private mAPositionName:Ljava/lang/String;

.field public mUEdgeBlend:I

.field private mUEdgeBlendName:Ljava/lang/String;

.field public mULightParam:I

.field private mULightParamName:Ljava/lang/String;

.field public mULightVector:I

.field private mULightVectorName:Ljava/lang/String;

.field public mUModelMatrix:I

.field private mUModelMatrixName:Ljava/lang/String;

.field public mUParam0:I

.field private mUParam0Name:Ljava/lang/String;

.field public mUProjMatrix:I

.field private mUProjMatrixName:Ljava/lang/String;

.field public mUTexture0:I

.field private mUTexture0Name:Ljava/lang/String;

.field public mUTexture1:I

.field private mUTexture1Name:Ljava/lang/String;

.field public mUTexture2:I

.field private mUTexture2Name:Ljava/lang/String;

.field public mUViewMatrix:I

.field private mUViewMatrixName:Ljava/lang/String;

.field public mUViewPos:I

.field private mUViewPosName:Ljava/lang/String;

.field public mUWorldMatrix:I

.field private mUWorldMatrixName:Ljava/lang/String;

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;-><init>()V

    const-string v0, "uProjMatrix"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUProjMatrixName:Ljava/lang/String;

    const-string v0, "uViewMatrix"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewMatrixName:Ljava/lang/String;

    const-string v0, "uWorldMatrix"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUWorldMatrixName:Ljava/lang/String;

    const-string v0, "uModelMatrix"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUModelMatrixName:Ljava/lang/String;

    const-string v0, "uLightVector"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightVectorName:Ljava/lang/String;

    const-string v0, "uLightParam"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightParamName:Ljava/lang/String;

    const-string v0, "uViewPos"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewPosName:Ljava/lang/String;

    const-string v0, "uEdgeBlend"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUEdgeBlendName:Ljava/lang/String;

    const-string v0, "uParam0"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUParam0Name:Ljava/lang/String;

    const-string v0, "uTexture"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture0Name:Ljava/lang/String;

    const-string v0, "uTexture1"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture1Name:Ljava/lang/String;

    const-string v0, "uTexture2"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture2Name:Ljava/lang/String;

    const-string v0, "aPosition"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mAPositionName:Ljava/lang/String;

    const-string v0, "aCoordinate"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mACoordinateName:Ljava/lang/String;

    const-string v0, "aNormal"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mANormalName:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mViewMatrix:[F

    return-void
.end method


# virtual methods
.method public endDraw()V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mAPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mACoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mANormal:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public init()V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUProjMatrixName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUProjMatrix:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewMatrixName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewMatrix:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUWorldMatrixName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUWorldMatrix:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUModelMatrixName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUModelMatrix:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightVectorName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightVector:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightParamName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightParam:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewPosName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewPos:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUEdgeBlendName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUEdgeBlend:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUParam0Name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUParam0:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture0Name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture0:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture1Name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture1:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture2Name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture2:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mAPositionName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mAPosition:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mACoordinateName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mACoordinate:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mANormalName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mANormal:I

    return-void
.end method

.method public updateEdgeBlendParam([F)V
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUEdgeBlend:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public updateLightParam([F)V
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightParam:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 7

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getModelMatrix()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->updateModelMatrix([F)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mAPosition:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mAPosition:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mACoordinate:I

    if-ltz v0, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mACoordinate:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getVertexCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v6, v0, 0x4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_1
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mANormal:I

    if-ltz v0, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mANormal:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getVertexCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    mul-int/lit8 v6, p1, 0x4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_2
    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture0:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture1:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUTexture2:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public updateModelMatrix([F)V
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUModelMatrix:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public updateParam([FI)V
    .locals 2

    iget p2, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUParam0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public updateViewData(Lcom/heytap/wearable/support/watchface/gl/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mViewMatrix:[F

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getViewMatrixSafe([F)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUProjMatrix:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getProjectMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewMatrix:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mViewMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mULightVector:I

    iget-object v1, p1, Lcom/heytap/wearable/support/watchface/gl/Camera;->mLightVector:[F

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewPos:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getPosition()[F

    move-result-object p1

    invoke-static {v0, v2, p1, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public updateWorldMatrix([F)V
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUWorldMatrix:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
