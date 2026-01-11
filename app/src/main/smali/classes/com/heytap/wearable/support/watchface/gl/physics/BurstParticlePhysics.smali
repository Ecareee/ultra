.class public Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;
.super Lcom/heytap/wearable/support/watchface/gl/physics/Physics;
.source "SourceFile"


# static fields
.field private static final MAX_COUNT_PHY:S = 0x14ds

.field private static mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;


# instance fields
.field private mCountPhy:S

.field private mIsBurstVBO:Z

.field private mIsBursting:Z


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;-><init>(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBursting:Z

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBurstVBO:Z

    iput-short p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mCountPhy:S

    return-void
.end method

.method public static destroySingleShareParticleEmitter()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    return-void
.end method

.method public static initSingleShareParticleEmitter()V
    .locals 4

    new-instance v0, Landroid/renderscript/Float3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    new-instance v1, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    new-instance v2, Lcom/heytap/wearable/support/watchface/gl/particle/BurstParticleInfluencer;

    invoke-direct {v2}, Lcom/heytap/wearable/support/watchface/gl/particle/BurstParticleInfluencer;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v3, v2}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;-><init>(Landroid/renderscript/Float3;FLcom/heytap/wearable/support/watchface/gl/particle/BurstParticleInfluencer;)V

    sput-object v1, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    const v0, -0x66000100

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->setColor(I)V

    return-void
.end method


# virtual methods
.method public createPhysicsVBO()V
    .locals 9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    const/16 v2, 0x1f4

    const v3, 0x3c75c28f    # 0.015f

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->emitParticles(IF[Landroid/renderscript/Float3;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    sget-object v1, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->getParticleMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setChildMeshes([Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->start()V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->restart()V

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x3

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    new-array v5, v5, [F

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v7, v5, v1

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v8

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getEdgeBlendParam()[F

    move-result-object v7

    const/4 v8, 0x2

    aget v7, v7, v8

    aput v7, v5, v8

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getPos()[F

    move-result-object v7

    invoke-virtual {v7}, [F->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    invoke-virtual {v4, v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setPos([F)V

    invoke-virtual {v4, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setScale([F)V

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getColor()[F

    move-result-object v6

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    invoke-virtual {v4, v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setColor([F)V

    invoke-virtual {v4, v5}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setEdgeBlendParam([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
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

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBursting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBursting:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsActionDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBursting:Z

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

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBursting:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBurstVBO:Z

    iput-short p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mCountPhy:S

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setIsShow(Z)V

    :cond_0
    return-void
.end method

.method public updatePhy()V
    .locals 9

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBursting:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBurstVBO:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->createPhysicsVBO()V

    iput-boolean v2, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mIsBurstVBO:Z

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->getRadius()F

    move-result v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getScale()[F

    move-result-object v7

    aput v0, v7, v1

    aput v0, v7, v2

    const/4 v8, 0x2

    aput v0, v7, v8

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getTexIndex()S

    move-result v7

    invoke-virtual {v6, v7}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setTexIndex(S)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-short v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mCountPhy:S

    const/16 v3, 0x14d

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->getChildMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mShareParticleEmitter:Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->update()Z

    move-result v0

    iget-short v4, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mCountPhy:S

    add-int/2addr v4, v2

    int-to-short v2, v4

    iput-short v2, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mCountPhy:S

    if-ge v2, v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iput-short v3, p0, Lcom/heytap/wearable/support/watchface/gl/physics/BurstParticlePhysics;->mCountPhy:S

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->setIsShow(Z)V

    :cond_3
    return-void
.end method
