.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;
    }
.end annotation


# static fields
.field private static final HOUR_10:I = 0xa

.field private static final HOUR_OF_FULL_DAY:I = 0x18

.field private static final ICON_RADIUS_SCALE:F = 0.127f

.field private static final MAX_LENGTH:I = 0x5

.field private static final PER_SPACING:I = 0x1

.field private static final TEXT_PRIMARY_COLOR:I = -0xbe7c0e

.field private static final TEXT_SIZE_SCALE:F = 0.063f

.field private static final TEXT_TERTIARY_COLOR:I = -0x66000001

.field private static final WEATHER_ITEM_LEFT_PADDING_SCALE:F = 0.029f

.field private static final WEATHER_ITEM_SCALE:F = 0.188f


# instance fields
.field private mDefWeatherData:[Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

.field private mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    new-array v0, p1, [Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mDefWeatherData:[Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    new-array p1, p1, [Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->init()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->initWeatherRenders()V

    return-void
.end method

.method private drawWeatherInfo(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->onDraw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDefaultTime(I)Ljava/lang/String;
    .locals 4

    rem-int/lit8 v0, p1, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$string;->weather_widget_integral_point1:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$string;->weather_widget_integral_point2:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWeatherInfoBounds(I)Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3e408312    # 0.188f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3ced9168    # 0.029f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v4

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    int-to-float v0, v0

    add-float/2addr v4, v0

    float-to-int v0, v4

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-direct {v2, v5, v6, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, p1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v4, v1

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method private init()V
    .locals 8

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$string;->complicationDrawable_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_vector_duoyun:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_vector_xiaoyu:I

    invoke-static {v2, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mDefWeatherData:[Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    new-instance v6, Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    if-nez v2, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    aget-object v7, v1, v7

    invoke-direct {v6, v0, v0, v7}, Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initWeatherRenders()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    new-instance v2, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;-><init>(Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onBoundsChanged(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->getWeatherInfoBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataChanged()V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getWeatherData()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getWeatherData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mDefWeatherData:[Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    aget-object v3, v3, v2

    add-int v4, v1, v2

    invoke-direct {p0, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->getDefaultTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;->setTime(Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->setWeatherData(Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->drawWeatherInfo(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onStyleChanged()V
    .locals 3

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onStyleChanged()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;->mWeatherRenders:[Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v2

    goto :goto_1

    :cond_0
    const v2, -0x66000001

    :goto_1
    invoke-virtual {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
