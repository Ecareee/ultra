.class Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VPath"
.end annotation


# instance fields
.field public mChangingConfigurations:I

.field public mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

.field public mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mPathName:Ljava/lang/String;

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mChangingConfigurations:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mChangingConfigurations:I

    iget-object p1, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->deepCopyNodes([Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;)[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public isClipPath()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->nodesToPath([Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
