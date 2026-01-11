.class public Lcom/heytap/wearable/support/watchface/common/vector/VectorPathFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDrawableCompatLocal:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathFinder;->mDrawableCompatLocal:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->setAllowCaching(Z)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathFinder;->mDrawableCompatLocal:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public findGroupByName(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathFinder;->mDrawableCompatLocal:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;

    return-object p1
.end method

.method public findPathByName(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathFinder;->mDrawableCompatLocal:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    return-object p1
.end method
