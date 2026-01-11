.class public Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;
.super Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
.source "SourceFile"


# instance fields
.field private mAngleSpan:F

.field private mDegree:F

.field private mRadius:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mAngleSpan:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mRadius:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mDegree:F

    return-void
.end method


# virtual methods
.method public create()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mAngleSpan:F

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v6, v5

    float-to-int v6, v6

    iget v7, v0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mDegree:F

    div-float/2addr v7, v5

    float-to-int v7, v7

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    add-int/lit8 v15, v6, 0x1

    if-ge v12, v15, :cond_1

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    :goto_1
    add-int/lit8 v5, v7, 0x1

    if-ge v15, v5, :cond_0

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v10, v20, v18

    double-to-float v5, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v10, v10, v18

    double-to-float v10, v10

    move-wide/from16 v18, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    int-to-float v9, v15

    int-to-float v11, v7

    div-float/2addr v9, v11

    int-to-float v11, v12

    move-object/from16 v20, v4

    int-to-float v4, v6

    div-float/2addr v11, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mRadius:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mRadius:F

    mul-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/SphereCurve;->mRadius:F

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-double v16, v16, v18

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, v18

    move-object/from16 v4, v20

    goto :goto_1

    :cond_0
    move-object/from16 v20, v4

    move-wide/from16 v18, v8

    add-double v13, v13, v18

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v20, v4

    add-int/lit8 v4, v7, 0x1

    int-to-short v4, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_2

    mul-int v9, v5, v4

    add-int/2addr v9, v8

    int-to-short v10, v9

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    add-int/lit8 v11, v5, 0x1

    mul-int/2addr v11, v4

    add-int/2addr v11, v8

    add-int/lit8 v12, v11, 0x1

    int-to-short v12, v12

    int-to-short v11, v11

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    move-object/from16 v13, v20

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    goto :goto_3

    :cond_2
    move-object/from16 v13, v20

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    goto :goto_2

    :cond_3
    move-object/from16 v13, v20

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    iput v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    invoke-virtual {v0, v4}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateData(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    invoke-virtual {v0, v13}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToShortBuffer(Ljava/util/ArrayList;)Ljava/nio/ShortBuffer;

    move-result-object v1

    iget v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    invoke-virtual {v0, v2, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexData(ILjava/nio/ShortBuffer;)V

    return-void
.end method
