.class Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final ALPHA_END:I = 0x19

.field private static final ALPHA_START:I = 0x26

.field private static final ARC_RADIUS_SCALE:F = 0.09f

.field private static final GRADIENT_MARGIN_FRACTION:F = 0.275f

.field private static final TAG:Ljava/lang/String; = "LargeCardRender"


# instance fields
.field private mArcRadius:F

.field private mBgGradient:Landroid/graphics/LinearGradient;

.field private mBgPaint:Landroid/graphics/Paint;

.field public mBgRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mArcRadius:F

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->init()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->isBackgroundEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mArcRadius:F

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getGradientColors(I)[I
    .locals 3

    const/16 v0, 0x26

    invoke-static {p1, v0}, Lo/a;->c(II)I

    move-result v0

    const/16 v1, 0x19

    invoke-static {p1, v1}, Lo/a;->c(II)I

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    return-object v1
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 9

    const-string v0, "LargeCardRender"

    const-string v1, "[onBoundsChanged] "

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->getGradientColors(I)[I

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3db851ec    # 0.09f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mArcRadius:F

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const v0, 0x3e8ccccd    # 0.275f

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v2, v1, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v0, p1

    new-instance p1, Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgGradient:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public onDataChanged()V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->getGradientColors(I)[I

    move-result-object v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgGradient:Landroid/graphics/LinearGradient;

    return-void
.end method
