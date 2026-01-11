.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockAnalogComplicationRender"


# instance fields
.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBgIcon:Landroid/graphics/drawable/Drawable;

.field private mBgIconBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mHourIcon:Landroid/graphics/drawable/Drawable;

.field private mIconBounds:Landroid/graphics/Rect;

.field private mMinuteIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIconBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->init()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawBgIcon(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->getTimeRotation()[F

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mHourIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mHourIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mHourIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mMinuteIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mMinuteIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mMinuteIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method private getTimeRotation()[F
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/utils/HandUtil;->getHandDegrees(Ljava/util/Calendar;)[F

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x26ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private loadBackgroundDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v1, "ClockAnalogComplicationRender"

    if-nez v0, :cond_0

    const-string v0, "[loadBackgroundDrawable] background is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "[loadBackgroundDrawable] background drawable is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private loadHourDrawable()V
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getWhiteIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v1, "ClockAnalogComplicationRender"

    if-nez v0, :cond_0

    const-string v0, "[loadIndicatorDrawable] icon is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mHourIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "[loadIndicatorDrawable] icon drawable is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v0, v1

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mHourIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private loadMinuteDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v1, "ClockAnalogComplicationRender"

    if-nez v0, :cond_0

    const-string v0, "[loadIndicatorDrawable] icon is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mMinuteIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "[loadIndicatorDrawable] icon drawable is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mBgIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mHourIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mMinuteIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->loadBackgroundDrawable()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->loadHourDrawable()V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->loadMinuteDrawable()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->drawBgIcon(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->drawIcon(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;->init()V

    return-void
.end method

.method public onStyleChanged()V
    .locals 0

    return-void
.end method
