.class Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VClipPath;
.super Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VClipPath;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;-><init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;)V

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mPathName:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    :cond_1
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const-string v0, "pathData"

    invoke-static {p4, v0}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    sget-object p4, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_VectorDrawableClipPath:[I

    invoke-static {p1, p3, p2, p4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->obtainAttributesExtra(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isClipPath()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
