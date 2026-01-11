.class public Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;
.super Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;
.source "SourceFile"


# instance fields
.field private mUOrigin:I

.field private mUOriginName:Ljava/lang/String;

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;-><init>()V

    const-string v0, "uOrigin"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;->mUOriginName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->init()V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;->mUOriginName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;->mUOrigin:I

    return-void
.end method

.method public updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 14

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getModelMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v3

    aget v4, v2, v1

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v8, v2, v7

    invoke-static {v0, v1, v4, v6, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    aget v4, v3, v1

    aget v6, v3, v5

    aget v3, v3, v7

    invoke-static {v0, v1, v4, v6, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v0, 0x4

    new-array v3, v0, [F

    new-array v12, v0, [F

    aget v0, v2, v1

    aput v0, v12, v1

    aget v0, v2, v5

    aput v0, v12, v5

    aget v0, v2, v7

    aput v0, v12, v7

    const/4 v0, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v12, v0

    iget-object v10, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;->mViewMatrix:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;->mUOrigin:I

    invoke-static {v0, v5, v3, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    return-void
.end method

.method public updateViewData(Lcom/heytap/wearable/support/watchface/gl/Camera;)V
    .locals 3

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getViewMatrix()[F

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;->mViewMatrix:[F

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUProjMatrix:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/Camera;->getProjectMatrix()[F

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->mUViewMatrix:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DBalloonDepth;->mViewMatrix:[F

    invoke-static {p1, v1, v2, v0, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
