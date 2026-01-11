.class public Lcom/heytap/wearable/support/watchface/gl/shape/Plane;
.super Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
.source "SourceFile"


# instance fields
.field private mDepth:F

.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mWidth:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mHeight:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mDepth:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mWidth:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mHeight:F

    iput p3, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mDepth:F

    return-void
.end method


# virtual methods
.method public create()V
    .locals 10

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mWidth:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mHeight:F

    mul-float/2addr v2, v1

    const/16 v1, 0xc

    new-array v3, v1, [F

    neg-float v4, v0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v6, 0x1

    aput v2, v3, v6

    iget v6, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Plane;->mDepth:F

    const/4 v7, 0x2

    aput v6, v3, v7

    const/4 v7, 0x3

    aput v0, v3, v7

    const/4 v7, 0x4

    aput v2, v3, v7

    const/4 v8, 0x5

    aput v6, v3, v8

    const/4 v8, 0x6

    aput v0, v3, v8

    neg-float v0, v2

    const/4 v2, 0x7

    aput v0, v3, v2

    const/16 v2, 0x8

    aput v6, v3, v2

    const/16 v9, 0x9

    aput v4, v3, v9

    const/16 v4, 0xa

    aput v0, v3, v4

    const/16 v0, 0xb

    aput v6, v3, v0

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateData(I)V

    invoke-virtual {p0, v2, v3, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    new-array v0, v8, [S

    fill-array-data v0, :array_1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v8, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexData(ILjava/nio/ShortBuffer;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x1s
        0x0s
        0x3s
        0x1s
        0x3s
        0x2s
    .end array-data
.end method
