.class public Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;
.source "SourceFile"


# static fields
.field public static sAlpha:F = 1.0f


# instance fields
.field private mColor:[F

.field public mColorByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColorByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public initParticleMesh(Ljava/util/LinkedList;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/heytap/wearable/support/watchface/gl/particle/Particle;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v2, 0x3

    new-array v4, v3, [F

    iput-object v4, v0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mPos:[F

    mul-int/lit8 v4, v2, 0x2

    new-array v5, v4, [F

    mul-int/lit8 v6, v2, 0x4

    new-array v7, v6, [F

    iput-object v7, v0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColor:[F

    new-array v7, v1, [S

    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    iget-boolean v12, v11, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    if-eqz v12, :cond_0

    iget v12, v11, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    iget v14, v11, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    shr-int/lit8 v15, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    const/high16 v17, 0xff0000

    and-int v17, v14, v17

    shr-int/lit8 v9, v17, 0x10

    int-to-float v9, v9

    div-float v9, v9, v16

    const v17, 0xff00

    and-int v17, v14, v17

    shr-int/lit8 v13, v17, 0x8

    int-to-float v13, v13

    div-float v13, v13, v16

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    div-float v14, v14, v16

    move-object/from16 v16, v8

    iget-object v8, v0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mPos:[F

    mul-int/lit8 v17, v10, 0xc

    add-int/lit8 v18, v17, 0x0

    iget-object v11, v11, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    move/from16 v19, v2

    iget v2, v11, Landroid/renderscript/Float3;->x:F

    sub-float v20, v2, v12

    aput v20, v8, v18

    add-int/lit8 v18, v17, 0x1

    move/from16 v20, v1

    iget v1, v11, Landroid/renderscript/Float3;->y:F

    add-float v21, v1, v12

    aput v21, v8, v18

    add-int/lit8 v18, v17, 0x2

    iget v11, v11, Landroid/renderscript/Float3;->z:F

    aput v11, v8, v18

    add-int/lit8 v18, v17, 0x3

    add-float v21, v2, v12

    aput v21, v8, v18

    add-int/lit8 v18, v17, 0x4

    add-float v21, v1, v12

    aput v21, v8, v18

    add-int/lit8 v18, v17, 0x5

    aput v11, v8, v18

    add-int/lit8 v18, v17, 0x6

    add-float v21, v2, v12

    aput v21, v8, v18

    add-int/lit8 v18, v17, 0x7

    sub-float v21, v1, v12

    aput v21, v8, v18

    add-int/lit8 v18, v17, 0x8

    aput v11, v8, v18

    add-int/lit8 v18, v17, 0x9

    sub-float/2addr v2, v12

    aput v2, v8, v18

    add-int/lit8 v2, v17, 0xa

    sub-float/2addr v1, v12

    aput v1, v8, v2

    add-int/lit8 v17, v17, 0xb

    aput v11, v8, v17

    mul-int/lit8 v1, v10, 0x8

    add-int/lit8 v2, v1, 0x0

    const/4 v8, 0x0

    aput v8, v5, v2

    add-int/lit8 v2, v1, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v2

    add-int/lit8 v2, v1, 0x2

    aput v8, v5, v2

    add-int/lit8 v2, v1, 0x3

    aput v8, v5, v2

    add-int/lit8 v2, v1, 0x4

    aput v8, v5, v2

    add-int/lit8 v2, v1, 0x5

    const/4 v8, 0x0

    aput v8, v5, v2

    add-int/lit8 v2, v1, 0x6

    aput v8, v5, v2

    add-int/lit8 v1, v1, 0x7

    aput v8, v5, v1

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColor:[F

    mul-int/lit8 v2, v10, 0x10

    add-int/lit8 v8, v2, 0x0

    aput v9, v1, v8

    add-int/lit8 v8, v2, 0x1

    aput v13, v1, v8

    add-int/lit8 v8, v2, 0x2

    aput v14, v1, v8

    add-int/lit8 v8, v2, 0x3

    aput v15, v1, v8

    add-int/lit8 v8, v2, 0x4

    aput v9, v1, v8

    add-int/lit8 v8, v2, 0x5

    aput v13, v1, v8

    add-int/lit8 v8, v2, 0x6

    aput v14, v1, v8

    add-int/lit8 v8, v2, 0x7

    aput v15, v1, v8

    add-int/lit8 v8, v2, 0x8

    aput v9, v1, v8

    add-int/lit8 v8, v2, 0x9

    aput v13, v1, v8

    add-int/lit8 v8, v2, 0xa

    aput v14, v1, v8

    add-int/lit8 v8, v2, 0xb

    aput v15, v1, v8

    add-int/lit8 v8, v2, 0xc

    aput v9, v1, v8

    add-int/lit8 v8, v2, 0xd

    aput v13, v1, v8

    add-int/lit8 v8, v2, 0xe

    aput v14, v1, v8

    add-int/lit8 v2, v2, 0xf

    aput v15, v1, v2

    mul-int/lit8 v1, v10, 0x6

    add-int/lit8 v2, v1, 0x0

    mul-int/lit8 v8, v10, 0x4

    add-int/lit8 v9, v8, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v2

    add-int/lit8 v2, v1, 0x1

    int-to-short v11, v8

    aput-short v11, v7, v2

    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v11, v8, 0x3

    int-to-short v11, v11

    aput-short v11, v7, v2

    add-int/lit8 v2, v1, 0x3

    aput-short v9, v7, v2

    add-int/lit8 v2, v1, 0x4

    aput-short v11, v7, v2

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v8, v8, 0x2

    int-to-short v2, v8

    aput-short v2, v7, v1

    add-int/lit8 v10, v10, 0x1

    int-to-short v10, v10

    move-object/from16 v8, v16

    move/from16 v2, v19

    move/from16 v1, v20

    goto/16 :goto_0

    :cond_1
    move/from16 v20, v1

    move/from16 v19, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mPos:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColorByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColorByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColor:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v5, v20, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x9

    move/from16 v7, v19

    invoke-virtual {v0, v7, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->genDynamicData(II)V

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateDataDynamic(Ljava/nio/FloatBuffer;II)V

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v3, v6, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateDataDynamic(Ljava/nio/FloatBuffer;II)V

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v6, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateDataDynamic(Ljava/nio/FloatBuffer;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexData(ILjava/nio/ShortBuffer;)V

    invoke-virtual/range {p0 .. p1}, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->updateParticleMesh(Ljava/util/LinkedList;)V

    return-void
.end method

.method public updateParticleMesh(Ljava/util/LinkedList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/heytap/wearable/support/watchface/gl/particle/Particle;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    const/4 v3, 0x0

    iget-boolean v4, v2, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    if-eqz v4, :cond_0

    iget v3, v2, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    :cond_0
    iget v4, v2, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    const/high16 v7, 0xff0000

    and-int/2addr v7, v4

    shr-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    div-float/2addr v7, v6

    const v8, 0xff00

    and-int/2addr v8, v4

    shr-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    div-float/2addr v8, v6

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    sget v6, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->sAlpha:F

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mPos:[F

    mul-int/lit8 v9, v1, 0xc

    add-int/lit8 v10, v9, 0x0

    iget-object v2, v2, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget v11, v2, Landroid/renderscript/Float3;->x:F

    sub-float v12, v11, v3

    aput v12, v6, v10

    add-int/lit8 v10, v9, 0x1

    iget v12, v2, Landroid/renderscript/Float3;->y:F

    add-float v13, v12, v3

    aput v13, v6, v10

    add-int/lit8 v10, v9, 0x2

    iget v2, v2, Landroid/renderscript/Float3;->z:F

    aput v2, v6, v10

    add-int/lit8 v10, v9, 0x3

    add-float v13, v11, v3

    aput v13, v6, v10

    add-int/lit8 v10, v9, 0x4

    add-float v13, v12, v3

    aput v13, v6, v10

    add-int/lit8 v10, v9, 0x5

    aput v2, v6, v10

    add-int/lit8 v10, v9, 0x6

    add-float v13, v11, v3

    aput v13, v6, v10

    add-int/lit8 v10, v9, 0x7

    sub-float v13, v12, v3

    aput v13, v6, v10

    add-int/lit8 v10, v9, 0x8

    aput v2, v6, v10

    add-int/lit8 v10, v9, 0x9

    sub-float/2addr v11, v3

    aput v11, v6, v10

    add-int/lit8 v10, v9, 0xa

    sub-float/2addr v12, v3

    aput v12, v6, v10

    add-int/lit8 v9, v9, 0xb

    aput v2, v6, v9

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColor:[F

    mul-int/lit8 v3, v1, 0x10

    add-int/lit8 v6, v3, 0x0

    aput v7, v2, v6

    add-int/lit8 v6, v3, 0x1

    aput v8, v2, v6

    add-int/lit8 v6, v3, 0x2

    aput v4, v2, v6

    add-int/lit8 v6, v3, 0x3

    aput v5, v2, v6

    add-int/lit8 v6, v3, 0x4

    aput v7, v2, v6

    add-int/lit8 v6, v3, 0x5

    aput v8, v2, v6

    add-int/lit8 v6, v3, 0x6

    aput v4, v2, v6

    add-int/lit8 v6, v3, 0x7

    aput v5, v2, v6

    add-int/lit8 v6, v3, 0x8

    aput v7, v2, v6

    add-int/lit8 v6, v3, 0x9

    aput v8, v2, v6

    add-int/lit8 v6, v3, 0xa

    aput v4, v2, v6

    add-int/lit8 v6, v3, 0xb

    aput v5, v2, v6

    add-int/lit8 v6, v3, 0xc

    aput v7, v2, v6

    add-int/lit8 v6, v3, 0xd

    aput v8, v2, v6

    add-int/lit8 v6, v3, 0xe

    aput v4, v2, v6

    add-int/lit8 v3, v3, 0xf

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->mPos:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateDataDynamic(Ljava/nio/FloatBuffer;II)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColorByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->mColor:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateDataDynamic(Ljava/nio/FloatBuffer;II)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    return-void
.end method
