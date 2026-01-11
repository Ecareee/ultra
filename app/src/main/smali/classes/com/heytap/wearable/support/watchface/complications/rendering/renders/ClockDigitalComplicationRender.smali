.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# static fields
.field private static final DAY_TIME_24:Ljava/lang/String; = "HH:mm"

.field private static final SPLIT_SIGN:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "ClockDigitalComplicationRender"


# instance fields
.field private isColorfulStyle:Z

.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBgIcon:Landroid/graphics/drawable/Drawable;

.field private mBgIconBounds:Landroid/graphics/Rect;

.field private mBottomRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mTopRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTopRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBottomRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBgIconBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->initPaint()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/TimeUtil;->getHourAndMinute(Landroid/content/Context;Ljava/util/Calendar;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->isColorfulStyle:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v4}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getColorfulModeColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTopRect:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBottomRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBottomRect:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/heytap/wearable/support/watchface/common/utils/TextUtil;->getTextBaseLine(Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static getTimezoneTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPaint()V
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x26ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private loadBackgroundDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v1, "ClockDigitalComplicationRender"

    if-nez v0, :cond_0

    const-string v0, "[loadBackgroundDrawable] background is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBgIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "[loadBackgroundDrawable] background drawable is null"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBgIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBgIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    sget v1, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->clock_digital_toptext_toppadding:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    sget v2, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->clock_digital_bottomtext_toppadding:I

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    sget v3, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->clock_digital_text_height:I

    invoke-static {v1, v3}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTopRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int v6, v0, v1

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBottomRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->clock_digital_text_size:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/utils/ResourcesUtil;->getDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextSize:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mContext:Landroid/content/Context;

    const-string v1, "OPlusSans2.0-Clock-Medium.ttf"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/utils/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public onDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->loadBackgroundDrawable()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->isColorfulStyle:Z

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->mBgIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public onStyleChanged()V
    .locals 0

    return-void
.end method
