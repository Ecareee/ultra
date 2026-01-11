.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BG_COLOR:I = -0xd9d9da


# instance fields
.field private mIsColorfulStyle:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mStartAngle:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mPaint:Landroid/graphics/Paint;

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mStartAngle:F

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mSweepAngle:F

    return-void
.end method

.method private drawDefaultProgress(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mIsColorfulStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mPaint:Landroid/graphics/Paint;

    const v1, -0xd9d9da

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mPaint:Landroid/graphics/Paint;

    const v1, 0x26ffffff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mStartAngle:F

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mSweepAngle:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;ZZIF)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p2, p5, v1

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float p2, p5, v0

    if-ltz p2, :cond_3

    move p5, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p5, v1

    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mIsColorfulStyle:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mStartAngle:F

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mSweepAngle:F

    mul-float v3, p2, p5

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;ZZIF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->drawDefaultProgress(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p5}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->drawProgress(Landroid/graphics/Canvas;ZZIF)V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mRectF:Landroid/graphics/RectF;

    iput-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressFullRender;->mIsColorfulStyle:Z

    return-void
.end method
