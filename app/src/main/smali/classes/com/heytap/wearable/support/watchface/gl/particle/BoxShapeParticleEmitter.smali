.class public Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;
.source "SourceFile"


# instance fields
.field private mExtent:Landroid/renderscript/Float3;

.field private mMaxPos:Landroid/renderscript/Float3;

.field private mMinPos:Landroid/renderscript/Float3;

.field private mNumParticles:I


# direct methods
.method public constructor <init>(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 3

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;-><init>()V

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMinPos:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMaxPos:Landroid/renderscript/Float3;

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mExtent:Landroid/renderscript/Float3;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMinPos:Landroid/renderscript/Float3;

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    iput v2, v1, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    iput v2, v1, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    iput v2, v1, Landroid/renderscript/Float3;->z:F

    iget v1, p2, Landroid/renderscript/Float3;->x:F

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p2, Landroid/renderscript/Float3;->y:F

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p2, Landroid/renderscript/Float3;->z:F

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMaxPos:Landroid/renderscript/Float3;

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    iget v2, p2, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    iget v2, p2, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    iget p2, p2, Landroid/renderscript/Float3;->z:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method private loadMesh()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mNumParticles:I

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

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMinPos:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMaxPos:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_1

    iget p1, v0, Landroid/renderscript/Float3;->y:F

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, v1, Landroid/renderscript/Float3;->y:F

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_1

    iget p1, v0, Landroid/renderscript/Float3;->z:F

    cmpg-float p1, p3, p1

    if-ltz p1, :cond_1

    iget p1, v1, Landroid/renderscript/Float3;->z:F

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public emitParticles(IF[Landroid/renderscript/Float3;I)V
    .locals 4

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mNumParticles:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    invoke-direct {v1}, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;-><init>()V

    iget-object v2, v1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    if-ge v0, p4, :cond_0

    aget-object v3, p3, v0

    iget v3, v3, Landroid/renderscript/Float3;->x:F

    iput v3, v2, Landroid/renderscript/Float3;->x:F

    aget-object v3, p3, v0

    iget v3, v3, Landroid/renderscript/Float3;->y:F

    iput v3, v2, Landroid/renderscript/Float3;->y:F

    aget-object v3, p3, v0

    iget v3, v3, Landroid/renderscript/Float3;->z:F

    iput v3, v2, Landroid/renderscript/Float3;->z:F

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->getRandomParticlePosition(Landroid/renderscript/Float3;)V

    :goto_1
    iget-object v2, v1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    invoke-virtual {p0, v2}, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->getRandomParticleDirection(Landroid/renderscript/Float3;)V

    iput p2, v1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mColor:I

    iput v2, v1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->loadMesh()V

    return-void
.end method

.method public getRandomParticleDirection(Landroid/renderscript/Float3;)V
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Landroid/renderscript/Float3;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Landroid/renderscript/Float3;->y:F

    const/4 v0, 0x0

    iput v0, p1, Landroid/renderscript/Float3;->z:F

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    return-void
.end method

.method public getRandomParticlePosition(Landroid/renderscript/Float3;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMinPos:Landroid/renderscript/Float3;

    iget v0, v0, Landroid/renderscript/Float3;->x:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mExtent:Landroid/renderscript/Float3;

    iget v1, v1, Landroid/renderscript/Float3;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p1, Landroid/renderscript/Float3;->x:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMinPos:Landroid/renderscript/Float3;

    iget v0, v0, Landroid/renderscript/Float3;->y:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mExtent:Landroid/renderscript/Float3;

    iget v1, v1, Landroid/renderscript/Float3;->y:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p1, Landroid/renderscript/Float3;->y:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mMinPos:Landroid/renderscript/Float3;

    iget v0, v0, Landroid/renderscript/Float3;->z:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->mExtent:Landroid/renderscript/Float3;

    iget v1, v1, Landroid/renderscript/Float3;->z:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p1, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->updateParticles()Z

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/BoxShapeParticleEmitter;->updateMesh()V

    return-void
.end method

.method public updateParticles()Z
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mDefaultInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->updateParticles(Ljava/util/LinkedList;Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;)Z

    move-result v0

    return v0
.end method
