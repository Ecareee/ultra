.class public Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COLORFUL_PRIMARY_COLOR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ComplicationStyle"


# instance fields
.field private mColorfulPrimaryColor:I

.field private mColorfulQuaternaryColor:I

.field private mColorfulSecondaryColor:I

.field private mColorfulTertiaryColor:I

.field private mIsColorfulStyle:Z

.field private mPrimaryColor:I

.field private mQuaternaryColor:I

.field private mSecondaryColor:I

.field private mTertiaryColor:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->updateStyle(I)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->setColorfulColors(I)V

    return-void
.end method

.method private calcQuaternaryColorWithPrimary(I)I
    .locals 1

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ColorUtils;->setAlphaComponent(IF)I

    move-result p1

    return p1
.end method

.method private calcSecondaryColorWithPrimary(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    aget v1, v0, p1

    const v2, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, v2

    aput v1, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method

.method private calcTertiaryColorWithPrimary(I)I
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ColorUtils;->setAlphaComponent(IF)I

    move-result p1

    return p1
.end method

.method public static createWithPrimaryColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-direct {v0, p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;-><init>(I)V

    return-object v0
.end method

.method private setColorfulColors(I)V
    .locals 1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulPrimaryColor:I

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->calcSecondaryColorWithPrimary(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulSecondaryColor:I

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->calcTertiaryColorWithPrimary(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulTertiaryColor:I

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->calcQuaternaryColorWithPrimary(I)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulQuaternaryColor:I

    return-void
.end method

.method private setNormalColors(I)V
    .locals 1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mPrimaryColor:I

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->calcSecondaryColorWithPrimary(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mSecondaryColor:I

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->calcTertiaryColorWithPrimary(I)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mTertiaryColor:I

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->calcQuaternaryColorWithPrimary(I)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mQuaternaryColor:I

    return-void
.end method


# virtual methods
.method public getPrimaryColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mIsColorfulStyle:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulPrimaryColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mPrimaryColor:I

    :goto_0
    return v0
.end method

.method public getQuaternaryColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mIsColorfulStyle:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulQuaternaryColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mQuaternaryColor:I

    :goto_0
    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mIsColorfulStyle:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulSecondaryColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mSecondaryColor:I

    :goto_0
    return v0
.end method

.method public getTertiaryColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mIsColorfulStyle:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mColorfulTertiaryColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mTertiaryColor:I

    :goto_0
    return v0
.end method

.method public isColorfulStyle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mIsColorfulStyle:Z

    return v0
.end method

.method public updateColorfulStyle(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[updateColorfulStyle] occurred exception "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComplicationStyle"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->setColorfulColors(I)V

    return-void
.end method

.method public updateStyle(I)V
    .locals 5

    const-string v0, "[updateStyle] primaryColor:"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "#%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ComplicationStyle"

    invoke-static {v2, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->mIsColorfulStyle:Z

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->setNormalColors(I)V

    return-void
.end method
