.class public Lcom/heytap/wearable/support/watchface/gl/TransformNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mGlobeMatrix:[F

.field public mModelMatrix:[F

.field public mOriginPosX:F

.field public mOriginPosY:F

.field public mOriginPosZ:F

.field public mOriginScaleX:F

.field public mOriginScaleY:F

.field public mOriginScaleZ:F

.field public mParentNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

.field public mRotateMatrix:[F

.field public mScaleMatrix:[F

.field public mTransMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mGlobeMatrix:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosY:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosZ:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleY:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleZ:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mParentNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mGlobeMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public getLocalAxis(Landroid/renderscript/Float3;Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Landroid/renderscript/Float3;->x:F

    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p1, Landroid/renderscript/Float3;->y:F

    const/16 v1, 0x8

    aget v1, v0, v1

    iput v1, p1, Landroid/renderscript/Float3;->z:F

    const/4 p1, 0x1

    aget p1, v0, p1

    iput p1, p2, Landroid/renderscript/Float3;->x:F

    const/4 p1, 0x5

    aget p1, v0, p1

    iput p1, p2, Landroid/renderscript/Float3;->y:F

    const/16 p1, 0x9

    aget p1, v0, p1

    iput p1, p2, Landroid/renderscript/Float3;->z:F

    const/4 p1, 0x2

    aget p1, v0, p1

    iput p1, p3, Landroid/renderscript/Float3;->x:F

    const/4 p1, 0x6

    aget p1, v0, p1

    iput p1, p3, Landroid/renderscript/Float3;->y:F

    const/16 p1, 0xa

    aget p1, v0, p1

    iput p1, p3, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public getModelMatrix()[F
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mParentNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mGlobeMatrix:[F

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->getModelMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mGlobeMatrix:[F

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    return-object v0
.end method

.method public getPos(Landroid/renderscript/Float3;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    const/16 v1, 0xc

    aget v1, v0, v1

    iput v1, p1, Landroid/renderscript/Float3;->x:F

    const/16 v1, 0xd

    aget v1, v0, v1

    iput v1, p1, Landroid/renderscript/Float3;->y:F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mGlobeMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleX:F

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleY:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleZ:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->scale(FFF)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosX:F

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosY:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosZ:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->translate(FFF)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->updateModelMatrix()V

    return-void
.end method

.method public rotateAppend(FFFF)V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v5

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->updateModelMatrix()V

    return-void
.end method

.method public scale(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->updateModelMatrix()V

    return-void
.end method

.method public setOrignPos(FFF)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosX:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosY:F

    iput p3, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginPosZ:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->translate(FFF)V

    return-void
.end method

.method public setOrignScale(FFF)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleX:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleY:F

    iput p3, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mOriginScaleZ:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->scale(FFF)V

    return-void
.end method

.method public setParentNode(Lcom/heytap/wearable/support/watchface/gl/TransformNode;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mParentNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    return-void
.end method

.method public translate(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->updateModelMatrix()V

    return-void
.end method

.method public updateModelMatrix()V
    .locals 14

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v12, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    iget-object v10, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v12

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method
