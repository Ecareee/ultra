.class public Lcom/heytap/wearable/support/watchface/gl/RenderObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

.field private mMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

.field private mModelMatrix:[F

.field private mParamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private mPosX:F

.field private mPosY:F

.field private mPosZ:F

.field private mScale:F

.field private mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

.field private mTextures:Ljava/lang/Object;

.field private mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTextures:Ljava/lang/Object;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mParamList:Ljava/util/ArrayList;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mModelMatrix:[F

    const/4 v1, 0x0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mPosX:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mPosY:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mPosZ:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mScale:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private activeTexture([Lcom/heytap/wearable/support/watchface/gl/material/Texture;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/gl/material/Texture;->activeTexture(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawMeshes([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getIsShow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginDraw()V

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getTexIndex()S

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTextures:Ljava/lang/Object;

    instance-of v5, v4, [[Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    if-eqz v5, :cond_0

    check-cast v4, [[Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    aget-object v3, v4, v3

    invoke-direct {p0, v3}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->activeTexture([Lcom/heytap/wearable/support/watchface/gl/material/Texture;)V

    :cond_0
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    invoke-virtual {v3, v2}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateEdgeBlendParam([F)V

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->draw()V

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endDraw()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->drawMeshes([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawMeshesInstanced([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;IF)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getIsShow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginDraw()V

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getTexIndex()S

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTextures:Ljava/lang/Object;

    instance-of v5, v4, [[Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    if-eqz v5, :cond_0

    check-cast v4, [[Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    aget-object v3, v4, v3

    invoke-direct {p0, v3}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->activeTexture([Lcom/heytap/wearable/support/watchface/gl/material/Texture;)V

    :cond_0
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    invoke-virtual {v3, v2}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateMeshData(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateEdgeBlendParam([F)V

    invoke-virtual {v2, p2, p3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->drawInstanced(IF)V

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endDraw()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->drawMeshes([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public ApplyTransform(Lcom/heytap/wearable/support/watchface/gl/TransformNode;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->useProgram()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->getModelMatrix()[F

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateWorldMatrix([F)V

    :cond_0
    return-void
.end method

.method public addParam([F)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mParamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyParam(I)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->useProgram()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mParamList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {v0, v1, p1}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateParam([FI)V

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->useProgram()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateViewData(Lcom/heytap/wearable/support/watchface/gl/Camera;)V

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->ApplyTransform(Lcom/heytap/wearable/support/watchface/gl/TransformNode;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mParamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->applyParam(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTextures:Ljava/lang/Object;

    if-eqz v0, :cond_2

    instance-of v1, v0, [Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    if-eqz v1, :cond_2

    check-cast v0, [Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->activeTexture([Lcom/heytap/wearable/support/watchface/gl/material/Texture;)V

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->drawMeshes([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    :cond_3
    return-void
.end method

.method public drawInstanced(IF)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->useProgram()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;->updateViewData(Lcom/heytap/wearable/support/watchface/gl/Camera;)V

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->ApplyTransform(Lcom/heytap/wearable/support/watchface/gl/TransformNode;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mParamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->applyParam(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTextures:Ljava/lang/Object;

    if-eqz v0, :cond_2

    instance-of v1, v0, [Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    if-eqz v1, :cond_2

    check-cast v0, [Lcom/heytap/wearable/support/watchface/gl/material/Texture;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->activeTexture([Lcom/heytap/wearable/support/watchface/gl/material/Texture;)V

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1, p2}, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->drawMeshesInstanced([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;IF)V

    :cond_3
    return-void
.end method

.method public setCamera(Lcom/heytap/wearable/support/watchface/gl/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mCamera:Lcom/heytap/wearable/support/watchface/gl/Camera;

    return-void
.end method

.method public setMesh([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    return-void
.end method

.method public setShaderProgram(Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mShaderProgram:Lcom/heytap/wearable/support/watchface/gl/material/ShaderProgram;

    return-void
.end method

.method public setTexture(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTextures:Ljava/lang/Object;

    return-void
.end method

.method public setTransform(Lcom/heytap/wearable/support/watchface/gl/TransformNode;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/RenderObject;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    return-void
.end method
