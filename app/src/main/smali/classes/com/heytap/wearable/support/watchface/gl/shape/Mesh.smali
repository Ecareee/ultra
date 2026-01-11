.class public Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBoundingBox:[F

.field public mChildMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

.field public mColor:[F

.field public mEdgeBlendParam:[F

.field public mImpulseVector:[F

.field public mIndexBuffer:[I

.field public mIndexCount:I

.field private mIsShow:Z

.field public mModelMatrix:[F

.field public mPos:[F

.field public mRot:[F

.field public mScale:[F

.field public mTexIndex:S

.field public mVertexBuffer:[I

.field public mVertexCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mScale:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mImpulseVector:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mColor:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mRot:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mEdgeBlendParam:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mModelMatrix:[F

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mBoundingBox:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mChildMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    const/4 v1, 0x0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v1, v3, v1

    iput-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    new-array v3, v2, [I

    aput v1, v3, v1

    iput-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    const/4 v3, -0x1

    iput-short v3, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mTexIndex:S

    iput-boolean v2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIsShow:Z

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public beginDraw()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    aget v0, v0, v1

    const v1, 0x8893

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public beginUpdateData(I)V
    .locals 2

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    if-nez v1, :cond_0

    array-length v1, p1

    invoke-static {v1, p1, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    :cond_0
    const p1, 0x8892

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    aget v0, v1, v0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public beginUpdateIndex(I)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    :cond_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    aget p1, p1, v1

    const v0, 0x8893

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    mul-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const v2, 0x88e4

    invoke-static {v0, p1, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public beginUpdateVertex(II)V
    .locals 2

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    if-nez v1, :cond_0

    array-length v1, p1

    invoke-static {v1, p1, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    aget p1, p1, v0

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    const/4 p2, 0x0

    const v1, 0x88e4

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/nio/FloatBuffer;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public convertToShortBuffer(Ljava/util/ArrayList;)Ljava/nio/ShortBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/nio/ShortBuffer;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public create()V
    .locals 0

    return-void
.end method

.method public draw()V
    .locals 4

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    const/4 v1, 0x4

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void
.end method

.method public drawInstanced(IF)V
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x4

    const/16 v1, 0x1403

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2, p1}, Landroid/opengl/GLES30;->glDrawElementsInstanced(IIIII)V

    return-void
.end method

.method public endDraw()V
    .locals 2

    const v0, 0x8893

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public endUpdateData()V
    .locals 2

    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public endUpdateIndex()V
    .locals 2

    const v0, 0x8893

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public endUpdateVertex()V
    .locals 2

    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public genDynamicData(II)V
    .locals 2

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    if-nez v1, :cond_0

    array-length v1, p1

    invoke-static {v1, p1, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    aget p1, p1, v0

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    const/4 p2, 0x0

    const v1, 0x88e8

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public getBoundingBox()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mBoundingBox:[F

    return-object v0
.end method

.method public getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mChildMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    return-object v0
.end method

.method public getColor()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mColor:[F

    return-object v0
.end method

.method public getEdgeBlendParam()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mEdgeBlendParam:[F

    return-object v0
.end method

.method public getExtendX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImpulseVector()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mImpulseVector:[F

    return-object v0
.end method

.method public getIndexCount()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    return v0
.end method

.method public getIsShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIsShow:Z

    return v0
.end method

.method public getMinX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModelMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mModelMatrix:[F

    return-object v0
.end method

.method public getPos()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    return-object v0
.end method

.method public getRot()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mRot:[F

    return-object v0
.end method

.method public getScale()[F
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mScale:[F

    return-object v0
.end method

.method public getTexIndex()S
    .locals 1

    iget-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mTexIndex:S

    return v0
.end method

.method public getVertexCount()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    return v0
.end method

.method public setChildMeshes([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mChildMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    return-void
.end method

.method public setColor([F)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mColor:[F

    return-void
.end method

.method public setEdgeBlendParam([F)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mEdgeBlendParam:[F

    return-void
.end method

.method public setImpulseVector([F)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mImpulseVector:[F

    return-void
.end method

.method public setIsShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIsShow:Z

    return-void
.end method

.method public setModelMatrix([F)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mModelMatrix:[F

    return-void
.end method

.method public setPos([F)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    return-void
.end method

.method public setRot([F)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mRot:[F

    return-void
.end method

.method public setScale([F)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mScale:[F

    return-void
.end method

.method public setTexIndex(S)V
    .locals 0

    iput-short p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mTexIndex:S

    return-void
.end method

.method public updateData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 4

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x8892

    const/4 v2, 0x0

    const v3, 0x88e4

    invoke-static {v1, v0, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v0, v2, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x4

    invoke-static {v1, v0, p1, p2}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    :cond_1
    if-eqz p3, :cond_2

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 p2, p1, 0x5

    mul-int/lit8 p2, p2, 0x4

    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    invoke-static {v1, p2, p1, p3}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    :cond_2
    return-void
.end method

.method public updateDataDynamic(Ljava/nio/FloatBuffer;II)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    if-eqz p1, :cond_0

    invoke-static {v1, p2, p3, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public updateIndexData(ILjava/nio/ShortBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    aget v0, v0, v1

    const v1, 0x8893

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 v0, p1, 0x2

    const v2, 0x88e4

    invoke-static {v1, v0, p2, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    return-void
.end method

.method public updateIndexSubData(Ljava/nio/ShortBuffer;II)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x8893

    mul-int/lit8 p2, p2, 0x2

    mul-int/lit8 p3, p3, 0x2

    invoke-static {v0, p2, p3, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public updateSubVertexData(Ljava/nio/FloatBuffer;II)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x8892

    mul-int/lit8 p2, p2, 0x4

    mul-int/lit8 p3, p3, 0x4

    invoke-static {v0, p2, p3, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method
