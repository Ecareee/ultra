.class public Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;
.super Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VClipPath;,
        Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;,
        Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;,
        Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;,
        Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableDelegateState;,
        Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;,
        Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;
    }
.end annotation


# static fields
.field private static final ALPHA_END:F = 255.0f

.field private static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final END:F = 1.0f

.field private static final LINE_CAP_BUTT:I = 0x0

.field private static final LINE_CAP_ROUND:I = 0x1

.field private static final LINE_CAP_SQUARE:I = 0x2

.field private static final LINE_JOIN_BEVEL:I = 0x2

.field private static final LINE_JOIN_MITER:I = 0x0

.field private static final LINE_JOIN_ROUND:I = 0x1

.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final MODE_14:I = 0xe

.field private static final MODE_15:I = 0xf

.field private static final MODE_16:I = 0x10

.field private static final MODE_3:I = 0x3

.field private static final MODE_5:I = 0x5

.field private static final MODE_9:I = 0x9

.field private static final SCALE_END:F = 1.0f

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final START:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "VectorLocal"


# instance fields
.field private mAllowCaching:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mMutated:Z

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpFloats:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mAllowCaching:Z

    new-instance v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;)V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpFloats:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mAllowCaching:Z

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;-><init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;)V

    return-void
.end method

.method public static synthetic access$1200(IF)I
    .locals 0

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->applyAlpha(IF)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method private static applyAlpha(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;
    .locals 5

    const-string v0, "VectorLocal"

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    invoke-static {p0, p1, v1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "[create] --> IOException"

    goto :goto_1

    :catch_1
    const-string p0, "[create] --> XmlPullParserException"

    :goto_1
    invoke-static {v0, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iget-object v3, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->mRootGroup:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :goto_0
    if-eq v3, v5, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v4, :cond_0

    if-eq v3, v7, :cond_7

    :cond_0
    const/4 v6, 0x2

    const-string v8, "group"

    if-ne v3, v6, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;

    const-string v7, "path"

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;

    invoke-direct {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v6, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->mVGTargetsMap:Lj/a;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7, v3}, Lj/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v6, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v3, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mChangingConfigurations:I

    :goto_2
    or-int/2addr v3, v6

    iput v3, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mChangingConfigurations:I

    goto :goto_3

    :cond_2
    const-string v7, "clip-path"

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VClipPath;

    invoke-direct {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VClipPath;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v6, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->mVGTargetsMap:Lj/a;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->getPathName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;

    invoke-direct {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v6, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->mVGTargetsMap:Lj/a;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lj/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v6, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v3, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VGroup;->mChangingConfigurations:I

    goto :goto_2

    :cond_5
    if-ne v3, v7, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_6
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private needMirroring()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "WrongConstant"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static parseTintModeCompat(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    invoke-static {p1, p2, v2, v3}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->parseTintModeCompat(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v2, 0x5

    iget-boolean v3, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mAutoMirrored:Z

    const-string v4, "autoMirrored"

    invoke-static {p1, p2, v4, v2, v3}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mAutoMirrored:Z

    const/4 v0, 0x7

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$200(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v2

    const-string v3, "viewportWidth"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$202(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;F)F

    const/16 v0, 0x8

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$300(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v2

    const-string v3, "viewportHeight"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$302(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;F)F

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$200(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$300(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x3

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$000(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$002(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;F)F

    const/4 v0, 0x2

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$100(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$102(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;F)F

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$000(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$100(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->getAlpha()F

    move-result v2

    const-string v3, "alpha"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->setAlpha(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v1, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$402(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->mVGTargetsMap:Lj/a;

    invoke-virtual {p2, p1, v1}, Lj/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpFloats:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpFloats:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpFloats:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v4, :cond_3

    cmpl-float v4, v5, v6

    if-eqz v4, :cond_4

    :cond_3
    move v1, v7

    move v3, v1

    :cond_4
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_9

    if-gtz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->needMirroring()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-virtual {v2, v1, v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->createCachedBitmapIfNeeded(II)V

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mAllowCaching:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-virtual {v2, v1, v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->updateCachedBitmap(II)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->canReuseCache()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-virtual {v2, v1, v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->updateCachedBitmap(II)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->updateCacheStates()V

    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableDelegateState;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mChangingConfigurations:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    return-object v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$100(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->access$000(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getState()[I
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->mVGTargetsMap:Lj/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lj/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VectorLocal"

    const-string p2, "[inflate] --> IOException | XmlPullParserException"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    new-instance v2, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    invoke-direct {v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;-><init>()V

    iput-object v2, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    sget-object v2, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_VectorDrawableTypeArray:[I

    invoke-static {p1, p4, p3, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->obtainAttributesExtra(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->getChangingConfigurations()I

    move-result v2

    iput v2, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mChangingConfigurations:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mCacheDirty:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object p1, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object p2, v1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "VectorLocal"

    const-string p2, "[inflate] --> IOException | XmlPullParserException"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw p1
.end method

.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-boolean v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mMutated:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;-><init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mMutated:Z

    :cond_1
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAllowCaching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mAllowCaching:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mVPathRenderer:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPathRenderer;->setRootAlpha(I)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iput-boolean p1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mAutoMirrored:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mVectorState:Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;

    iget-object v1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
