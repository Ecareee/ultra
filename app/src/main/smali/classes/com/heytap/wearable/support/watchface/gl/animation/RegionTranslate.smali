.class public Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

.field private mLastTime:J

.field private mMaxPos:Landroid/renderscript/Float3;

.field private mMaxVel:F

.field private mMinPos:Landroid/renderscript/Float3;

.field private mPos:Landroid/renderscript/Float3;

.field private mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/TransformNode;Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mLastTime:J

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mPos:Landroid/renderscript/Float3;

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mMaxVel:F

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    new-instance p1, Landroid/renderscript/Float3;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget v0, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterX:F

    iget v1, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusX:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterY:F

    iget v2, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusY:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterZ:F

    iget p2, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusZ:F

    sub-float/2addr v2, p2

    invoke-direct {p1, v0, v1, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mMinPos:Landroid/renderscript/Float3;

    new-instance p1, Landroid/renderscript/Float3;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget v0, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterX:F

    iget v1, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusX:F

    add-float/2addr v0, v1

    iget v1, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterY:F

    iget v2, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusY:F

    add-float/2addr v1, v2

    iget v2, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mCenterZ:F

    iget p2, p2, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mRadiusZ:F

    add-float/2addr v2, p2

    invoke-direct {p1, v0, v1, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mMaxPos:Landroid/renderscript/Float3;

    return-void
.end method


# virtual methods
.method public collisionWithExtent(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mMinPos:Landroid/renderscript/Float3;

    iget v1, v0, Landroid/renderscript/Float3;->x:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mMaxPos:Landroid/renderscript/Float3;

    iget v2, v1, Landroid/renderscript/Float3;->x:F

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_1

    iget p1, v0, Landroid/renderscript/Float3;->y:F

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, v1, Landroid/renderscript/Float3;->y:F

    cmpl-float p1, p2, p1

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

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mLastTime:J

    return-void
.end method

.method public update()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mLastTime:J

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget v0, v0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mVelocity:F

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mPos:Landroid/renderscript/Float3;

    invoke-virtual {v1, v3}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->getPos(Landroid/renderscript/Float3;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mPos:Landroid/renderscript/Float3;

    iget v3, v1, Landroid/renderscript/Float3;->x:F

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget-object v4, v4, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mDirection:Landroid/renderscript/Float3;

    iget v5, v4, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    iget v1, v1, Landroid/renderscript/Float3;->y:F

    iget v3, v4, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {p0, v5, v0}, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->collisionWithExtent(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mTransformNode:Lcom/heytap/wearable/support/watchface/gl/TransformNode;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mPos:Landroid/renderscript/Float3;

    iget v3, v3, Landroid/renderscript/Float3;->z:F

    invoke-virtual {v1, v5, v0, v3}, Lcom/heytap/wearable/support/watchface/gl/TransformNode;->translate(FFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mDirection:Landroid/renderscript/Float3;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v3, v4, v3

    mul-float/2addr v3, v1

    iput v3, v0, Landroid/renderscript/Float3;->x:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mDirection:Landroid/renderscript/Float3;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v1, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v3, v5

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    iput v4, v0, Landroid/renderscript/Float3;->y:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mDirection:Landroid/renderscript/Float3;

    const/4 v3, 0x0

    iput v3, v1, Landroid/renderscript/Float3;->z:F

    iput v3, v0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mVelocity:F

    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mAttribute:Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;

    iget v1, v0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mVelocity:F

    iget v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/RegionTranslate;->mMaxVel:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/heytap/wearable/support/watchface/gl/ObjectAttribute;->mVelocity:F

    :cond_2
    return-void
.end method
