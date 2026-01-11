.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final ACTNUM_INDEX:I = 0x2

.field private static final BG_COLORS:[I

.field private static final COLORS:[[I

.field private static final DEFAULT_PROGRESS:F = 0.0f

.field private static final ENERGY_INDEX:I = 0x0

.field private static final EXERCISE_INDEX:I = 0x3

.field private static final GRADIENT_COORDINATE:[[I

.field private static final HALF_PROGRESS:F = 0.5f

.field private static final OFFSET:[F

.field private static final PATH_LENGTH:I = 0x4

.field private static final PATH_NAMES:[Ljava/lang/String;

.field private static final PRE_HALF_PROGRESS:F = 0.2f

.field private static final STEPS_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DailyActivityVectorDrawable"

.field public static final TYPE_LARGE_DAILY_ACTIVITY:I = 0x1

.field public static final TYPE_SMALL_DAILY_ACTIVITY:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

.field private mGradients:[Landroid/graphics/LinearGradient;

.field private mHasInit:Z

.field private mMaxValues:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mPathMeasures:[Landroid/graphics/PathMeasure;

.field private mPaths:[Landroid/graphics/Path;

.field private mProgressValues:[F

.field private mRangedPaint:Landroid/graphics/Paint;

.field private mRangedPaths:[Landroid/graphics/Path;

.field private mType:F

.field private mUiMode:I

.field private mValues:[I

.field private strokeWidthScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "energy"

    const-string v1, "step"

    const-string v2, "activities_number"

    const-string v3, "exercise_time"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->PATH_NAMES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x24:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y277:I

    const/4 v6, 0x1

    aput v5, v2, v6

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x188:I

    const/4 v8, 0x2

    aput v7, v2, v8

    sget v9, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y441:I

    const/4 v10, 0x3

    aput v9, v2, v10

    aput-object v2, v1, v4

    new-array v2, v0, [I

    aput v3, v2, v4

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y87:I

    aput v3, v2, v6

    aput v7, v2, v8

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y251:I

    aput v7, v2, v10

    aput-object v2, v1, v6

    new-array v2, v0, [I

    sget v9, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x214:I

    aput v9, v2, v4

    aput v5, v2, v6

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x378:I

    aput v5, v2, v8

    sget v11, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y411:I

    aput v11, v2, v10

    aput-object v2, v1, v8

    new-array v2, v0, [I

    aput v9, v2, v4

    aput v3, v2, v6

    aput v5, v2, v8

    aput v7, v2, v10

    aput-object v2, v1, v10

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->GRADIENT_COORDINATE:[[I

    new-array v1, v10, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->OFFSET:[F

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->BG_COLORS:[I

    new-array v0, v0, [[I

    new-array v1, v10, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v10, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v10, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v8

    new-array v1, v10, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v10

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->COLORS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x66ff6f44
        0x663fd18a
        0x663596ff
        0x66b9db3c
    .end array-data

    :array_2
    .array-data 4
        -0x90bc
        -0x90bc
        -0x90bc
    .end array-data

    :array_3
    .array-data 4
        -0xc02e76
        -0xc02e76
        -0xc02e76
    .end array-data

    :array_4
    .array-data 4
        -0xca6901
        -0xca6901
        -0xca6901
    .end array-data

    :array_5
    .array-data 4
        -0x4624c4
        -0x4624c4
        -0x4624c4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Path;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaths:[Landroid/graphics/Path;

    new-array v1, v0, [Landroid/graphics/Path;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaths:[Landroid/graphics/Path;

    new-array v1, v0, [Landroid/graphics/PathMeasure;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPathMeasures:[Landroid/graphics/PathMeasure;

    new-array v1, v0, [Landroid/graphics/LinearGradient;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mGradients:[Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->createWithPrimaryColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    move-result-object v2

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mProgressValues:[F

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mMaxValues:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mValues:[I

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->strokeWidthScale:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mUiMode:I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->init(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x12c
        0x1f40
        0xc
        0x1e
    .end array-data
.end method

.method private drawDefPaths(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->BG_COLORS:[I

    aget v2, v2, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getTertiaryColor()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawRangedPaths(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mUiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaths:[Landroid/graphics/Path;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPathMeasures:[Landroid/graphics/PathMeasure;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaths:[Landroid/graphics/Path;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPathMeasures:[Landroid/graphics/PathMeasure;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mProgressValues:[F

    aget v5, v5, v0

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaths:[Landroid/graphics/Path;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mGradients:[Landroid/graphics/LinearGradient;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaths:[Landroid/graphics/Path;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

.method private getCoordinates([ILandroid/content/res/Resources;)[F
    .locals 4

    array-length v0, p1

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private init(I)V
    .locals 2

    iget p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mType:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_daily_activity_small_vector:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_daily_activity_lager_vector:I

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->setAllowCaching(Z)V

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private declared-synchronized setMax(II)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mMaxValues:[I

    aget v1, v0, p2

    if-eq p1, v1, :cond_1

    aput p1, v0, p2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mProgressValues:[F

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
    .locals 4

    int-to-float v0, p1

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mMaxValues:[I

    aget v3, v2, p2

    if-le p1, v3, :cond_1

    aget v0, v2, p2

    int-to-float v0, v0

    :cond_1
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mValues:[I

    aput p1, v3, p2

    aget p1, v2, p2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mProgressValues:[F

    aput v1, p1, p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mProgressValues:[F

    aget v1, v2, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->effectiveProgress(F)F

    move-result v0

    aput v0, p1, p2

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mHasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->drawDefPaths(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->drawRangedPaths(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCaloriesValue()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getExerciseValue()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mValues:[I

    const/4 v1, 0x3

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

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getStepsValue()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-super/range {p0 .. p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v3, p3, v1

    int-to-float v3, v3

    sub-int v4, p4, v2

    int-to-float v4, v4

    iget v5, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->strokeWidthScale:F

    mul-float/2addr v5, v3

    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    if-nez v5, :cond_0

    const-string v1, "DailyActivityVectorDrawable"

    const-string v2, "[setBounds] mDrawable is null"

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget-object v5, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    invoke-virtual {v5}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v2, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    sget-object v6, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->PATH_NAMES:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v4, v7, :cond_2

    sget-object v7, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->GRADIENT_COORDINATE:[[I

    aget-object v7, v7, v4

    invoke-direct {v0, v7, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->getCoordinates([ILandroid/content/res/Resources;)[F

    move-result-object v7

    new-instance v15, Landroid/graphics/LinearGradient;

    aget v10, v7, v3

    aget v11, v7, v8

    const/4 v8, 0x2

    aget v12, v7, v8

    const/4 v8, 0x3

    aget v13, v7, v8

    sget-object v7, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->COLORS:[[I

    aget-object v14, v7, v4

    sget-object v7, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->OFFSET:[F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v15

    move-object v8, v15

    move-object v15, v7

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mGradients:[Landroid/graphics/LinearGradient;

    aput-object v8, v7, v4

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaths:[Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    aput-object v8, v7, v4

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mRangedPaths:[Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    aput-object v8, v7, v4

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPathMeasures:[Landroid/graphics/PathMeasure;

    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8}, Landroid/graphics/PathMeasure;-><init>()V

    aput-object v8, v7, v4

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    aget-object v6, v6, v4

    invoke-virtual {v7, v6}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->toPath(Landroid/graphics/Path;)V

    :cond_1
    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaths:[Landroid/graphics/Path;

    aget-object v6, v6, v4

    invoke-virtual {v6, v1, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v6, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPathMeasures:[Landroid/graphics/PathMeasure;

    aget-object v6, v6, v4

    iget-object v7, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mPaths:[Landroid/graphics/Path;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v8, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mHasInit:Z

    return-void
.end method

.method public setCaloriesTarget(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setMax(II)V

    return-void
.end method

.method public setCaloriesValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setExerciseTarget(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setMax(II)V

    return-void
.end method

.method public setExerciseValue(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStandbyTarget(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setMax(II)V

    return-void
.end method

.method public setStandbyValue(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStepsTarget(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setMax(II)V

    return-void
.end method

.method public setStepsValue(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setValue(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidthScale(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->strokeWidthScale:F

    return-void
.end method

.method public setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    return-void
.end method

.method public setTargetAndCurrentValues([I[I)V
    .locals 4

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
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v0, v3, :cond_3

    aget v1, p1, v0

    invoke-direct {p0, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setMax(II)V

    aget v1, p2, v0

    invoke-direct {p0, v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setValue(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_4
    :goto_3
    const-string p1, "DailyActivityVectorDrawable"

    const-string p2, "[setTargetAndCurrentValues] arrays length must be 4!"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->mUiMode:I

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
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setCaloriesTarget(I)V

    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setCaloriesValue(I)V

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStepsTarget(I)V

    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStepsValue(I)V

    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStandbyTarget(I)V

    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStandbyValue(I)V

    const/4 v0, 0x3

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setExerciseTarget(I)V

    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setExerciseValue(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "DailyActivityVectorDrawable"

    const-string p2, "[updateData] arguments is illegal"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
