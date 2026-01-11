.class public Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;
.source "SourceFile"


# static fields
.field private static final LINE_RATIO:F = 0.24157304f


# instance fields
.field private mHeight:F

.field private mNumParticles:I

.field private mParticleSize:F

.field private mProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(FFLcom/heytap/wearable/support/watchface/gl/particle/DailyParticleInfluencer;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;-><init>(Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mProgress:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mWidth:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mHeight:F

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    new-instance p2, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;

    invoke-direct {p2}, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;-><init>()V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    return-void
.end method

.method private initParticle(Lcom/heytap/wearable/support/watchface/gl/particle/Particle;)V
    .locals 2

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget-object v1, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    invoke-virtual {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->getRandomParticlePositionAndDirection(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mParticleSize:F

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    iget v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

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
    .locals 9

    iget p3, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p3, v0

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mWidth:F

    mul-float/2addr v1, v2

    float-to-double v3, v1

    const-wide v5, 0x3fe75dcc63f14120L    # 0.7302

    mul-double/2addr v3, v5

    const-wide v5, 0x3fceebdd80000000L    # 0.2415730357170105

    div-double/2addr v3, v5

    float-to-double v7, p1

    sub-double/2addr v3, v7

    const v1, 0x3da3d70a    # 0.08f

    cmpg-float v1, p3, v1

    if-ltz v1, :cond_2

    sub-float/2addr p3, v0

    mul-float/2addr p3, v2

    const v1, 0x3e775eec

    div-float/2addr p3, v1

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p3, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mHeight:F

    const v2, 0x3ef0a3d7    # 0.47f

    mul-float/2addr p3, v2

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mWidth:F

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    float-to-double v7, p1

    cmpl-double p1, v3, v7

    if-lez p1, :cond_0

    iget p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mProgress:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget p3, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mHeight:F

    mul-float/2addr v2, p3

    float-to-double v0, v2

    mul-double/2addr v3, v5

    const-wide v5, 0x3fde147ae0000000L    # 0.4699999988079071

    mul-double/2addr v3, v5

    float-to-double v5, p3

    mul-double/2addr v3, v5

    sub-double/2addr v0, v3

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public emitParticles(IF[Landroid/renderscript/Float3;I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mNumParticles:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mParticleSize:F

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    new-instance p3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    invoke-direct {p3}, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;-><init>()V

    invoke-direct {p0, p3}, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->initParticle(Lcom/heytap/wearable/support/watchface/gl/particle/Particle;)V

    iget-object p4, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRandomParticlePositionAndDirection(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 4

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p2, Landroid/renderscript/Float3;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v2

    iput v0, p2, Landroid/renderscript/Float3;->y:F

    const/4 v0, 0x0

    iput v0, p2, Landroid/renderscript/Float3;->z:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float p2, v2

    sub-float/2addr p2, v1

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mWidth:F

    mul-float/2addr p2, v2

    const v2, 0x3e775eec

    div-float/2addr p2, v2

    iput p2, p1, Landroid/renderscript/Float3;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float p2, v2

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mHeight:F

    mul-float/2addr p2, v1

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr p2, v1

    iput p2, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p1, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public loadMesh()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mNumParticles:I

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;->initParticleMesh(Ljava/util/LinkedList;I)V

    return-void
.end method

.method public reset()V
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

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->initParticle(Lcom/heytap/wearable/support/watchface/gl/particle/Particle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    sput p1, Lcom/heytap/wearable/support/watchface/gl/particle/XYParticleMesh;->sAlpha:F

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->mProgress:F

    return-void
.end method

.method public update()Z
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->updateParticles()Z

    move-result v0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/DailySphereShapeParticleEmitter;->updateMesh()V

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
