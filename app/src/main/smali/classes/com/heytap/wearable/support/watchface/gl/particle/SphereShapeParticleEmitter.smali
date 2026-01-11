.class public Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;
.source "SourceFile"


# instance fields
.field private mNumParticles:I

.field private mParticleSize:F

.field private mPos:Landroid/renderscript/Float3;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/renderscript/Float3;FLcom/heytap/wearable/support/watchface/gl/particle/BurstParticleInfluencer;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;-><init>(Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mPos:Landroid/renderscript/Float3;

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mRadius:F

    return-void
.end method

.method private initParticle(Lcom/heytap/wearable/support/watchface/gl/particle/Particle;)V
    .locals 3

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget-object v1, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    invoke-virtual {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->getRandomParticlePositionAndDirection(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mParticleSize:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mColor:I

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    const v0, 0x3f8ccccd    # 1.1f

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    return-void
.end method

.method private loadMesh()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mNumParticles:I

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->initParticleMesh(Ljava/util/LinkedList;I)V

    return-void
.end method

.method private updateMesh()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->updateParticleMesh(Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public collisionWithExtent(FFF)Z
    .locals 3

    new-instance v0, Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mPos:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr p1, v2

    iget v2, v1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr p2, v2

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->length(Landroid/renderscript/Float3;)F

    move-result p1

    iget p2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mRadius:F

    const p3, 0x3fa66666    # 1.3f

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public emitParticles(IF[Landroid/renderscript/Float3;I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mNumParticles:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mParticleSize:F

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    new-instance p3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    invoke-direct {p3}, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;-><init>()V

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->initParticle(Lcom/heytap/wearable/support/watchface/gl/particle/Particle;)V

    iget-object p4, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->loadMesh()V

    return-void
.end method

.method public getRandomParticlePositionAndDirection(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/renderscript/Float3;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/renderscript/Float3;->y:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/renderscript/Float3;->z:F

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mPos:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->mRadius:F

    iget v3, p2, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, p1, Landroid/renderscript/Float3;->x:F

    iget v1, v0, Landroid/renderscript/Float3;->y:F

    iget v3, p2, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, p1, Landroid/renderscript/Float3;->y:F

    iget v0, v0, Landroid/renderscript/Float3;->z:F

    iget p2, p2, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    iput v2, p1, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public restart()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->initParticle(Lcom/heytap/wearable/support/watchface/gl/particle/Particle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->start()V

    return-void
.end method

.method public update()Z
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->updateParticles()Z

    move-result v0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/SphereShapeParticleEmitter;->updateMesh()V

    return v0
.end method

.method public updateParticles()Z
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mDefaultInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->updateParticles(Ljava/util/LinkedList;Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;)Z

    move-result v0

    return v0
.end method
