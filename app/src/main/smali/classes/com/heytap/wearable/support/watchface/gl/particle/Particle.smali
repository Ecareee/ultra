.class public Lcom/heytap/wearable/support/watchface/gl/particle/Particle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final PARTICLE_ACCELERATION:F

.field public mAcceleration:F

.field public mAccelerationOrign:F

.field public mColor:I

.field public mDirection:Landroid/renderscript/Float3;

.field public mIsShow:Z

.field public mPosition:Landroid/renderscript/Float3;

.field public mSize:F

.field public mVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->PARTICLE_ACCELERATION:F

    new-instance v1, Landroid/renderscript/Float3;

    invoke-direct {v1}, Landroid/renderscript/Float3;-><init>()V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mPosition:Landroid/renderscript/Float3;

    new-instance v1, Landroid/renderscript/Float3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mDirection:Landroid/renderscript/Float3;

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAcceleration:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mAccelerationOrign:F

    iput v2, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mVelocity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/gl/particle/Particle;->mIsShow:Z

    return-void
.end method
