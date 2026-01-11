.class public Lcom/heytap/wearable/support/watchface/gl/TransformNodeJoint;
.super Lcom/heytap/wearable/support/watchface/gl/TransformNode;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(FFFF)V
    .locals 10

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

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mRotateMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v8

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public scale(FFF)V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mScaleMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v6

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public translate(FFF)V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mModelMatrix:[F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->mTransMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v6

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method
