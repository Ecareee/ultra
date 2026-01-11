.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final ICONS_RES_ID:[I

.field private static final ICON_COORDINATES:[[I

.field private static final ITEMS_SIZE:I = 0x4

.field private static final STROKE_WIDTH_SCALE:F = 0.26f

.field private static final TAG:Ljava/lang/String; = "DailyActivityComplicationRender"

.field private static final TEXTS_COLOR:[I

.field private static final TEXTS_UNIT:[I

.field private static final TEXT_COORDINATES:[[I


# instance fields
.field private mCurrentValues:[I

.field private mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

.field private mIcons:[Landroid/graphics/drawable/Drawable;

.field private mPrivacyDefVal:Ljava/lang/String;

.field private final mResource:Landroid/content/res/Resources;

.field private mTextUnitRect:[Landroid/graphics/Rect;

.field private mTextUnitSize:F

.field private mTextUnitXOffset:I

.field private mTextValueRect:[Landroid/graphics/Rect;

.field private mTextValueSize:F

.field private mTextsPaint:[Landroid/text/TextPaint;

.field private mTextsRect:[Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_calories:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_step:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_standby:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complicaiton_activty_time:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->ICONS_RES_ID:[I

    new-array v1, v0, [I

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->daily_activity_calories_unit:I

    aput v2, v1, v3

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->daily_activity_step_unit:I

    aput v2, v1, v4

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->daily_activity_standby_unit:I

    aput v2, v1, v5

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->daily_activity_activity_unit:I

    aput v2, v1, v6

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXTS_UNIT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXTS_COLOR:[I

    new-array v1, v0, [[I

    new-array v2, v5, [I

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x106:I

    aput v7, v2, v3

    sget v8, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y79:I

    aput v8, v2, v4

    aput-object v2, v1, v3

    new-array v2, v5, [I

    aput v7, v2, v3

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y37:I

    aput v7, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    sget v9, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x242:I

    aput v9, v2, v3

    aput v8, v2, v4

    aput-object v2, v1, v5

    new-array v2, v5, [I

    aput v9, v2, v3

    aput v7, v2, v4

    aput-object v2, v1, v6

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->ICON_COORDINATES:[[I

    new-array v0, v0, [[I

    new-array v1, v5, [I

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x134:I

    aput v2, v1, v3

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y80:I

    aput v7, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [I

    aput v2, v1, v3

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y40:I

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    sget v8, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x270:I

    aput v8, v1, v3

    aput v7, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput v8, v1, v3

    aput v2, v1, v4

    aput-object v1, v0, v6

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXT_COORDINATES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x90bc
        -0xc02e76
        -0xca6901
        -0x4624c4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/text/TextPaint;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mIcons:[Landroid/graphics/drawable/Drawable;

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsRect:[Landroid/graphics/Rect;

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitRect:[Landroid/graphics/Rect;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mCurrentValues:[I

    const-string v0, ""

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mPrivacyDefVal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->initDrawable()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->initIcons()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->initText()V

    return-void
.end method

.method private drawIcons(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mIcons:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    aget-object v2, v1, p2

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v5, v4, p2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, v4, p2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aget-object v4, v4, p2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v4, v4, p2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v4, v4, p2

    invoke-virtual {p1, p3, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object p3, p3, p2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitSize:F

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object p3, p3, p2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitRect:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    invoke-virtual {p3, p4, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitRect:[Landroid/graphics/Rect;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitRect:[Landroid/graphics/Rect;

    aget-object v2, v1, p2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    aget-object v4, v3, p2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, v3, p2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    add-int/2addr v0, v5

    aget-object p3, v3, p2

    iget p3, p3, Landroid/graphics/Rect;->right:I

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p3

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    aget-object p3, p3, p2

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v0, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object p3, p3, p2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-static {p3, v0}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitXOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p3, p3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object p2, v1, p2

    invoke-virtual {p1, p4, v0, p3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mPrivacyDefVal:Ljava/lang/String;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXTS_UNIT:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mCurrentValues:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXTS_UNIT:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mCurrentValues:[I

    aget v5, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->drawText(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initDrawable()V
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x20:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y42:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    new-instance v4, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    const v5, 0x3e851eb8    # 0.26f

    invoke-virtual {v4, v5}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStrokeWidthScale(F)V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setBounds(IIII)V

    return-void
.end method

.method private initIcons()V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x24:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->ICON_COORDINATES:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    aget-object v5, v3, v2

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    aget-object v3, v3, v2

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mIcons:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->ICONS_RES_ID:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    add-int v6, v4, v0

    add-int v7, v3, v0

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initText()V
    .locals 10

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x110:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y23:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y28:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueSize:F

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y18:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitSize:F

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitXOffset:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXT_COORDINATES:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    aget-object v6, v4, v3

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    aget-object v4, v4, v3

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsRect:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v3

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    add-int v8, v5, v0

    add-int v9, v4, v1

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueRect:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextUnitRect:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v3

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setFlags(I)V

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v5, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXTS_COLOR:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextValueSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mPrivacyDefVal:Ljava/lang/String;

    return-void
.end method

.method private updateIconAndTextColor()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v1, v1, v0

    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->TEXTS_COLOR:[I

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v0, :cond_0

    const-string v0, "DailyActivityComplicationRender"

    const-string v1, "[onDataChanged] ComplicationData is null!"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getDailyActivityTargetValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getDailyActivityCurrentValues()[I

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mCurrentValues:[I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    invoke-virtual {v2, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setTargetAndCurrentValues([I[I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mResource:Landroid/content/res/Resources;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x13:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setUiMode(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->drawIcons(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->drawTexts(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->initText()V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onStyleChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/DailyActivityVectorDrawable;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;->updateIconAndTextColor()V

    return-void
.end method
