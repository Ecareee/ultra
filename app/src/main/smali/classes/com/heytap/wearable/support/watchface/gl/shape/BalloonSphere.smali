.class public Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;
.super Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/wearable/support/watchface/gl/physics/PhysicsInterface;


# static fields
.field private static mShareBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

.field private static mShareSphere:Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;


# instance fields
.field private mBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

.field private mLight:[Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;

.field private mLightCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;-><init>()V

    new-instance v0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-direct {v0, p0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;-><init>(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mLight:[Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mLightCount:I

    return-void
.end method

.method private createPlaneMesh(Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;)V
    .locals 11

    const/16 v0, 0xc

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, v1, v4

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v1, v6

    const/4 v6, 0x3

    aput v3, v1, v6

    const/4 v6, 0x4

    aput v7, v1, v6

    const/4 v8, 0x5

    aput v7, v1, v8

    const/4 v8, 0x6

    aput v3, v1, v8

    const/4 v9, 0x7

    aput v7, v1, v9

    const/16 v9, 0x8

    aput v5, v1, v9

    const/16 v10, 0x9

    aput v3, v1, v10

    const/16 v3, 0xa

    aput v5, v1, v3

    const/16 v3, 0xb

    aput v5, v1, v3

    new-array v3, v9, [F

    fill-array-data v3, :array_0

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateData(I)V

    invoke-virtual {p1, v5, v1, v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateData()V

    new-array v1, v8, [S

    fill-array-data v1, :array_1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v8, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->updateIndexData(ILjava/nio/ShortBuffer;)V

    iput v7, p1, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    iput-boolean v4, p1, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mIsCreated:Z

    return-void

    nop

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

.method public static destroySingleShareSphereMesh()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->destroySingleShareParticleEmitter()V

    return-void
.end method

.method public static initSingleShareSphereMesh()V
    .locals 2

    new-instance v0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareSphere:Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;

    new-instance v1, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-direct {v1, v0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;-><init>(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    sput-object v1, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->initSingleShareParticleEmitter()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->create(FFFF)V

    return-void
.end method

.method public create(FFFF)V
    .locals 5

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareSphere:Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->getIsCreated()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareSphere:Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->createPlaneMesh(Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;)V

    :cond_1
    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareSphere:Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexCount:I

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexCount:I

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mIndexBuffer:[I

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mVertexBuffer:[I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v3, 0x2

    aput p3, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mScale:[F

    aput p4, v0, v1

    aput p4, v0, v2

    aput p4, v0, v3

    iput p4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mBoundingBox:[F

    sub-float v4, p1, p4

    aput v4, v0, v1

    sub-float v1, p2, p4

    aput v1, v0, v2

    sub-float v1, p3, p4

    aput v1, v0, v3

    const/4 v1, 0x3

    add-float/2addr p1, p4

    aput p1, v0, v1

    const/4 p1, 0x4

    add-float/2addr p2, p4

    aput p2, v0, p1

    const/4 p1, 0x5

    add-float/2addr p3, p4

    aput p3, v0, p1

    iput-boolean v2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mIsCreated:Z

    return-void
.end method

.method public distanceFrom(Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;)F
    .locals 6

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    aget v5, p1, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mPos:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    aget p1, p1, v1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public doAction()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->doAction()Z

    move-result v0

    return v0
.end method

.method public getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
    .locals 2

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->getIsActionDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareSphere:Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->getIsActionDone()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->createPhysicsVBO()V

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->setIsActionDone(Z)V

    :cond_2
    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mShareSphere:Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->mChildMeshes:[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    return-object v0
.end method

.method public getIsActionDone()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->getIsActionDone()Z

    move-result v0

    return v0
.end method

.method public getLight()[Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mLight:[Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;

    return-object v0
.end method

.method public getLightCount()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mLightCount:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/Sphere;->mRadius:F

    return v0
.end method

.method public setIsActionDone(Z)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->setIsActionDone(Z)V

    return-void
.end method

.method public setLightCount(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mLightCount:I

    return-void
.end method

.method public updatePhy()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/BalloonSphere;->mBurstPhysics:Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->updatePhy()V

    return-void
.end method
