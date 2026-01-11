.class public Lcom/heytap/wearable/support/watchface/gl/shape/Line;
.super Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;
.source "SourceFile"


# instance fields
.field private mEndX:F

.field private mEndY:F

.field private mRatio:F

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mRatio:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mRatio:F

    return-void
.end method


# virtual methods
.method public createCombined(Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/lit8 v3, v2, 0x6

    new-array v3, v3, [F

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mEndX:F

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mStartX:F

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mEndY:F

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mStartY:F

    sub-float/2addr v5, v6

    new-instance v12, Landroid/renderscript/Float3;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v5, v13}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-static {v12}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->length(Landroid/renderscript/Float3;)F

    move-result v4

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v12}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    new-instance v5, Landroid/renderscript/Float3;

    invoke-direct {v5}, Landroid/renderscript/Float3;-><init>()V

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, v5

    move-object v7, v12

    invoke-static/range {v6 .. v11}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;Landroid/renderscript/Float3;FFFF)V

    invoke-static {v5}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v9, 0x0

    :goto_0
    iget v10, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    if-ge v9, v10, :cond_0

    iget v10, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mStartX:F

    iget v11, v12, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v11, v4

    int-to-float v14, v9

    mul-float/2addr v11, v14

    add-float/2addr v11, v10

    iget v10, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mStartY:F

    iget v15, v12, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v15, v4

    mul-float/2addr v15, v14

    add-float/2addr v15, v10

    mul-int/lit8 v10, v9, 0x6

    mul-float v14, v11, v7

    mul-float v16, v15, v6

    sub-float v14, v14, v16

    aput v14, v3, v10

    add-int/lit8 v16, v10, 0x1

    mul-float/2addr v11, v6

    mul-float/2addr v15, v7

    add-float/2addr v15, v11

    iget v11, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mRatio:F

    mul-float v17, v15, v11

    aput v17, v3, v16

    add-int/lit8 v16, v10, 0x2

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v3, v16

    mul-int/lit8 v16, v9, 0x4

    iget v8, v5, Landroid/renderscript/Float3;->x:F

    mul-float v18, v8, v7

    iget v13, v5, Landroid/renderscript/Float3;->y:F

    mul-float v19, v13, v6

    sub-float v18, v18, v19

    aput v18, v2, v16

    add-int/lit8 v18, v16, 0x1

    mul-float v19, v8, v6

    mul-float v20, v13, v7

    add-float v20, v20, v19

    aput v20, v2, v18

    add-int/lit8 v18, v10, 0x3

    aput v14, v3, v18

    add-int/lit8 v14, v10, 0x4

    mul-float/2addr v15, v11

    aput v15, v3, v14

    add-int/lit8 v10, v10, 0x5

    const/4 v11, 0x0

    aput v11, v3, v10

    add-int/lit8 v10, v16, 0x2

    mul-float v14, v8, v7

    mul-float v15, v13, v6

    sub-float/2addr v14, v15

    neg-float v14, v14

    aput v14, v2, v10

    add-int/lit8 v16, v16, 0x3

    mul-float/2addr v8, v6

    mul-float/2addr v13, v7

    add-float/2addr v13, v8

    neg-float v8, v13

    aput v8, v2, v16

    add-int/lit8 v9, v9, 0x1

    move v13, v11

    goto :goto_0

    :cond_0
    mul-int/lit8 v10, v10, 0x6

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getVertexCount()I

    move-result v2

    mul-int/lit8 v3, p2, 0x3

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v1, v4, v3, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateSubVertexData(Ljava/nio/FloatBuffer;II)V

    mul-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v2

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v5, v3, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateSubVertexData(Ljava/nio/FloatBuffer;II)V

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    new-array v2, v2, [S

    const/4 v3, 0x0

    :goto_1
    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_1

    mul-int/lit8 v4, v3, 0x6

    mul-int/lit8 v5, v3, 0x2

    add-int v5, v5, p2

    int-to-short v6, v5

    aput-short v6, v2, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v7, v3, 0x2

    add-int v7, v7, p2

    int-to-short v8, v7

    aput-short v8, v2, v6

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v2, v6

    add-int/lit8 v6, v4, 0x3

    aput-short v5, v2, v6

    add-int/lit8 v5, v4, 0x4

    aput-short v8, v2, v5

    add-int/lit8 v4, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    int-to-short v5, v7

    aput-short v5, v2, v4

    int-to-short v3, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x6

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    move/from16 v4, p3

    invoke-virtual {v1, v3, v4, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexSubData(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method public init(FFFFFI)V
    .locals 0

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mStartX:F

    iput p3, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mStartY:F

    iput p4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mEndX:F

    iput p5, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Line;->mEndY:F

    const/4 p2, 0x2

    if-le p6, p2, :cond_0

    iput p6, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    :cond_0
    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    return-void
.end method
