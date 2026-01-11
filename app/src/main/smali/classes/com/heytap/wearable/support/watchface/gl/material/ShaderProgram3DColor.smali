.class public Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;
.super Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;
.source "SourceFile"


# instance fields
.field private mAColor:I

.field private mAVertexColorName:Ljava/lang/String;

.field private mUBaseColor:I

.field private mUBaseColorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;-><init>()V

    const-string v0, "uBaseColor"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mUBaseColorName:Ljava/lang/String;

    const-string v0, "aColor"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mAVertexColorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->init()V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mUBaseColorName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mUBaseColor:I

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mAVertexColorName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mAColor:I

    return-void
.end method

.method public updateColor(FFFF)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mUBaseColor:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3D;->updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mAColor:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram3DColor;->mAColor:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getVertexCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    mul-int/lit8 v6, p1, 0x4

    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

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
