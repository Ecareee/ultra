.class public Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;
.super Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VFullPath"
.end annotation


# instance fields
.field public mFillAlpha:F

.field public mFillColor:I

.field public mFillRule:I

.field public mStrokeAlpha:F

.field public mStrokeColor:I

.field public mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field public mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field public mStrokeMiterLimit:F

.field public mStrokeWidth:F

.field private mThemeAttrs:[I

.field public mTrimPathEnd:F

.field public mTrimPathOffset:F

.field public mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeMiterLimit:F

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;-><init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    iput v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeMiterLimit:F

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mThemeAttrs:[I

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillRule:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillRule:I

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    iget v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iget p1, p1, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeMiterLimit:F

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeMiterLimit:F

    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p1

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p1

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p1
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p1

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p1

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p1
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mThemeAttrs:[I

    const-string v0, "pathData"

    invoke-static {p2, v0}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mPathName:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->mNodes:[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    :cond_2
    const/16 v0, 0x9

    const-string v1, "strokeLineJoin"

    invoke-static {p1, p2, v1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "strokeLineCap"

    invoke-static {p1, p2, v2, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    const-string v4, "fillColor"

    invoke-static {p1, p2, v4, v2, v3}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    const/16 v2, 0xc

    iget v3, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    const-string v4, "fillAlpha"

    invoke-static {p1, p2, v4, v2, v3}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v1, v2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    iget v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeMiterLimit:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeMiterLimit:F

    const/4 v0, 0x3

    iget v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    const-string v2, "strokeColor"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    const/16 v0, 0xb

    iget v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    const-string v2, "strokeAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    const/4 v0, 0x4

    iget v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    const-string v2, "strokeWidth"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    const/4 v0, 0x6

    iget v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    const-string v2, "trimPathEnd"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    const/4 v0, 0x7

    iget v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    const-string v2, "trimPathOffset"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    const/4 v0, 0x5

    iget v1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    const-string v2, "trimPathStart"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/AndroidTypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFillAlpha()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    return v0
.end method

.method public bridge synthetic getPathName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->getPathName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCommonLocal;->obtainAttributesExtra(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public bridge synthetic isClipPath()Z
    .locals 1

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->isClipPath()Z

    move-result v0

    return v0
.end method

.method public setFillAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillAlpha:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mFillColor:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeAlpha:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mStrokeWidth:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathEnd:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathOffset:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VFullPath;->mTrimPathStart:F

    return-void
.end method

.method public bridge synthetic toPath(Landroid/graphics/Path;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorDrawableCompatLocal$VPath;->toPath(Landroid/graphics/Path;)V

    return-void
.end method
