.class public Lcom/heytap/wearable/support/watchface/gl/particle/DefaultParticleInfluencer;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;
.source "SourceFile"


# instance fields
.field private final MIN_VElOCITY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;-><init>()V

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/DefaultParticleInfluencer;->MIN_VElOCITY:F

    return-void
.end method


# virtual methods
.method public updateParticles(Ljava/util/LinkedList;Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;)Z
    .locals 8
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

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-gez v1, :cond_0

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v6, v4, v6

    mul-float/2addr v6, v5

    iput v6, v1, Landroid/renderscript/Float3;->x:F

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v6, v4, v6

    mul-float/2addr v6, v5

    iput v6, v1, Landroid/renderscript/Float3;->y:F

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    iput v3, v1, Landroid/renderscript/Float3;->z:F

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/gl/math/VectorMath;->normalize(Landroid/renderscript/Float3;)V

    const v1, 0x3c23d70a    # 0.01f

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    :cond_0
    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    neg-float v1, v1

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    :cond_1
    mul-float v1, v2, v2

    iget v5, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    mul-float/2addr v5, v2

    iget v6, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    mul-float/2addr v6, v4

    mul-float/2addr v6, v1

    add-float/2addr v6, v5

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget v4, v1, Landroid/renderscript/Float3;->x:F

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    iget v7, v5, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    iget v1, v1, Landroid/renderscript/Float3;->y:F

    iget v4, v5, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v6, v4

    add-float/2addr v6, v1

    invoke-virtual {p2, v7, v6, v3}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->collisionWithExtent(FFF)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iput v7, v1, Landroid/renderscript/Float3;->x:F

    iput v6, v1, Landroid/renderscript/Float3;->y:F

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    iget v3, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    :cond_2
    iput v3, v0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
