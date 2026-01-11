.class public Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;
.super Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;
.source "SourceFile"


# static fields
.field private static final TINDICES:[[I

.field private static final VDATA:[[F

.field private static final X:F = 0.5257311f

.field private static final Z:F = 0.8506508f


# instance fields
.field public m20FaceSphereDepth:I

.field private mCoords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCountIndex:S

.field private mIndexs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mNormals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mUse20Face:Z

.field private mVertexs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xc

    new-array v1, v0, [[F

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [F

    fill-array-data v3, :array_9

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [F

    fill-array-data v3, :array_a

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [F

    fill-array-data v3, :array_b

    const/16 v14, 0xb

    aput-object v3, v1, v14

    sput-object v1, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->VDATA:[[F

    const/16 v1, 0x14

    new-array v1, v1, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1d

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1e

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1f

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sput-object v1, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->TINDICES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x40f969b0
        0x0
        0x3f59c440
    .end array-data

    :array_1
    .array-data 4
        0x3f069650
        0x0
        0x3f59c440
    .end array-data

    :array_2
    .array-data 4
        -0x40f969b0
        0x0
        -0x40a63bc0
    .end array-data

    :array_3
    .array-data 4
        0x3f069650
        0x0
        -0x40a63bc0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f59c440
        0x3f069650
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f59c440
        -0x40f969b0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x40a63bc0
        0x3f069650
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40a63bc0
        -0x40f969b0
    .end array-data

    :array_8
    .array-data 4
        0x3f59c440
        0x3f069650
        0x0
    .end array-data

    :array_9
    .array-data 4
        -0x40a63bc0
        0x3f069650
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f59c440
        -0x40f969b0
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40a63bc0
        -0x40f969b0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x4
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x9
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x5
        0x9
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x5
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x8
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x1
        0xa
        0x8
    .end array-data

    :array_12
    .array-data 4
        0xa
        0x3
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x8
        0x3
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x3
        0x2
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x3
        0x7
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x3
        0xa
        0x7
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x6
        0x7
    .end array-data

    :array_18
    .array-data 4
        0x6
        0xb
        0x7
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x0
        0xb
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0xa
        0x1
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0xb
        0x0
        0x9
    .end array-data

    :array_1d
    .array-data 4
        0x2
        0xb
        0x9
    .end array-data

    :array_1e
    .array-data 4
        0x5
        0x2
        0x9
    .end array-data

    :array_1f
    .array-data 4
        0xb
        0x2
        0x7
    .end array-data
.end method

.method public constructor <init>(FZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;-><init>(F)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCoords:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCountIndex:S

    const/4 p1, 0x4

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->m20FaceSphereDepth:I

    iput-boolean p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mUse20Face:Z

    return-void
.end method


# virtual methods
.method public create(FFFF)V
    .locals 5

    iput p4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v3, 0x2

    aput p3, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mBoundingBox:[F

    sub-float v4, p1, p4

    aput v4, v0, v1

    sub-float v1, p2, p4

    aput v1, v0, v2

    sub-float v1, p3, p4

    aput v1, v0, v3

    add-float/2addr p1, p4

    const/4 v1, 0x3

    aput p1, v0, v1

    add-float/2addr p2, p4

    const/4 p1, 0x4

    aput p2, v0, p1

    add-float/2addr p3, p4

    const/4 p1, 0x5

    aput p3, v0, p1

    iget-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mUse20Face:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->m20FaceSphereDepth:I

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->create20FaceSphere(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->createSphere()V

    :goto_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCoords:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToFloatBuffer(Ljava/util/ArrayList;)Ljava/nio/FloatBuffer;

    move-result-object p3

    iget p4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    invoke-virtual {p0, p4}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateData(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->convertToShortBuffer(Ljava/util/ArrayList;)Ljava/nio/ShortBuffer;

    move-result-object p1

    iget p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    invoke-virtual {p0, p2, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexData(ILjava/nio/ShortBuffer;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCoords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mIsCreated:Z

    return-void
.end method

.method public create20FaceSphere(I)V
    .locals 7

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCountIndex:S

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->VDATA:[[F

    sget-object v3, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->TINDICES:[[I

    aget-object v4, v3, v1

    aget v4, v4, v0

    aget-object v4, v2, v4

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-object v5, v2, v5

    aget-object v3, v3, v1

    const/4 v6, 0x2

    aget v3, v3, v6

    aget-object v2, v2, v3

    invoke-virtual {p0, v4, v5, v2, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->subdivide([F[F[FI)V

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createSphere()V
    .locals 31

    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    :goto_0
    iget-short v9, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    add-int/lit8 v10, v9, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v6, v10, :cond_1

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    :goto_1
    iget-short v10, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    mul-int/2addr v10, v11

    add-int/2addr v10, v12

    if-ge v9, v10, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v1, v17, v15

    double-to-float v1, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v11, v17, v15

    double-to-float v11, v11

    move-wide v15, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v3, v2

    int-to-float v2, v9

    iget-short v12, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    int-to-float v4, v12

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    int-to-float v4, v6

    int-to-float v12, v12

    div-float/2addr v4, v12

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v23, v7, v21

    div-double v23, v23, v21

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move/from16 v18, v6

    sub-double v5, v19, v25

    double-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v2, v6

    move/from16 v20, v11

    float-to-double v10, v2

    const-wide v25, 0x3fd99999a0000000L    # 0.4000000059604645

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v2

    move-wide/from16 v27, v7

    float-to-double v6, v5

    const-wide v29, 0x4012d97c7f3321d2L    # 4.71238898038469

    sub-double v29, v13, v29

    div-double v29, v29, v21

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    mul-double v21, v21, v6

    add-double v21, v21, v25

    mul-double v5, v21, v10

    double-to-float v5, v5

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    sub-float/2addr v4, v2

    float-to-double v6, v4

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v21

    add-double v10, v10, v21

    mul-double/2addr v10, v6

    double-to-float v4, v10

    add-float/2addr v4, v2

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    iget v8, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    mul-float/2addr v8, v1

    add-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v6, 0x1

    aget v2, v2, v6

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    mul-float v6, v6, v20

    add-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v6, 0x2

    aget v8, v2, v6

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    mul-float/2addr v6, v3

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCoords:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCoords:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-double/2addr v13, v15

    add-int/lit8 v9, v9, 0x1

    move-wide v3, v15

    move/from16 v6, v18

    move-wide/from16 v7, v27

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_0
    move-wide v15, v3

    move/from16 v18, v6

    move-wide/from16 v27, v7

    const/4 v7, 0x0

    add-double v1, v27, v15

    add-int/lit8 v6, v18, 0x1

    move-wide v7, v1

    goto/16 :goto_0

    :cond_1
    move v1, v11

    const/4 v7, 0x0

    mul-int/2addr v9, v1

    const/4 v2, 0x1

    add-int/2addr v9, v2

    int-to-short v2, v9

    move v3, v7

    :goto_2
    iget-short v4, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    if-ge v3, v4, :cond_3

    move v4, v7

    :goto_3
    iget-short v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mSamplesZ:S

    mul-int/2addr v5, v1

    if-ge v4, v5, :cond_2

    mul-int v5, v3, v2

    add-int/2addr v5, v4

    int-to-short v6, v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    int-to-short v5, v5

    add-int/lit8 v9, v3, 0x1

    mul-int/2addr v9, v2

    add-int/2addr v9, v4

    add-int/lit8 v10, v9, 0x1

    int-to-short v10, v10

    int-to-short v9, v9

    iget-object v11, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_3

    :cond_2
    const/4 v8, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public normalize([F)V
    .locals 7

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    const/4 v1, 0x2

    aget v4, p1, v1

    aget v5, p1, v1

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v5, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    aget v5, p1, v0

    float-to-double v5, v5

    div-double/2addr v5, v3

    double-to-float v5, v5

    aput v5, p1, v0

    aget v0, p1, v2

    float-to-double v5, v0

    div-double/2addr v5, v3

    double-to-float v0, v5

    aput v0, p1, v2

    aget v0, p1, v1

    float-to-double v5, v0

    div-double/2addr v5, v3

    double-to-float v0, v5

    aput v0, p1, v1

    return-void
.end method

.method public pushTriangle([F[F[F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->pushVertex([F)V

    invoke-virtual {p0, p2}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->pushVertex([F)V

    invoke-virtual {p0, p3}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->pushVertex([F)V

    return-void
.end method

.method public pushVertex([F)V
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mNormals:Ljava/util/ArrayList;

    const/4 v3, 0x2

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    aget v4, v4, v1

    iget v5, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    aget v6, p1, v1

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    aget v4, v4, v2

    iget v5, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    aget v2, p1, v2

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mVertexs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    aget v2, v2, v3

    iget v4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    aget v5, p1, v3

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v0, p1, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    aget p1, p1, v3

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float p1, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v4, p1

    div-double/2addr v4, v2

    double-to-float p1, v4

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCoords:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCoords:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mIndexs:Ljava/util/ArrayList;

    iget-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCountIndex:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->mCountIndex:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public subdivide([F[F[FI)V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [F

    new-array v2, v0, [F

    new-array v3, v0, [F

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->pushTriangle([F[F[F)V

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget v5, p1, v4

    aget v6, p2, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aput v5, v1, v4

    aget v5, p2, v4

    aget v7, p3, v4

    add-float/2addr v5, v7

    div-float/2addr v5, v6

    aput v5, v2, v4

    aget v5, p3, v4

    aget v7, p1, v4

    add-float/2addr v5, v7

    div-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->normalize([F)V

    invoke-virtual {p0, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->normalize([F)V

    invoke-virtual {p0, v3}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->normalize([F)V

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0, p1, v1, v3, p4}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->subdivide([F[F[FI)V

    invoke-virtual {p0, p2, v2, v1, p4}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->subdivide([F[F[FI)V

    invoke-virtual {p0, p3, v3, v2, p4}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->subdivide([F[F[FI)V

    invoke-virtual {p0, v1, v2, v3, p4}, Lcom/heytap/wearable/support/watchface/gl/shape/DistortingSphere;->subdivide([F[F[FI)V

    return-void
.end method
