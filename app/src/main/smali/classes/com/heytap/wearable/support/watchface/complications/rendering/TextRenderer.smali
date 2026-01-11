.class public Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final DEFAULT_MINIMUM_CHARACTERS_SHOWN:I = 0x7

.field private static final DEFAULT_TEXT:Ljava/lang/String; = "--"

.field private static final SPACE_CHARACTER:I = 0x20

.field private static final SPAN_WHITELIST:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TEXT_SIZE_OFFSET:F = 1.0f

.field private static final TEXT_SIZE_STEP_SIZE:I = 0x1


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mAmbientModeText:Ljava/lang/String;

.field private final mBounds:Landroid/graphics/Rect;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mGravity:I

.field private mInAmbientMode:Z

.field private mMaxLines:I

.field private mMinCharactersShown:I

.field private mNeedCalculateBounds:Z

.field private mNeedUpdateLayout:Z

.field private mOriginalText:Ljava/lang/CharSequence;

.field public final mOutputRect:Landroid/graphics/Rect;

.field public mPaint:Landroid/text/TextPaint;

.field private mRelativePaddingBottom:F

.field private mRelativePaddingEnd:F

.field private mRelativePaddingStart:F

.field private mRelativePaddingTop:F

.field private mStaticLayout:Landroid/text/StaticLayout;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkingRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/text/style/LocaleSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/text/style/SubscriptSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Landroid/text/style/SuperscriptSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Landroid/text/style/StrikethroughSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Landroid/text/style/StyleSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Landroid/text/style/TypefaceSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Landroid/text/style/UnderlineSpan;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->SPAN_WHITELIST:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    const/16 v0, 0x11

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mGravity:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMaxLines:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMinCharactersShown:I

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mAlignment:Landroid/text/Layout$Alignment;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mWorkingRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mOutputRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mInAmbientMode:Z

    return-void
.end method

.method private applySpanWhitelist(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->isSpanAllowed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method private calculateBounds()V
    .locals 8

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->isLtr()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->isLtr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingStart:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingEnd:F

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->isLtr()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingEnd:F

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingStart:F

    :goto_1
    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingTop:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingBottom:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mWorkingRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-virtual {v4, v7, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mGravity:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mWorkingRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mOutputRect:Landroid/graphics/Rect;

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method private isSpanAllowed(Ljava/lang/Object;)Z
    .locals 5

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->SPAN_WHITELIST:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private updateLayout(II)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    :cond_0
    int-to-float p1, p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingStart:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingEnd:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    new-instance v0, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float p2, p2

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMaxLines:I

    int-to-float v2, v2

    div-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "--"

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    :cond_1
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    int-to-float v2, p1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_3

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMinCharactersShown:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v4, :cond_2

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v4, v5, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mInAmbientMode:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    invoke-static {p2, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/EmojiHelper;->replaceEmoji(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mAmbientModeText:Ljava/lang/String;

    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p2, v3, v1, v0, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMaxLines:I

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mStaticLayout:Landroid/text/StaticLayout;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->updateLayout(II)V

    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedCalculateBounds:Z

    :cond_1
    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedCalculateBounds:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->calculateBounds()V

    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedCalculateBounds:Z

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mOutputRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public hasText()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLtr()Z
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mStaticLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public requestUpdateLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mGravity:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedCalculateBounds:Z

    :cond_0
    return-void
.end method

.method public setInAmbientMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mInAmbientMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mInAmbientMode:Z

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mAmbientModeText:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMaxLines:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMaxLines:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    :cond_0
    return-void
.end method

.method public setMinimumCharactersShown(I)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMinCharactersShown:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mMinCharactersShown:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    :cond_0
    return-void
.end method

.method public setPaint(Landroid/text/TextPaint;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mPaint:Landroid/text/TextPaint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    return-void
.end method

.method public setRelativePadding(FFFF)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingStart:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingTop:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingEnd:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingBottom:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingStart:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingTop:F

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingEnd:F

    iput p4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mRelativePaddingBottom:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mOriginalText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mOriginalText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->applySpanWhitelist(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->mNeedUpdateLayout:Z

    :cond_0
    return-void
.end method
