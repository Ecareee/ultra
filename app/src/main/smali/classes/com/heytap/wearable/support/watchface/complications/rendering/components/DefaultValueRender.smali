.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultValueRender"


# instance fields
.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mDefaultValueBounds:Landroid/graphics/Rect;

.field private mIsColorfulStyle:Z

.field private mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mIsColorfulStyle:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mBitmapPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 4

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw ismallwidget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsColorfulStyle: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mIsColorfulStyle:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mPrimaryColor:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mPrimaryColor:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mIsColorfulStyle:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mPrimaryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;IZ)V
    .locals 4

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setbounds ismallwidget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->small_default_value_image_new:I

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->default_value_image_new:I

    :goto_0
    invoke-static {p3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    :cond_1
    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, p3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    if-nez p2, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    add-int/2addr p3, v3

    add-int/2addr v1, v2

    invoke-virtual {p2, v3, v2, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[setBounds] rect:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mDefaultValueBounds:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mDefaultValueBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorFulStyle(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mIsColorfulStyle:Z

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DefaultValueRender;->mPrimaryColor:I

    return-void
.end method
