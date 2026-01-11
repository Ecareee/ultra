.class public Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/wearable/support/watchface/gl/Disposable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderProgram"


# instance fields
.field public mProgram:I

.field public mUniformParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mUniformParamMap:Ljava/util/Map;

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shader error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShaderProgram"

    invoke-static {v0, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p1, -0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->init()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    return-void
.end method

.method public getProgram()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    return v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mUniformParamMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mUniformParamMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUniformLocation don\'t have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShaderProgram"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mUniformParamMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public setUniform(Ljava/lang/String;[F)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public setUniform1f(Ljava/lang/String;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public setUniform1i(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public setUniform2fv(Ljava/lang/String;[F)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public setUniform2iv(Ljava/lang/String;[I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    return-void
.end method

.method public setUniform4iv(Ljava/lang/String;[I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    return-void
.end method

.method public updateEdgeBlendParam([F)V
    .locals 0

    return-void
.end method

.method public updateLightParam()V
    .locals 0

    return-void
.end method

.method public updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 0

    return-void
.end method

.method public updateModelMatrix([F)V
    .locals 0

    return-void
.end method

.method public updateParam([FI)V
    .locals 0

    return-void
.end method

.method public updateViewData(Lcom/heytap/wearable/support/watchface/gl/Camera;)V
    .locals 0

    return-void
.end method

.method public updateWorldMatrix([F)V
    .locals 0

    return-void
.end method

.method public useProgram()V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
