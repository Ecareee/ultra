.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageComplicationRender"


# instance fields
.field private mBgRect:Landroid/graphics/Rect;

.field private mColorfulImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mBgRect:Landroid/graphics/Rect;

    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mColorfulImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->setRoundedDrawableColorFilter()V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;->setRadius(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private loadColorfulImageDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeImage()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v1, "[loadColorfulImageDrawable] image is null"

    const-string v2, "ImageComplicationRender"

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mColorfulImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-static {v2, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private loadImageDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getImage()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v1, "ImageComplicationRender"

    if-nez v0, :cond_0

    const-string v0, "[loadImageDrawable] icon is null"

    :goto_0
    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "[loadImageDrawable] image is null"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method private setRoundedDrawableColorFilter()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mRoundedDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/RoundedDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->loadImageDrawable()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->loadColorfulImageDrawable()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;->drawImage(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 0

    return-void
.end method
