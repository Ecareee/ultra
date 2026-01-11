.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BG_COLORS:[I

.field private static final BG_DEFAULT_COLOR_VALUE:I = -0xb0d0d3

.field private static final COLOR_VALUES:[I

.field private static final FIVE_START_ANGLES:[I

.field private static final FIVE_SWEEP_ANGLE:I = 0x28

.field private static final START_ANGLES:[I

.field private static final SWEEP_ANGLES:[I

.field private static final WHITE_BG_DEFAULT_COLOR_VALUE:I = 0x66ffffff


# instance fields
.field private mBgColors:[I

.field private mColorValues:[I

.field private mIsColorfulStyle:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mStartAngles:[I

.field private mSweepAngles:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->START_ANGLES:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->SWEEP_ANGLES:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->BG_COLORS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->COLOR_VALUES:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->FIVE_START_ANGLES:[I

    return-void

    :array_0
    .array-data 4
        -0xe6
        -0xa0
        -0x50
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x32
        0x3c
        0x3c
        0x32
    .end array-data

    :array_2
    .array-data 4
        -0xdbcbcb
        -0xd7cad2
        -0xc2c5d5
        -0xc0ccd9
    .end array-data

    :array_3
    .array-data 4
        -0xa3014a
        -0xff29a4
        -0x5800
        -0x8600
    .end array-data

    :array_4
    .array-data 4
        -0xe6
        -0xaa
        -0x6e
        -0x32
        0xa
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawDefaultProgress(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mBgColors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mPaint:Landroid/graphics/Paint;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mStartAngles:[I

    aget v1, v1, v0

    int-to-float v5, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mSweepAngles:[I

    aget v1, v1, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V
    .locals 7

    const/4 v0, -0x1

    if-nez p3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isActive(J)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getPercentage()F

    move-result p3

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTargetValue()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTargetValue()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    float-to-int v0, p3

    :cond_3
    :goto_0
    const/4 p2, 0x1

    if-lt v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    if-ltz v0, :cond_6

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mColorValues:[I

    array-length p3, p2

    if-lt v0, p3, :cond_5

    goto :goto_1

    :cond_5
    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mPaint:Landroid/graphics/Paint;

    aget p2, p2, v0

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mRectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mStartAngles:[I

    aget p2, p2, v0

    int-to-float v3, p2

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mSweepAngles:[I

    aget p2, p2, v0

    int-to-float v4, p2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V
    .locals 6

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getTargetValue()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mBgColors:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mColorValues:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mStartAngles:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mSweepAngles:[I

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mIsColorfulStyle:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v1

    const v2, -0xb0d0d3

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const v2, 0x66ffffff

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    goto :goto_4

    :cond_2
    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->FIVE_START_ANGLES:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mStartAngles:[I

    :goto_1
    if-ge v3, v4, :cond_6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mBgColors:[I

    aput v2, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mColorValues:[I

    aput v1, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mSweepAngles:[I

    const/16 v5, 0x28

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v3, v4, :cond_5

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mIsColorfulStyle:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mBgColors:[I

    sget-object v5, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->BG_COLORS:[I

    aget v5, v5, v3

    aput v5, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mColorValues:[I

    sget-object v5, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->COLOR_VALUES:[I

    aget v5, v5, v3

    aput v5, v0, v3

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mBgColors:[I

    aput v2, v0, v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mColorValues:[I

    aput v1, v0, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->START_ANGLES:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mStartAngles:[I

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->SWEEP_ANGLES:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mSweepAngles:[I

    :cond_6
    :goto_4
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->drawDefaultProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->drawProgress(Landroid/graphics/Canvas;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;Z)V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mRectF:Landroid/graphics/RectF;

    iput-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDashedRender;->mIsColorfulStyle:Z

    return-void
.end method
