.class public Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;
.super Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;
.source "SourceFile"


# instance fields
.field private mAcceleration:F

.field private mBeginTime:J

.field private mDirection:Landroid/renderscript/Float3;

.field private mDuration:J

.field private mLastDis:F

.field private mRunning:Z

.field private mRunningLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/particle/ParticleInfluencer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mAcceleration:F

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mDuration:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mBeginTime:J

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mLastDis:F

    new-instance v1, Landroid/renderscript/Float3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v0}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mDirection:Landroid/renderscript/Float3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mRunning:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mRunningLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public setAcceleration(F)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mRunningLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mRunning:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mAcceleration:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mBeginTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mRunningLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/ForceParticleInfluencer;->mRunningLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
