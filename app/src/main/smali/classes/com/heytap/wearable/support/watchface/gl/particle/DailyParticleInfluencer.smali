.class public Lcom/heytap/wearable/support/watchface/gl/particle/DailyParticleInfluencer;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;
.source "SourceFile"


# static fields
.field public static final LINE_RATIO:F = 0.24157304f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;-><init>()V

    return-void
.end method


# virtual methods
.method public updateParticles(Ljava/util/LinkedList;Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;)Z
    .locals 12
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

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;

    iget v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    const v5, 0x3f666666    # 0.9f

    iget v6, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    mul-float/2addr v5, v6

    cmpl-float v5, v4, v5

    const v7, 0x3ca3d70a    # 0.02f

    const/high16 v8, 0x3f000000    # 0.5f

    if-lez v5, :cond_0

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    mul-float/2addr v6, v7

    iget v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iput v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    goto :goto_1

    :cond_0
    iget v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v5

    mul-float/2addr v9, v5

    iput v9, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    mul-float/2addr v6, v7

    sub-float/2addr v9, v8

    mul-float/2addr v9, v6

    add-float/2addr v9, v4

    iput v9, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mSize:F

    :goto_1
    iget v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    cmpl-float v4, v4, v8

    const/4 v5, 0x1

    if-lez v4, :cond_1

    iget v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    add-int/2addr v4, v5

    goto :goto_2

    :cond_1
    iget v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    sub-int/2addr v4, v5

    :goto_2
    iput v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    mul-float v4, v2, v2

    iget v6, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    mul-float/2addr v6, v2

    const v7, 0x3f866666    # 1.05f

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    iget-object v6, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget v7, v6, Landroid/renderscript/Float3;->x:F

    iget-object v9, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    iget v10, v9, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v10, v4

    add-float/2addr v10, v7

    iget v7, v6, Landroid/renderscript/Float3;->y:F

    iget v11, v9, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v11, v4

    add-float/2addr v11, v7

    iget v6, v6, Landroid/renderscript/Float3;->z:F

    iget v7, v9, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v7, v4

    add-float/2addr v7, v6

    invoke-virtual {p2, v10, v11, v7}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;->collisionWithExtent(FFF)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v1, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iput v10, v1, Landroid/renderscript/Float3;->x:F

    iput v11, v1, Landroid/renderscript/Float3;->y:F

    iput v7, v1, Landroid/renderscript/Float3;->z:F

    iget v1, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    iget v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    iput v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    iput-boolean v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    move v1, v5

    goto/16 :goto_0

    :cond_2
    iget-object v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget v5, v5, Landroid/renderscript/Float3;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    iget-object v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    iget v6, v5, Landroid/renderscript/Float3;->y:F

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v6, v7

    iput v6, v5, Landroid/renderscript/Float3;->y:F

    iget-object v5, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget v7, v5, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    iput v4, v5, Landroid/renderscript/Float3;->y:F

    :cond_3
    iget-object v4, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    iget v5, v4, Landroid/renderscript/Float3;->x:F

    const v6, 0x40047712

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    const v5, -0x3ffb88ee

    iput v5, v4, Landroid/renderscript/Float3;->x:F

    :cond_4
    iput-boolean v0, v3, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    goto/16 :goto_0

    :cond_5
    return v1
.end method
