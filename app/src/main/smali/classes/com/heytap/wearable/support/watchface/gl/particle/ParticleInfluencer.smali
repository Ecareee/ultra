.class public Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mLastTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->mLastTime:J

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;->mLastTime:J

    return-void
.end method

.method public updateParticles(Ljava/util/LinkedList;Lcom/heytap/wearable/support/watchface/gl/particle/ParticleEmitter;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method
