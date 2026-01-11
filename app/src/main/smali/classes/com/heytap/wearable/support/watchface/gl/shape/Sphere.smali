.class public Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;
.super Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
.source "SourceFile"


# instance fields
.field public mIsCreated:Z

.field public mRadius:F

.field public mSamplesZ:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;-><init>()V

    const v0, 0x40333333    # 2.8f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mIsCreated:Z

    const/16 v0, 0x28

    iput-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mIsCreated:Z

    const/16 v0, 0x28

    iput-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->create(FFFF)V

    return-void
.end method

.method public create(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->create(FFFF)V

    return-void
.end method

.method public create(FFF)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->create(FFFF)V

    return-void
.end method

.method public create(FFFF)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-short v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    int-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v6

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v7, 0x0

    aput p1, v6, v7

    const/4 v10, 0x1

    aput p2, v6, v10

    const/4 v11, 0x2

    aput p3, v6, v11

    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mBoundingBox:[F

    sub-float v12, p1, v1

    aput v12, v6, v7

    sub-float v12, p2, v1

    aput v12, v6, v10

    sub-float v12, p3, v1

    aput v12, v6, v11

    add-float v12, p1, v1

    const/4 v13, 0x3

    aput v12, v6, v13

    add-float v12, p2, v1

    const/4 v14, 0x4

    aput v12, v6, v14

    add-float v12, p3, v1

    const/4 v14, 0x5

    aput v12, v6, v14

    move v6, v7

    const-wide/16 v16, 0x0

    :goto_0
    iget-short v12, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    add-int/lit8 v7, v12, 0x1

    if-ge v6, v7, :cond_1

    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    :goto_1
    iget-short v12, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    if-ge v7, v12, :cond_0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v14, v22, v20

    double-to-float v12, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v14, v14, v20

    double-to-float v14, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    int-to-float v11, v7

    iget-short v15, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    int-to-float v13, v15

    div-float/2addr v11, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    int-to-float v13, v6

    int-to-float v15, v15

    div-float/2addr v13, v15

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-float/2addr v12, v1

    add-float v12, v12, p1

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-float v12, v1, v14

    add-float v12, v12, p2

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-float/2addr v10, v1

    add-float v10, v10, p3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-double v18, v18, v8

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v13, 0x3

    goto :goto_1

    :cond_0
    add-double v16, v16, v8

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v13, 0x3

    goto/16 :goto_0

    :cond_1
    move v6, v11

    mul-int/2addr v12, v6

    const/4 v1, 0x1

    add-int/2addr v12, v1

    int-to-short v1, v12

    const/4 v7, 0x0

    :goto_2
    iget-short v8, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    if-ge v7, v8, :cond_3

    const/4 v8, 0x0

    :goto_3
    iget-short v9, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    mul-int/2addr v9, v6

    if-ge v8, v9, :cond_2

    mul-int v9, v7, v1

    add-int/2addr v9, v8

    int-to-short v10, v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    int-to-short v9, v9

    add-int/lit8 v11, v7, 0x1

    mul-int/2addr v11, v1

    add-int/2addr v11, v8

    add-int/lit8 v12, v11, 0x1

    int-to-short v12, v12

    int-to-short v11, v11

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x3

    div-int/2addr v1, v6

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    invoke-virtual {v0, v4}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateData(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    invoke-virtual {v0, v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToShortBuffer(Ljava/util/ArrayList;)Ljava/nio/ShortBuffer;

    move-result-object v1

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    invoke-virtual {v0, v2, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexData(ILjava/nio/ShortBuffer;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mIsCreated:Z

    return-void
.end method

.method public getIsCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mIsCreated:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    return v0
.end method
