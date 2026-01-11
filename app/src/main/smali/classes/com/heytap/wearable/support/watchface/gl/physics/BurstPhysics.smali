.class public Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;
.super Lcom/heytap/wearable/support/watchface/gl/physics/Physics;
.source "SourceFile"


# static fields
.field private static final BURST_SAMPLES_Z:S = 0x5s

.field private static final EVERY_PHY_SCALE:F = 0.85f

.field private static final EVERY_PHY_TRANS:F = 13.0f

.field private static final MAX_COUNT_PHY:S = 0xds


# instance fields
.field private mCountPhy:S

.field private mIsBurstVBO:Z

.field private mIsBursting:Z


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;-><init>(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBursting:Z

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBurstVBO:Z

    iput-short p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mCountPhy:S

    return-void
.end method


# virtual methods
.method public createPhysicsVBO()V
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->getRadius()F

    move-result v1

    const-wide/16 v10, 0x0

    const/16 v12, 0x24

    new-array v12, v12, [Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move v13, v5

    move v14, v13

    :goto_0
    const/4 v15, 0x6

    if-ge v13, v15, :cond_1

    move v3, v5

    const-wide v16, -0x4006de04abbbd2e8L    # -1.5707963267948966

    :goto_1
    if-ge v3, v15, :cond_0

    new-instance v18, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-direct/range {v18 .. v18}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;-><init>()V

    aput-object v18, v12, v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v8, v22, v20

    double-to-float v8, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move v9, v1

    mul-double v0, v22, v20

    double-to-float v0, v0

    move v1, v14

    move-object/from16 v20, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    int-to-float v15, v3

    const/high16 v21, 0x40a00000    # 5.0f

    div-float v15, v15, v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v15, v15, v22

    move/from16 v23, v9

    int-to-float v9, v13

    div-float v9, v9, v21

    move/from16 v26, v1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    const-wide v24, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    add-double v29, v16, v24

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    move/from16 v33, v0

    mul-double v0, v31, v27

    double-to-float v0, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    move-object/from16 v34, v6

    move-object v1, v7

    mul-double v6, v31, v27

    double-to-float v6, v6

    move/from16 v27, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    div-float v8, v8, v21

    div-float v8, v8, v22

    move/from16 v22, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v24, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    add-double v31, v10, v24

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    move-wide/from16 v39, v10

    mul-double v9, v37, v35

    double-to-float v3, v9

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    mul-double v9, v9, v35

    double-to-float v9, v9

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    add-int/lit8 v11, v13, 0x1

    int-to-float v11, v11

    div-float v11, v11, v21

    move/from16 v21, v13

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    move v13, v9

    mul-double v8, v37, v35

    double-to-float v8, v8

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move/from16 v28, v10

    mul-double v9, v16, v35

    double-to-float v9, v9

    move v10, v6

    move/from16 v16, v7

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v34

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v11, v12, v26

    invoke-virtual {v11}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getImpulseVector()[F

    move-result-object v11

    const-wide v31, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v34

    move-object v15, v4

    move-object/from16 v17, v5

    mul-double v4, v34, v31

    double-to-float v4, v4

    const/4 v5, 0x0

    const/16 v19, 0x0

    aput v5, v11, v19

    float-to-double v4, v4

    move-object/from16 v32, v1

    move-object/from16 v31, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v11, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/4 v4, 0x2

    aput v1, v11, v4

    aget v1, v11, v19

    sub-float v1, v27, v1

    mul-float v1, v1, v23

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v5, v20

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v1, v11, v2

    sub-float v1, v33, v1

    mul-float v1, v1, v23

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v1, v11, v4

    sub-float/2addr v14, v1

    mul-float v14, v14, v23

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    aget v2, v11, v1

    sub-float/2addr v0, v2

    mul-float v0, v0, v23

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aget v1, v11, v0

    sub-float v0, v10, v1

    mul-float v0, v0, v23

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    aget v1, v11, v0

    sub-float v0, v16, v1

    mul-float v0, v0, v23

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    aget v1, v11, v0

    sub-float/2addr v3, v1

    mul-float v3, v3, v23

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aget v1, v11, v0

    sub-float v0, v13, v1

    mul-float v0, v0, v23

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    aget v1, v11, v0

    sub-float v10, v28, v1

    mul-float v10, v10, v23

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    aget v1, v11, v0

    sub-float/2addr v8, v1

    mul-float v8, v8, v23

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aget v1, v11, v0

    sub-float/2addr v9, v1

    mul-float v9, v9, v23

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    aget v1, v11, v0

    sub-float/2addr v6, v1

    mul-float v6, v6, v23

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v1

    aget-object v2, v12, v26

    invoke-virtual {v2, v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, v12, v26

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-object v4, v12, v26

    move-object/from16 v5, v31

    invoke-virtual {v4, v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object v4

    aget-object v5, v12, v26

    invoke-virtual {v5, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateData(I)V

    aget-object v0, v12, v26

    invoke-virtual {v0, v2, v3, v4}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    aget-object v0, v12, v26

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    aget-object v0, v12, v26

    move-object/from16 v2, v32

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToShortBuffer(Ljava/util/ArrayList;)Ljava/nio/ShortBuffer;

    move-result-object v0

    aget-object v2, v12, v26

    invoke-virtual {v2, v1, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexData(ILjava/nio/ShortBuffer;)V

    add-int/lit8 v14, v26, 0x1

    int-to-short v14, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v7

    move-object v4, v15

    move/from16 v13, v21

    move/from16 v3, v22

    move/from16 v1, v23

    move-wide/from16 v16, v29

    move-wide/from16 v10, v39

    const/4 v15, 0x6

    goto/16 :goto_1

    :cond_0
    move/from16 v23, v1

    move-object v15, v4

    move-object v7, v6

    move-wide/from16 v39, v10

    move/from16 v21, v13

    move/from16 v26, v14

    const-wide v0, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    add-double v10, v39, v0

    add-int/lit8 v13, v21, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto/16 :goto_0

    :cond_1
    move-object v2, v0

    iget-object v0, v2, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v0, v12}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setChildMeshes([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    goto :goto_3

    :cond_2
    move-object v2, v0

    array-length v0, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    aget-object v4, v1, v3

    const/4 v5, 0x3

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    new-array v7, v5, [F

    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v8, v2, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v8

    const/4 v10, 0x1

    aget v8, v8, v10

    aput v8, v7, v10

    iget-object v8, v2, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v8

    const/4 v11, 0x2

    aget v8, v8, v11

    aput v8, v7, v11

    iget-object v8, v2, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v8

    invoke-virtual {v8}, [F->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    invoke-virtual {v4, v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setPos([F)V

    invoke-virtual {v4, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setScale([F)V

    iget-object v6, v2, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getColor()[F

    move-result-object v6

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    invoke-virtual {v4, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setColor([F)V

    invoke-virtual {v4, v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setEdgeBlendParam([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public doAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBursting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBursting:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsActionDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBursting:Z

    return v0
.end method

.method public getRadius()F
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getBoundingBox()[F

    move-result-object v0

    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public setIsActionDone(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBursting:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBurstVBO:Z

    iput-short p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mCountPhy:S

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setIsShow(Z)V

    :cond_0
    return-void
.end method

.method public updatePhy()V
    .locals 13

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBursting:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v0

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBurstVBO:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->createPhysicsVBO()V

    iput-boolean v4, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mIsBurstVBO:Z

    if-eqz v0, :cond_0

    array-length v1, v0

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v7

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->getRadius()F

    move-result v8

    iget-object v9, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v9}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v9

    aget v9, v9, v3

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getImpulseVector()[F

    move-result-object v10

    aget v10, v10, v3

    mul-float/2addr v10, v8

    add-float/2addr v10, v9

    aput v10, v7, v3

    iget-object v9, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v9}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v9

    aget v9, v9, v4

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getImpulseVector()[F

    move-result-object v10

    aget v10, v10, v4

    mul-float/2addr v10, v8

    add-float/2addr v10, v9

    aput v10, v7, v4

    iget-object v9, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v9}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v9

    aget v9, v9, v2

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getImpulseVector()[F

    move-result-object v10

    aget v10, v10, v2

    mul-float/2addr v8, v10

    add-float/2addr v8, v9

    aput v8, v7, v2

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v7

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v8

    aget v8, v8, v3

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v7, v3

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v8

    aget v8, v8, v4

    mul-float/2addr v8, v9

    aput v8, v7, v4

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v8

    aget v8, v8, v2

    mul-float/2addr v8, v9

    aput v8, v7, v2

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getColor()[F

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setColor([F)V

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v6

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v7, v6, v3

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v7

    aget v7, v7, v4

    aput v7, v6, v4

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v7

    aget v7, v7, v2

    aput v7, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :cond_1
    iget-short v1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mCountPhy:S

    const/16 v5, 0xd

    if-ge v1, v5, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v1, v6

    array-length v6, v0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v0, v7

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v9

    aget v10, v9, v3

    const v11, 0x3f59999a    # 0.85f

    mul-float/2addr v10, v11

    aput v10, v9, v3

    aget v10, v9, v4

    mul-float/2addr v10, v11

    aput v10, v9, v4

    aget v10, v9, v2

    mul-float/2addr v10, v11

    aput v10, v9, v2

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v9

    invoke-virtual {v8}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getImpulseVector()[F

    move-result-object v8

    aget v10, v9, v4

    const/high16 v11, 0x41500000    # 13.0f

    mul-float/2addr v11, v1

    mul-float/2addr v11, v1

    aget v12, v8, v4

    mul-float/2addr v12, v11

    add-float/2addr v12, v10

    aput v12, v9, v4

    aget v10, v9, v2

    aget v8, v8, v2

    mul-float/2addr v11, v8

    add-float/2addr v11, v10

    aput v11, v9, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    iget-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mCountPhy:S

    add-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstPhysics;->mCountPhy:S

    if-lt v0, v5, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v0, v3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setIsShow(Z)V

    :cond_3
    return-void
.end method
