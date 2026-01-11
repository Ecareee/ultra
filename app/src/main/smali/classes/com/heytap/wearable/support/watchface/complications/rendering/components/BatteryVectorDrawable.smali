.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final PATH_BATTERY_FRAME:Ljava/lang/String; = "battery_frame"

.field private static final PATH_BATTERY_PROGRESS:Ljava/lang/String; = "battery_progress"

.field private static final TAG:Ljava/lang/String; = "BatteryVectorDrawable"


# instance fields
.field private mBatteryFramePath:Landroid/graphics/Path;

.field private mBatteryHeight:F

.field private mBatteryProgress:I

.field public mBatteryProgressMeasures:Landroid/graphics/PathMeasure;

.field private mBatteryProgressPath:Landroid/graphics/Path;

.field private mContext:Landroid/content/Context;

.field private mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

.field private mHasInit:Z

.field private mPainProgress:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->createWithPrimaryColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryHeight:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->init()V

    return-void
.end method

.method private drawBatteryFrame(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryFramePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBatteryProgress(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressMeasures:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressMeasures:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgress:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPainProgress:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPainProgress:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_battery_new_widget:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->setAllowCaching(Z)V

    :cond_0
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressMeasures:Landroid/graphics/PathMeasure;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->initPaints()V

    return-void
.end method

.method private initPaints()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPainProgress:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPainProgress:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mHasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->drawBatteryFrame(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->drawBatteryProgress(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryProgress(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgress:I

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    if-nez v0, :cond_0

    const-string p1, "BatteryVectorDrawable"

    const-string v0, "[setBounds] mDrawable is null"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPainProgress:Landroid/graphics/Paint;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryHeight:F

    mul-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mPainProgress:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    const-string v1, "battery_frame"

    invoke-virtual {p1, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mDrawable:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    const-string v2, "battery_progress"

    invoke-virtual {v1, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryFramePath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->toPath(Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryFramePath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v1, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->toPath(Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressMeasures:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mBatteryProgressPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mHasInit:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/BatteryVectorDrawable;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    return-void
.end method
