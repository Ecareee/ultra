.class public Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;
.super Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;
.source "SourceFile"


# instance fields
.field private mACoordinate:I

.field private mACoordinateName:Ljava/lang/String;

.field private mANormal:I

.field private mANormalName:Ljava/lang/String;

.field private mAPosition:I

.field private mAPositionName:Ljava/lang/String;

.field private mUTexture:I

.field private mUTextureName:Ljava/lang/String;

.field public mUWorldMatrix:I

.field private mUWorldMatrixName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mAPosition:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mACoordinate:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mANormal:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUTexture:I

    const-string v0, "uTexture"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUTextureName:Ljava/lang/String;

    const-string v0, "aPosition"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mAPositionName:Ljava/lang/String;

    const-string v0, "aCoordinate"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mACoordinateName:Ljava/lang/String;

    const-string v0, "aNormal"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mANormalName:Ljava/lang/String;

    const-string v0, "uWorldMatrix"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUWorldMatrixName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endDraw()V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mAPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mACoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mANormal:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public init()V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUTextureName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUTexture:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mAPositionName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mAPosition:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mACoordinateName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mACoordinate:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mANormalName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mANormal:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUWorldMatrixName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUWorldMatrix:I

    return-void
.end method

.method public updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 7

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mAPosition:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mAPosition:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mACoordinate:I

    if-ltz v0, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mACoordinate:I

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
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mANormal:I

    if-ltz v0, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mANormal:I

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
    return-void
.end method

.method public updateWorldMatrix([F)V
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgramPlane2D;->mUWorldMatrix:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
