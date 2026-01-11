.class public Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COORD_ELEMENT_NUM:I = 0x4

.field public static final POSITION_ELEMENT_NUM:I = 0x6


# instance fields
.field private mOffsetX:F

.field private mOffsetY:F

.field private mRadian:F

.field private mRadius:F

.field private mRatio:F

.field public mRotateRadian:F

.field public mSamples:I

.field private mStartRadian:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetY:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRatio:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetX:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetY:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRatio:F

    return-void
.end method

.method public static getVertexElementsNum()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public createCombined(Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/lit8 v3, v2, 0x6

    new-array v3, v3, [F

    mul-int/lit8 v4, v2, 0x4

    new-array v4, v4, [F

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRadian:F

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v5, v2

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mStartRadian:F

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRadius:F

    iget v7, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget v9, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    if-le v9, v13, :cond_0

    const/4 v9, 0x0

    :goto_0
    iget v14, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    if-ge v9, v14, :cond_1

    int-to-float v14, v9

    mul-float/2addr v14, v5

    add-float/2addr v14, v2

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v14, v12, v6

    iget v15, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetX:F

    add-float/2addr v14, v15

    mul-float v15, v13, v6

    iget v11, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetY:F

    add-float/2addr v15, v11

    mul-int/lit8 v11, v9, 0x6

    mul-float v16, v14, v8

    mul-float v17, v15, v7

    sub-float v16, v16, v17

    aput v16, v3, v11

    add-int/lit8 v17, v11, 0x1

    mul-float/2addr v14, v7

    mul-float/2addr v15, v8

    add-float/2addr v15, v14

    iget v14, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRatio:F

    mul-float v18, v15, v14

    aput v18, v3, v17

    add-int/lit8 v17, v11, 0x2

    aput v10, v3, v17

    mul-int/lit8 v17, v9, 0x4

    mul-float v18, v12, v8

    mul-float v19, v13, v7

    sub-float v10, v18, v19

    aput v10, v4, v17

    add-int/lit8 v18, v17, 0x1

    mul-float/2addr v12, v7

    mul-float/2addr v13, v8

    add-float/2addr v13, v12

    aput v13, v4, v18

    add-int/lit8 v12, v11, 0x3

    aput v16, v3, v12

    add-int/lit8 v12, v11, 0x4

    mul-float/2addr v15, v14

    aput v15, v3, v12

    add-int/lit8 v11, v11, 0x5

    const/4 v12, 0x0

    aput v12, v3, v11

    add-int/lit8 v11, v17, 0x2

    neg-float v10, v10

    aput v10, v4, v11

    add-int/lit8 v17, v17, 0x3

    neg-float v10, v13

    aput v10, v4, v17

    add-int/lit8 v9, v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    goto :goto_0

    :cond_0
    move v7, v13

    if-ne v7, v9, :cond_1

    iget v7, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mStartRadian:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    iget v9, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mStartRadian:F

    iget v10, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRadian:F

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    iget v8, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mStartRadian:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mStartRadian:F

    iget v11, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRadian:F

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    new-instance v10, Landroid/renderscript/Float3;

    const/4 v9, 0x0

    invoke-direct {v10, v7, v8, v9}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-static {v10}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    new-instance v7, Landroid/renderscript/Float3;

    invoke-direct {v7}, Landroid/renderscript/Float3;-><init>()V

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v7

    invoke-static/range {v9 .. v14}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->rotate(Landroid/renderscript/Float3;Landroid/renderscript/Float3;FFFF)V

    invoke-static {v7}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    const/4 v8, 0x0

    :goto_1
    iget v9, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    if-ge v8, v9, :cond_1

    int-to-float v9, v8

    mul-float/2addr v9, v5

    add-float/2addr v9, v2

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-int/lit8 v10, v8, 0x6

    mul-float/2addr v11, v6

    iget v12, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetX:F

    add-float v13, v11, v12

    aput v13, v3, v10

    add-int/lit8 v13, v10, 0x1

    mul-float/2addr v9, v6

    iget v14, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetY:F

    add-float v15, v9, v14

    aput v15, v3, v13

    add-int/lit8 v13, v10, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v3, v13

    mul-int/lit8 v13, v8, 0x4

    iget v15, v7, Landroid/renderscript/Float3;->x:F

    aput v15, v4, v13

    add-int/lit8 v16, v13, 0x1

    move/from16 v17, v2

    iget v2, v7, Landroid/renderscript/Float3;->y:F

    aput v2, v4, v16

    add-int/lit8 v16, v10, 0x3

    add-float/2addr v11, v12

    aput v11, v3, v16

    add-int/lit8 v11, v10, 0x4

    add-float/2addr v9, v14

    aput v9, v3, v11

    add-int/lit8 v10, v10, 0x5

    const/4 v9, 0x0

    aput v9, v3, v10

    add-int/lit8 v10, v13, 0x2

    neg-float v11, v15

    aput v11, v4, v10

    add-int/lit8 v13, v13, 0x3

    neg-float v2, v2

    aput v2, v4, v13

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v17

    goto :goto_1

    :cond_1
    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/lit8 v2, v2, 0x6

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

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

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getVertexCount()I

    move-result v3

    mul-int/lit8 v4, p2, 0x3

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v1, v2, v4, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateSubVertexData(Ljava/nio/FloatBuffer;II)V

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/2addr v3, v7

    mul-int/2addr v3, v7

    invoke-virtual {v1, v5, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateSubVertexData(Ljava/nio/FloatBuffer;II)V

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    new-array v2, v2, [S

    const/4 v3, 0x0

    :goto_2
    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_2

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

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x6

    const/4 v3, 0x2

    mul-int/2addr v4, v3

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

.method public getIndexCount()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getVertexCount()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(FFFFFFI)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetX:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mOffsetY:F

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRotateRadian:F

    iput p4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRadius:F

    sub-float/2addr p6, p5

    float-to-double p1, p6

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mRadian:F

    float-to-double p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mStartRadian:F

    const/4 p1, 0x1

    if-le p7, p1, :cond_0

    iput p7, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->mSamples:I

    :cond_0
    return-void
.end method
