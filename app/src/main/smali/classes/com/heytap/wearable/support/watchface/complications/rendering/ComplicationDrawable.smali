.class public Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    }
.end annotation


# static fields
.field private static final EXTRA_CITY_ID:Ljava/lang/String; = "extra_city_id"

.field private static final EXTRA_COMPLICATION_ID:Ljava/lang/String; = "EXTRA_COMPLICATION_ID"

.field private static final TAG:Ljava/lang/String; = "ComplicationDrawable"

.field private static final ZOOM_IN_FACTOR:F = 0.25f


# instance fields
.field private mBackgroundEnabled:Z

.field private mChangeProviderEnabled:Z

.field private mChangeStyleEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mIsStub:Z

.field private mMode:I

.field private mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

.field private mStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

.field private mUiMode:I


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mUiMode:I

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$000(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$100(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$200(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mChangeStyleEnabled:Z

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->createWithPrimaryColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mChangeStyleEnabled:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$300(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->updateStyle(I)V

    :cond_0
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$400(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mChangeProviderEnabled:Z

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$500(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mBackgroundEnabled:Z

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$600(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mIsStub:Z

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->access$700(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;-><init>(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)V

    return-void
.end method

.method private getActivityOptions(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->getActivityOptions(Landroid/widget/ImageView;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method private getClickAreaBounds()Landroid/graphics/Rect;
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->zoomInBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private zoomInBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, p1

    int-to-float v1, v1

    int-to-float v2, v2

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float p1, p1

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr p1, v4

    float-to-int p1, p1

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, p1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getActivityOptions(Landroid/widget/ImageView;)Landroid/app/ActivityOptions;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->onLocaleChanged()V

    :cond_0
    return-void
.end method

.method public onTap(II)Z
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->getClickAreaBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getComplicationData()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationTapUtils;->buildTapIntent(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ComplicationDrawable"

    if-nez p1, :cond_1

    const-string p1, "[onTap] tap intent is null"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getComplicationData()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->getActivityOptions(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string p1, "[onTap] not found activity"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mBackgroundEnabled:Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setBackgroundEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChangeStyleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mChangeStyleEnabled:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 3

    const-string v0, " setComplicationData isstub:"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mIsStub:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComplicationDrawable"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mIsStub:Z

    if-eqz v0, :cond_0

    const-string p1, "[setComplicationData] the ComplicationDrawable not need show ui"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_1

    const-string v0, " setComplicationData RenderType:"

    .line 3
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " complicationDataType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    move-result v2

    if-eq v0, v2, :cond_4

    :cond_2
    const-string v0, "[setComplicationData] create render"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRenderFactory;->createRenderer(Landroid/content/Context;I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-nez v0, :cond_3

    const-string p1, "[setComplicationData] create render occurred exception"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setType(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mUiMode:I

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setUiMode(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    invoke-virtual {v0, p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setComplicationDrawable(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;)V

    :cond_4
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mBackgroundEnabled:Z

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setBackgroundEnabled(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->updateColorfulStyle(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    return-void
.end method

.method public setStyle(I)V
    .locals 4

    const-string v0, "[setStyle] "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/common/utils/ColorUtils;->int2ArgbString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComplicationDrawable"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mChangeStyleEnabled:Z

    if-nez v0, :cond_0

    const-string p1, "[setStyle] style is disabled"

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->updateStyle(I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz p1, :cond_1

    const-string p1, "[setStyle] mCurStyle:"

    .line 3
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "#%08x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    :cond_1
    return-void
.end method

.method public setUiMode(I)V
    .locals 1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mUiMode:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setUiMode(I)V

    :cond_0
    return-void
.end method
