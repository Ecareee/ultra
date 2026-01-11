.class public Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAcceleration:F

.field public mCenterX:F

.field public mCenterY:F

.field public mCenterZ:F

.field public mDirection:Landroid/renderscript/Float3;

.field public mRadiusX:F

.field public mRadiusY:F

.field public mRadiusZ:F

.field public mVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/renderscript/Float3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mDirection:Landroid/renderscript/Float3;

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mAcceleration:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mVelocity:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterX:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterY:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterZ:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusX:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusY:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusZ:F

    return-void
.end method
