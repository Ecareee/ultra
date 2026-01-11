.class public Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLastTime:J

.field private mMax:[F

.field private mMin:[F

.field private mNum:I

.field private mValue:[F

.field private mVelocity:[F


# direct methods
.method public constructor <init>([F[F[F[FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mValue:[F

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mMin:[F

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mMax:[F

    iput-object p4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mVelocity:[F

    iput p5, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mNum:I

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mLastTime:J

    return-void
.end method

.method public update()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mLastTime:J

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mNum:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mValue:[F

    aget v3, v1, v0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mVelocity:[F

    aget v5, v4, v0

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mMin:[F

    aget v3, v3, v0

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/gl/animation/ValueAlter;->mMax:[F

    aget v3, v3, v0

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    aput v5, v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    aget v1, v4, v0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v1, v3

    aput v1, v4, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
