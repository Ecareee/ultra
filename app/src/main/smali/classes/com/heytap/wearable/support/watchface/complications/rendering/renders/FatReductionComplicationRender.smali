.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;
.source "SourceFile"


# static fields
.field private static final DRAWABLE_COORDINATES:[I

.field private static final DRAWABLE_HEIGHT:I

.field private static final RECTANGLE_COORDINATES:[[I

.field private static final RECTANGLE_HEIGHT:I

.field private static final RECTANGLE_ITEMS_SIZE:I = 0x2

.field private static final RECTANGLE_RADIUS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FatReductionComplicationRender"

.field private static final TEXT_COLOR_BASIC_CALORIE:I = -0x263a4

.field private static final TEXT_COLOR_DYNAMIC_CALORIE:I = -0x1338

.field private static final TEXT_COLOR_TOTAL_CALORIE:I = -0x307

.field private static final TEXT_COORDINATES:[[I

.field private static final TEXT_DEFAULT_UNIT:I

.field private static final TEXT_ITEMS_SIZE:I = 0x6

.field private static final TEXT_SIZE_LARGE:I

.field private static final TEXT_SIZE_MEDIUM:I


# instance fields
.field private mBasicCalorieTitle:Ljava/lang/String;

.field private mDefaultUnit:Ljava/lang/String;

.field private mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;

.field private mDynamicCalorieTitle:Ljava/lang/String;

.field private mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

.field private mPrivacyDefVal:Ljava/lang/String;

.field private mRectanglePaint:[Landroid/graphics/Paint;

.field private mResource:Landroid/content/res/Resources;

.field private mRoundRectF:[Landroid/graphics/RectF;

.field private mTextsPaint:[Landroid/text/TextPaint;

.field private mTextsRect:[Landroid/graphics/Rect;

.field private mTotalCalorieTitle:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y28:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_SIZE_LARGE:I

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y20:I

    sput v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_SIZE_MEDIUM:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x21:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y22:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sput-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->DRAWABLE_COORDINATES:[I

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y97:I

    sput v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->DRAWABLE_HEIGHT:I

    const/4 v2, 0x6

    new-array v2, v2, [[I

    const/4 v3, 0x4

    new-array v6, v3, [I

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x138:I

    aput v7, v6, v4

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y16:I

    aput v7, v6, v5

    sget v8, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x84:I

    aput v8, v6, v1

    sget v8, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y40:I

    const/4 v9, 0x3

    aput v8, v6, v9

    aput-object v6, v2, v4

    new-array v6, v3, [I

    sget v10, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x234:I

    aput v10, v6, v4

    aput v7, v6, v5

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x114:I

    aput v7, v6, v1

    aput v8, v6, v9

    aput-object v6, v2, v5

    new-array v6, v3, [I

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x162:I

    aput v7, v6, v4

    sget v8, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y60:I

    aput v8, v6, v5

    sget v10, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x80:I

    aput v10, v6, v1

    aput v0, v6, v9

    aput-object v6, v2, v1

    new-array v6, v3, [I

    sget v11, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x268:I

    aput v11, v6, v4

    aput v8, v6, v5

    aput v10, v6, v1

    aput v0, v6, v9

    aput-object v6, v2, v9

    new-array v6, v3, [I

    aput v7, v6, v4

    sget v7, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y92:I

    aput v7, v6, v5

    aput v10, v6, v1

    aput v0, v6, v9

    aput-object v6, v2, v3

    new-array v3, v3, [I

    aput v11, v3, v4

    aput v7, v3, v5

    aput v10, v3, v1

    aput v0, v3, v9

    const/4 v0, 0x5

    aput-object v3, v2, v0

    sput-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_COORDINATES:[[I

    new-array v0, v1, [[I

    new-array v2, v1, [I

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x140:I

    aput v3, v2, v4

    sget v6, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y69:I

    aput v6, v2, v5

    aput-object v2, v0, v4

    new-array v1, v1, [I

    aput v3, v1, v4

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y101:I

    aput v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->RECTANGLE_COORDINATES:[[I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->y12:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->RECTANGLE_HEIGHT:I

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->daily_activity_calories_unit:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_DEFAULT_UNIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v1, v0, [Landroid/text/TextPaint;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRectanglePaint:[Landroid/graphics/Paint;

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRoundRectF:[Landroid/graphics/RectF;

    const-string v0, ""

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mPrivacyDefVal:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDefaultUnit:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTotalCalorieTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDynamicCalorieTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mBasicCalorieTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->initDrawable()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->initText()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->initRectangle()V

    return-void
.end method

.method private drawRectangle(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRoundRectF:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRectanglePaint:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_b

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTotalCalorieTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    :goto_1
    iget v2, v2, Landroid/graphics/Rect;->left:I

    :goto_2
    int-to-float v2, v2

    goto/16 :goto_a

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDynamicCalorieTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mBasicCalorieTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x270f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v3

    if-eq v3, v2, :cond_4

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getTotalCalorie()I

    move-result v3

    invoke-static {v3, v1}, Lcom/heytap/wearable/support/watchface/common/utils/DataUtils;->getFormatActivityData(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_DEFAULT_UNIT:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getTotalCalorie()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mPrivacyDefVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDefaultUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    :goto_5
    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v3

    if-eq v3, v2, :cond_7

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getDynamicCalorie()I

    move-result v3

    invoke-static {v3, v1}, Lcom/heytap/wearable/support/watchface/common/utils/DataUtils;->getFormatActivityData(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_DEFAULT_UNIT:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getDynamicCalorie()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mPrivacyDefVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDefaultUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    goto :goto_5

    :cond_8
    const/4 v3, 0x5

    if-ne v0, v3, :cond_b

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v3

    if-eq v3, v2, :cond_a

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    if-nez v2, :cond_9

    goto :goto_8

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getBasicCalorie()I

    move-result v3

    invoke-static {v3, v1}, Lcom/heytap/wearable/support/watchface/common/utils/DataUtils;->getFormatActivityData(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_DEFAULT_UNIT:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->getBasicCalorie()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mPrivacyDefVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDefaultUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    goto/16 :goto_5

    :goto_a
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v4, v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private initDrawable()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->DRAWABLE_COORDINATES:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->DRAWABLE_HEIGHT:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v4, v1, v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v1, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initRectangle()V
    .locals 9

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->RECTANGLE_HEIGHT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget-object v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->RECTANGLE_COORDINATES:[[I

    aget-object v5, v4, v2

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    aget-object v4, v4, v2

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRoundRectF:[Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    aput-object v7, v5, v2

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRoundRectF:[Landroid/graphics/RectF;

    aget-object v5, v5, v2

    add-float v7, v3, v0

    add-float v8, v4, v0

    invoke-virtual {v5, v3, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRectanglePaint:[Landroid/graphics/Paint;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->updateRectangleColor()V

    return-void
.end method

.method private initText()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget-object v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_COORDINATES:[[I

    aget-object v5, v4, v1

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    aget-object v6, v4, v1

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    aget-object v7, v4, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    aget-object v4, v4, v1

    const/4 v9, 0x3

    aget v4, v4, v9

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v7, v1

    iget-object v7, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    add-int/2addr v6, v2

    add-int/2addr v4, v5

    invoke-virtual {v7, v2, v5, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    if-eqz v1, :cond_1

    if-eq v1, v8, :cond_1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_2
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_SIZE_MEDIUM:I

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_SIZE_LARGE:I

    :goto_4
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->updateTextColor()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->privacy_mode_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mPrivacyDefVal:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->TEXT_DEFAULT_UNIT:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDefaultUnit:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->fat_total_calorie:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTotalCalorieTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->fat_dynamic_calorie:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDynamicCalorieTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->fat_basic_calorie:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mBasicCalorieTitle:Ljava/lang/String;

    return-void
.end method

.method private updateRectangleColor()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRectanglePaint:[Landroid/graphics/Paint;

    if-nez v0, :cond_0

    aget-object v1, v1, v0

    const/16 v2, -0x1338

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    const v2, -0x263a4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mRectanglePaint:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateTextColor()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v1, v1, v0

    const v2, -0x263a4

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v1, v1, v0

    const/16 v2, -0x1338

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v1, v1, v0

    const/16 v2, -0x307

    :goto_3
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mTextsPaint:[Landroid/text/TextPaint;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-nez v0, :cond_0

    const-string v0, "FatReductionComplicationRender"

    const-string v1, "[onDataChanged] ComplicationData is null!"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mFatCalorieData:Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;

    invoke-virtual {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->setFatCalorieData(Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->setUiMode(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->drawTexts(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->drawRectangle(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->initText()V

    return-void
.end method

.method public onStyleChanged()V
    .locals 2

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onStyleChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/FatReductionDrawable;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->updateTextColor()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;->updateRectangleColor()V

    return-void
.end method
