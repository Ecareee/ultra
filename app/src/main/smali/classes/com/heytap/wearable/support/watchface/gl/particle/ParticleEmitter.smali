.class public Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mColor:I

.field public mDefaultInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;

.field public mForceInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;

.field public mLastTime:J

.field public mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

.field public mParticles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/heytap/wearable/support/watchface/gl/particle/Particle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    new-instance v1, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    invoke-direct {v1}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    const/4 v0, -0x1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mColor:I

    new-instance v0, Lcom/heytap/wearable/support/watchface/gl/particle/DefaultParticleInfluencer;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/gl/particle/DefaultParticleInfluencer;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mDefaultInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;

    new-instance v0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mForceInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticles:Ljava/util/LinkedList;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    new-instance v1, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    invoke-direct {v1}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    const/4 v0, -0x1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mColor:I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mDefaultInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;

    new-instance p1, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mForceInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;

    return-void
.end method


# virtual methods
.method public collisionWithExtent(FFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public emitParticles(IF[Landroid/renderscript/Float3;I)V
    .locals 0

    return-void
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mColor:I

    return v0
.end method

.method public getParticleMeshes()[Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mParticleMesh:[Lcom/heytap/wearable/support/watchface/gl/particle/ParticleMesh;

    return-object v0
.end method

.method public getRandomParticlePosition(Landroid/renderscript/Float3;)V
    .locals 0

    return-void
.end method

.method public getRandomParticlePositionAndDirection(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->start()V

    return-void
.end method

.method public setAcceleration(F)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mForceInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->setAcceleration(F)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mColor:I

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mDefaultInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->start()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->mForceInfluencer:Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->start()V

    return-void
.end method

.method public updateParticles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
