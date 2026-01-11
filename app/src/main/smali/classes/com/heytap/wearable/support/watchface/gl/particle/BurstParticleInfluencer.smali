.class public Lcom/heytap/wearable/support/watchface/gl/particle/BurstParticleInfluencer;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;
.source "SourceFile"


# instance fields
.field private final MIN_VElOCITY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;-><init>()V

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/BurstParticleInfluencer;->MIN_VElOCITY:F

    return-void
.end method


# virtual methods
.method public updateParticles(Ljava/util/LinkedList;Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/heytap/wearable/support/watchface/gl/particle/Particle;",
            ">;",
            "Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->mLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->mLastTime:J

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    mul-float v4, v2, v2

    iget v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    mul-float/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    mul-float/2addr v7, v6

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    iget-object v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget v5, v4, Landroid/renderscript/Float3;->x:F

    iget-object v6, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    iget v8, v6, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v8, v7

    add-float/2addr v8, v5

    iget v5, v4, Landroid/renderscript/Float3;->y:F

    iget v9, v6, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v9, v7

    add-float/2addr v9, v5

    iget v4, v4, Landroid/renderscript/Float3;->z:F

    iget v5, v6, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v7, v5

    add-float/2addr v7, v4

    invoke-virtual {p2, v8, v9, v7}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->collisionWithExtent(FFF)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iput v8, v4, Landroid/renderscript/Float3;->x:F

    iput v9, v4, Landroid/renderscript/Float3;->y:F

    iput v7, v4, Landroid/renderscript/Float3;->z:F

    iget v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    iget v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    iput v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    iput v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    iput-boolean v0, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    :goto_1
    iget-boolean v3, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
