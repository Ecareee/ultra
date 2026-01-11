.class public Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mChar:C

.field public mParams:[F


# direct methods
.method public constructor <init>(C[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    iput-char v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    iget-object p1, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->access$000([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method private addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 27

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p5

    const/4 v14, 0x0

    aget v0, p2, v14

    const/4 v15, 0x1

    aget v1, p2, v15

    const/16 v16, 0x2

    aget v2, p2, v16

    const/16 v17, 0x3

    aget v3, p2, v17

    const/16 v18, 0x4

    aget v4, p2, v18

    const/16 v19, 0x5

    aget v5, p2, v19

    sparse-switch v12, :sswitch_data_0

    :goto_0
    :sswitch_0
    move/from16 v20, v16

    goto :goto_2

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    invoke-virtual {v11, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v4

    move v2, v0

    move v1, v5

    move v3, v1

    goto :goto_0

    :sswitch_2
    move/from16 v20, v18

    goto :goto_2

    :sswitch_3
    move/from16 v20, v15

    goto :goto_2

    :sswitch_4
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_5
    const/4 v6, 0x7

    :goto_1
    move/from16 v20, v6

    :goto_2
    move v10, v0

    move v9, v1

    move/from16 v21, v4

    move/from16 v22, v5

    move v8, v14

    move/from16 v0, p3

    :goto_3
    array-length v1, v13

    if-ge v8, v1, :cond_20

    const/16 v1, 0x41

    if-eq v12, v1, :cond_1d

    const/16 v1, 0x43

    if-eq v12, v1, :cond_1c

    const/16 v5, 0x48

    if-eq v12, v5, :cond_1b

    const/16 v5, 0x51

    if-eq v12, v5, :cond_1a

    const/16 v6, 0x56

    if-eq v12, v6, :cond_19

    const/16 v6, 0x61

    if-eq v12, v6, :cond_16

    const/16 v6, 0x63

    if-eq v12, v6, :cond_15

    const/16 v7, 0x68

    if-eq v12, v7, :cond_14

    const/16 v7, 0x71

    if-eq v12, v7, :cond_13

    const/16 v15, 0x76

    if-eq v12, v15, :cond_12

    const/16 v15, 0x4c

    if-eq v12, v15, :cond_11

    const/16 v15, 0x4d

    if-eq v12, v15, :cond_f

    const/16 v15, 0x73

    const/16 v14, 0x53

    const/high16 v23, 0x40000000    # 2.0f

    if-eq v12, v14, :cond_c

    const/16 v4, 0x74

    const/16 v14, 0x54

    if-eq v12, v14, :cond_9

    const/16 v1, 0x6c

    if-eq v12, v1, :cond_8

    const/16 v1, 0x6d

    if-eq v12, v1, :cond_6

    if-eq v12, v15, :cond_3

    if-eq v12, v4, :cond_0

    :goto_4
    move/from16 v26, v8

    goto/16 :goto_11

    :cond_0
    if-eq v0, v7, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-ne v0, v14, :cond_1

    goto :goto_5

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_6

    :cond_2
    :goto_5
    sub-float v4, v10, v2

    sub-float v0, v9, v3

    :goto_6
    aget v1, v13, v8

    add-int/lit8 v2, v8, 0x1

    aget v3, v13, v2

    invoke-virtual {v11, v4, v0, v1, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v4, v10

    add-float/2addr v0, v9

    aget v1, v13, v8

    add-float/2addr v10, v1

    aget v1, v13, v2

    add-float/2addr v9, v1

    move v3, v0

    move v2, v4

    goto :goto_4

    :cond_3
    if-eq v0, v6, :cond_5

    if-eq v0, v15, :cond_5

    const/16 v1, 0x43

    if-eq v0, v1, :cond_5

    const/16 v1, 0x53

    if-ne v0, v1, :cond_4

    goto :goto_7

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_8

    :cond_5
    :goto_7
    sub-float v0, v10, v2

    sub-float v1, v9, v3

    move v2, v1

    move v1, v0

    :goto_8
    aget v3, v13, v8

    add-int/lit8 v7, v8, 0x1

    aget v4, v13, v7

    add-int/lit8 v14, v8, 0x2

    aget v5, v13, v14

    add-int/lit8 v15, v8, 0x3

    aget v6, v13, v15

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v0, v13, v8

    add-float/2addr v0, v10

    aget v1, v13, v7

    add-float/2addr v1, v9

    aget v2, v13, v14

    add-float/2addr v10, v2

    aget v2, v13, v15

    goto/16 :goto_b

    :cond_6
    aget v0, v13, v8

    add-float/2addr v10, v0

    add-int/lit8 v0, v8, 0x1

    aget v1, v13, v0

    add-float/2addr v9, v1

    if-lez v8, :cond_7

    aget v1, v13, v8

    aget v0, v13, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_4

    :cond_7
    aget v1, v13, v8

    aget v0, v13, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rMoveTo(FF)V

    goto/16 :goto_a

    :cond_8
    aget v0, v13, v8

    add-int/lit8 v1, v8, 0x1

    aget v4, v13, v1

    invoke-virtual {v11, v0, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v13, v8

    add-float/2addr v10, v0

    aget v0, v13, v1

    :goto_9
    add-float/2addr v9, v0

    goto/16 :goto_4

    :cond_9
    if-eq v0, v7, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_a

    if-ne v0, v14, :cond_b

    :cond_a
    mul-float v10, v10, v23

    sub-float/2addr v10, v2

    mul-float v9, v9, v23

    sub-float/2addr v9, v3

    :cond_b
    aget v0, v13, v8

    add-int/lit8 v1, v8, 0x1

    aget v2, v13, v1

    invoke-virtual {v11, v10, v9, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v0, v13, v8

    aget v1, v13, v1

    move/from16 v26, v8

    move v3, v9

    move v2, v10

    move v10, v0

    move v9, v1

    goto/16 :goto_11

    :cond_c
    if-eq v0, v6, :cond_d

    if-eq v0, v15, :cond_d

    const/16 v1, 0x43

    if-eq v0, v1, :cond_d

    const/16 v1, 0x53

    if-ne v0, v1, :cond_e

    :cond_d
    mul-float v10, v10, v23

    sub-float/2addr v10, v2

    mul-float v9, v9, v23

    sub-float/2addr v9, v3

    :cond_e
    move v2, v9

    move v1, v10

    aget v3, v13, v8

    add-int/lit8 v7, v8, 0x1

    aget v4, v13, v7

    add-int/lit8 v9, v8, 0x2

    aget v5, v13, v9

    add-int/lit8 v10, v8, 0x3

    aget v6, v13, v10

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v0, v13, v8

    aget v1, v13, v7

    aget v2, v13, v9

    aget v9, v13, v10

    move v3, v1

    move v10, v2

    move/from16 v26, v8

    move v2, v0

    goto/16 :goto_11

    :cond_f
    aget v10, v13, v8

    add-int/lit8 v0, v8, 0x1

    aget v9, v13, v0

    if-lez v8, :cond_10

    aget v1, v13, v8

    aget v0, v13, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    :cond_10
    aget v1, v13, v8

    aget v0, v13, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_a
    move/from16 v26, v8

    move/from16 v22, v9

    move/from16 v21, v10

    goto/16 :goto_11

    :cond_11
    aget v0, v13, v8

    add-int/lit8 v1, v8, 0x1

    aget v4, v13, v1

    invoke-virtual {v11, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    aget v10, v13, v8

    aget v9, v13, v1

    goto/16 :goto_4

    :cond_12
    aget v0, v13, v8

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v13, v8

    goto/16 :goto_9

    :cond_13
    aget v0, v13, v8

    add-int/lit8 v1, v8, 0x1

    aget v2, v13, v1

    add-int/lit8 v3, v8, 0x2

    aget v4, v13, v3

    add-int/lit8 v5, v8, 0x3

    aget v6, v13, v5

    invoke-virtual {v11, v0, v2, v4, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    aget v0, v13, v8

    add-float/2addr v0, v10

    aget v1, v13, v1

    add-float/2addr v1, v9

    aget v2, v13, v3

    add-float/2addr v10, v2

    aget v2, v13, v5

    goto :goto_b

    :cond_14
    aget v0, v13, v8

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v13, v8

    add-float/2addr v10, v0

    goto/16 :goto_4

    :cond_15
    aget v1, v13, v8

    add-int/lit8 v0, v8, 0x1

    aget v2, v13, v0

    add-int/lit8 v7, v8, 0x2

    aget v3, v13, v7

    add-int/lit8 v14, v8, 0x3

    aget v4, v13, v14

    add-int/lit8 v15, v8, 0x4

    aget v5, v13, v15

    add-int/lit8 v23, v8, 0x5

    aget v6, v13, v23

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v0, v13, v7

    add-float/2addr v0, v10

    aget v1, v13, v14

    add-float/2addr v1, v9

    aget v2, v13, v15

    add-float/2addr v10, v2

    aget v2, v13, v23

    :goto_b
    add-float/2addr v9, v2

    move v2, v0

    move v3, v1

    goto/16 :goto_4

    :cond_16
    add-int/lit8 v14, v8, 0x5

    aget v0, v13, v14

    add-float v4, v0, v10

    add-int/lit8 v15, v8, 0x6

    aget v0, v13, v15

    add-float v5, v0, v9

    aget v6, v13, v8

    add-int/lit8 v0, v8, 0x1

    aget v7, v13, v0

    add-int/lit8 v0, v8, 0x2

    aget v23, v13, v0

    add-int/lit8 v0, v8, 0x3

    aget v0, v13, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    const/16 v24, 0x1

    goto :goto_c

    :cond_17
    const/16 v24, 0x0

    :goto_c
    add-int/lit8 v0, v8, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    const/16 v25, 0x1

    goto :goto_d

    :cond_18
    const/16 v25, 0x0

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v9

    move/from16 v26, v8

    move/from16 v8, v23

    move v12, v9

    move/from16 v9, v24

    move v11, v10

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v0, v13, v14

    add-float v10, v11, v0

    aget v0, v13, v15

    add-float v9, v12, v0

    move-object/from16 v11, p1

    goto/16 :goto_10

    :cond_19
    move/from16 v26, v8

    move v11, v10

    aget v0, v13, v26

    move v4, v11

    move-object/from16 v11, p1

    invoke-virtual {v11, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    aget v9, v13, v26

    move v10, v4

    goto/16 :goto_11

    :cond_1a
    move/from16 v26, v8

    aget v0, v13, v26

    add-int/lit8 v8, v26, 0x1

    aget v1, v13, v8

    add-int/lit8 v2, v26, 0x2

    aget v3, v13, v2

    add-int/lit8 v4, v26, 0x3

    aget v5, v13, v4

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v0, v13, v26

    aget v1, v13, v8

    aget v10, v13, v2

    aget v9, v13, v4

    move v2, v0

    move v3, v1

    goto/16 :goto_11

    :cond_1b
    move/from16 v26, v8

    move v12, v9

    aget v0, v13, v26

    invoke-virtual {v11, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    aget v10, v13, v26

    goto/16 :goto_11

    :cond_1c
    move/from16 v26, v8

    aget v1, v13, v26

    add-int/lit8 v8, v26, 0x1

    aget v2, v13, v8

    add-int/lit8 v8, v26, 0x2

    aget v3, v13, v8

    add-int/lit8 v7, v26, 0x3

    aget v4, v13, v7

    add-int/lit8 v9, v26, 0x4

    aget v5, v13, v9

    add-int/lit8 v10, v26, 0x5

    aget v6, v13, v10

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v0, v13, v9

    aget v9, v13, v10

    aget v1, v13, v8

    aget v2, v13, v7

    move v10, v0

    move v3, v2

    move v2, v1

    goto :goto_11

    :cond_1d
    move/from16 v26, v8

    move v12, v9

    move v4, v10

    add-int/lit8 v14, v26, 0x5

    aget v5, v13, v14

    add-int/lit8 v15, v26, 0x6

    aget v6, v13, v15

    aget v7, v13, v26

    add-int/lit8 v8, v26, 0x1

    aget v8, v13, v8

    add-int/lit8 v0, v26, 0x2

    aget v9, v13, v0

    add-int/lit8 v0, v26, 0x3

    aget v0, v13, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    const/4 v10, 0x1

    goto :goto_e

    :cond_1e
    const/4 v10, 0x0

    :goto_e
    add-int/lit8 v0, v26, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    const/16 v23, 0x1

    goto :goto_f

    :cond_1f
    const/16 v23, 0x0

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v12

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v23

    invoke-direct/range {v0 .. v10}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v10, v13, v14

    aget v9, v13, v15

    :goto_10
    move v3, v9

    move v2, v10

    :goto_11
    add-int v8, v26, v20

    move/from16 v0, p4

    move v12, v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_20
    move v12, v9

    move v4, v10

    move v0, v14

    aput v4, p2, v0

    const/4 v0, 0x1

    aput v12, p2, v0

    aput v2, p2, v16

    aput v3, p2, v17

    aput v21, p2, v18

    aput v22, p2, v19

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x56 -> :sswitch_3
        0x5a -> :sswitch_1
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x76 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 49

    move-wide/from16 v0, p6

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p18, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static/range {p16 .. p17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static/range {p16 .. p17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p8, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double/2addr v13, v7

    mul-double/2addr v11, v13

    mul-double v21, p8, v5

    mul-double v9, v9, v21

    add-double/2addr v9, v11

    int-to-double v11, v4

    div-double v11, p18, v11

    const/16 v23, 0x0

    move-wide/from16 v25, v9

    move-wide/from16 v27, v17

    move/from16 v2, v23

    move-wide/from16 v9, p10

    move-wide/from16 v17, p12

    move-wide/from16 v23, p16

    :goto_0
    if-ge v2, v4, :cond_0

    add-double v31, v23, v11

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, v37, p2

    mul-double v39, v19, v33

    move/from16 v41, v4

    sub-double v3, v37, v39

    mul-double v37, v0, v7

    mul-double v37, v37, v35

    add-double v37, v37, p4

    mul-double v39, v21, v33

    add-double v0, v39, v37

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v35, v33

    sub-double v23, v31, v23

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v23, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v42, v35, v39

    mul-double v42, v42, v35

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    add-double v42, v42, v29

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v35, v35, v42

    mul-double v35, v35, v23

    div-double v35, v35, v39

    mul-double v27, v27, v35

    add-double v9, v27, v9

    mul-double v25, v25, v35

    move-wide/from16 v23, v5

    add-double v5, v25, v17

    mul-double v17, v35, v37

    move-wide/from16 p14, v7

    sub-double v7, v3, v17

    mul-double v35, v35, v33

    move-wide/from16 p8, v11

    sub-double v11, v0, v35

    move-wide/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v14, p1

    invoke-virtual {v14, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v9, v9

    double-to-float v5, v5

    double-to-float v6, v7

    double-to-float v7, v11

    double-to-float v8, v3

    double-to-float v10, v0

    move-object/from16 v42, p1

    move/from16 v43, v9

    move/from16 v44, v5

    move/from16 v45, v6

    move/from16 v46, v7

    move/from16 v47, v8

    move/from16 v48, v10

    invoke-virtual/range {v42 .. v48}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, p8

    move-wide/from16 v7, p14

    move-wide v9, v3

    move-wide/from16 v13, v17

    move-wide/from16 v5, v23

    move-wide/from16 v23, v31

    move-wide/from16 v25, v33

    move-wide/from16 v27, v37

    move/from16 v4, v41

    move-wide/from16 v17, v0

    move-wide/from16 v0, p6

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 41

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v8, p8

    move/from16 v10, p10

    float-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    float-to-double v13, v2

    mul-double v15, v13, v5

    move/from16 v3, p3

    move-wide/from16 v17, v13

    float-to-double v13, v3

    mul-double v19, v13, v11

    add-double v19, v19, v15

    float-to-double v7, v0

    div-double v19, v19, v7

    neg-float v9, v2

    float-to-double v2, v9

    mul-double/2addr v2, v11

    mul-double v15, v13, v5

    add-double/2addr v15, v2

    float-to-double v2, v1

    div-double/2addr v15, v2

    move-wide/from16 v23, v13

    float-to-double v13, v4

    mul-double/2addr v13, v5

    move/from16 v9, p5

    float-to-double v0, v9

    mul-double v25, v0, v11

    add-double v25, v25, v13

    div-double v25, v25, v7

    neg-float v13, v4

    float-to-double v13, v13

    mul-double/2addr v13, v11

    mul-double/2addr v0, v5

    add-double/2addr v0, v13

    div-double/2addr v0, v2

    sub-double v13, v19, v25

    sub-double v27, v15, v0

    add-double v29, v19, v25

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v29, v29, v31

    add-double v33, v15, v0

    div-double v33, v33, v31

    mul-double v31, v13, v13

    mul-double v35, v27, v27

    add-double v35, v35, v31

    const-wide/16 v31, 0x0

    cmpl-double v37, v35, v31

    if-nez v37, :cond_0

    return-void

    :cond_0
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    div-double v37, v37, v35

    const-wide/high16 v39, 0x3fd0000000000000L    # 0.25

    sub-double v37, v37, v39

    cmpg-double v39, v37, v31

    if-gez v39, :cond_1

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v6, p6, v0

    mul-float v7, p7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    :cond_1
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    mul-double v13, v13, v35

    mul-double v35, v35, v27

    move/from16 v4, p9

    if-ne v4, v10, :cond_2

    sub-double v29, v29, v35

    add-double v33, v33, v13

    goto :goto_0

    :cond_2
    add-double v29, v29, v35

    sub-double v33, v33, v13

    :goto_0
    sub-double v13, v15, v33

    move-wide v15, v11

    sub-double v11, v19, v29

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v27

    sub-double v0, v0, v33

    sub-double v11, v25, v29

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v27

    cmpl-double v4, v0, v31

    if-ltz v4, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v10, v9, :cond_5

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v4, :cond_4

    sub-double/2addr v0, v9

    goto :goto_2

    :cond_4
    add-double/2addr v0, v9

    :cond_5
    :goto_2
    move-wide/from16 v25, v0

    mul-double v29, v29, v7

    mul-double v33, v33, v2

    mul-double v0, v29, v5

    mul-double v11, v33, v15

    sub-double v9, v0, v11

    mul-double v29, v29, v15

    mul-double v33, v33, v5

    add-double v11, v33, v29

    move-wide v0, v7

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v4, v17

    move-wide/from16 v19, v23

    move-wide v13, v0

    move-wide v15, v2

    move-wide/from16 v23, v27

    invoke-direct/range {v7 .. v26}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static nodesToPath([Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [F

    array-length v7, p0

    const/16 v1, 0x6d

    const/4 v2, 0x0

    move v4, v1

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, p0, v8

    iget-char v5, v9, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    iget-object v6, v9, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    iget-char v4, v9, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;F)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v3, v1

    iget-object v1, p2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    mul-float/2addr v1, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
