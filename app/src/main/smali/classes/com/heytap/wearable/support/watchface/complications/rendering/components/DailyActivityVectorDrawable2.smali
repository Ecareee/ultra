.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final BG_COLORS:[I

.field private static final COLORS:[I

.field private static final DEFAULT_PROGRESS:F = 0.0f

.field private static final DURATION_INDEX:I = 0x3

.field private static final ENERGY_INDEX:I = 0x1

.field private static final FREQUENCY_INDEX:I = 0x2

.field private static final GAP_SIZE:I = 0x3

.field private static final HALF_PROGRESS:F = 0.5f

.field private static final PATH_LENGTH:I = 0x4

.field private static final PRE_HALF_PROGRESS:F = 0.2f

.field private static final STEPS_INDEX:I = 0x0

.field private static final STROKE_OFFSET:I = 0x4

.field private static final STROKE_WIDTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DailyActivityVectorDrawable"

.field private static final WHITE_BG_COLOR:I = 0x33ffffff


# instance fields
.field private mCircleSize:I

.field private mContext:Landroid/content/Context;

.field private mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mHasInit:Z

.field private mMaxValues:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressValues:[F

.field private final mRectFs:[Landroid/graphics/RectF;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mUiMode:I

.field private mValues:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->BG_COLORS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->COLORS:[I

    return-void

    :array_0
    .array-data 4
        0x3312ff51
        0x33ff5926
        0x33ffff26
        0x330cc3ff
    .end array-data

    :array_1
    .array-data 4
        -0xed00af
        -0xa6da
        -0xda
        -0xf33c01
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->createWithPrimaryColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mProgressValues:[F

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mMaxValues:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mValues:[I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mUiMode:I

    new-array v1, v1, [Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1f40
        0x12c
        0x1e
        0xc
    .end array-data
.end method

.method private dataChange([I[I)V
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    aput v3, p1, v0

    aput v1, p1, v2

    aget v1, p2, v0

    aget v3, p2, v2

    aput v3, p2, v0

    aput v1, p2, v2

    const/4 v0, 0x2

    aget v1, p1, v0

    const/4 v2, 0x3

    aget v3, p1, v2

    aput v3, p1, v0

    aput v1, p1, v2

    aget p1, p2, v0

    aget v1, p2, v2

    aput v1, p2, v0

    aput p1, p2, v2

    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRealCircle(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V
    .locals 7

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p3, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    cmpl-float p4, p3, v0

    if-lez p4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 p4, 0x43a00000    # 320.0f

    cmpl-float p4, p3, p4

    if-lez p4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    rem-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1, p3, p4, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mShadow:Landroid/graphics/drawable/Drawable;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x4

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x4

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x4

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 p4, 0x42b40000    # 90.0f

    sub-float/2addr p3, p4

    const/high16 p4, 0x41a00000    # 20.0f

    sub-float v2, p3, p4

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private effectiveProgress(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const v2, 0x3e4ccccd    # 0.2f

    if-gez v1, :cond_1

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    return p1

    :cond_1
    const v1, 0x3f4ccccd    # 0.8f

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    return p1

    :cond_2
    return v1
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->daily_activity_small_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCircleSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->daily_activity_shadow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mShadow:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private declared-synchronized setMax(II)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mMaxValues:[I

    aget v1, v0, p2

    if-eq p1, v1, :cond_1

    aput p1, v0, p2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mProgressValues:[F

    aget v1, v0, p2

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_2

    aput p1, v0, p2

    goto :goto_0

    :cond_1
    aput p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setValue(II)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mValues:[I

    aput p1, v0, p2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mMaxValues:[I

    aget v1, v0, p2

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mProgressValues:[F

    const/4 v0, 0x0

    aput v0, p1, p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mProgressValues:[F

    int-to-float p1, p1

    aget v0, v0, p2

    int-to-float v0, v0

    div-float/2addr p1, v0

    aput p1, v1, p2

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mHasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->BG_COLORS:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->drawBackgroundCircle(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mProgressValues:[F

    aget v2, v2, v0

    sget-object v3, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->COLORS:[I

    aget v3, v3, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    const v2, 0x33ffffff

    invoke-direct {p0, p1, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->drawBackgroundCircle(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mProgressValues:[F

    aget v2, v2, v0

    const/4 v3, -0x1

    :goto_1
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->drawRealCircle(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCaloriesValue()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getExerciseValue()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getStandbyValue()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mValues:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getStepsValue()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p3, p1

    int-to-float p3, p3

    sub-int/2addr p4, p2

    int-to-float p4, p4

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCircleSize:I

    mul-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    sub-float/2addr p3, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr p3, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    float-to-int p3, p3

    add-int/2addr p1, p3

    mul-int/lit8 p3, v0, 0x2

    int-to-float p3, p3

    sub-float/2addr p4, p3

    sub-float/2addr p4, v1

    div-float/2addr p4, v2

    float-to-int p3, p4

    add-int/2addr p2, p3

    add-int p3, p1, v0

    const/4 p4, 0x3

    add-int/2addr p3, p4

    add-int v1, p2, v0

    add-int/2addr v1, p4

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    int-to-float v3, p1

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v3, v4

    int-to-float v5, p2

    add-float/2addr v5, v4

    add-int v6, p1, v0

    int-to-float v6, v6

    sub-float/2addr v6, v4

    add-int/2addr v0, p2

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    int-to-float v2, v1

    add-float/2addr v2, v4

    iget v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCircleSize:I

    add-int/2addr p1, v6

    int-to-float p1, p1

    sub-float/2addr p1, v4

    add-int/2addr v6, v1

    int-to-float v6, v6

    sub-float/2addr v6, v4

    invoke-virtual {v0, v3, v2, p1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    int-to-float v3, p3

    add-float/2addr v3, v4

    iget v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCircleSize:I

    add-int v7, p3, v6

    int-to-float v7, v7

    sub-float/2addr v7, v4

    add-int/2addr p2, v6

    int-to-float p2, p2

    sub-float/2addr p2, v4

    invoke-virtual {p1, v3, v5, v7, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mRectFs:[Landroid/graphics/RectF;

    aget-object p1, p1, p4

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCircleSize:I

    add-int/2addr p3, p2

    int-to-float p3, p3

    sub-float/2addr p3, v4

    add-int/2addr v1, p2

    int-to-float p2, v1

    sub-float/2addr p2, v4

    invoke-virtual {p1, v3, v2, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mHasInit:Z

    return-void
.end method

.method public setCaloriesTarget(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setMax(II)V

    return-void
.end method

.method public setCaloriesValue(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setExerciseTarget(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setMax(II)V

    return-void
.end method

.method public setExerciseValue(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStandbyTarget(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setMax(II)V

    return-void
.end method

.method public setStandbyValue(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStepsTarget(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setMax(II)V

    return-void
.end method

.method public setStepsValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    return-void
.end method

.method public setTargetAndCurrentValues([I[I)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    array-length v2, p2

    :goto_1
    const-string v3, "DailyActivityVectorDrawable"

    const/4 v4, 0x4

    if-ne v1, v4, :cond_6

    if-eq v2, v4, :cond_2

    goto :goto_5

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->dataChange([I[I)V

    array-length v1, p1

    if-lez v1, :cond_3

    array-length v1, p1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget v5, p1, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setTargetAndCurrentValues] targetValues\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    array-length v1, p2

    if-lez v1, :cond_4

    array-length v1, p2

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget v5, p2, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setTargetAndCurrentValues] currentValues\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v0, v4, :cond_5

    aget v1, p1, v0

    invoke-direct {p0, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setMax(II)V

    aget v1, p2, v0

    invoke-direct {p0, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setValue(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_6
    :goto_5
    const-string p1, "[setTargetAndCurrentValues] arrays length must be 4!"

    invoke-static {v3, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->mUiMode:I

    return-void
.end method

.method public updateData([I[I)V
    .locals 2

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setCaloriesTarget(I)V

    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setCaloriesValue(I)V

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setStepsTarget(I)V

    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setStepsValue(I)V

    const/4 v0, 0x3

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setStandbyTarget(I)V

    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setStandbyValue(I)V

    const/4 v0, 0x2

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setExerciseTarget(I)V

    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable2;->setExerciseValue(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "DailyActivityVectorDrawable"

    const-string p2, "[updateData] arguments is illegal"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
