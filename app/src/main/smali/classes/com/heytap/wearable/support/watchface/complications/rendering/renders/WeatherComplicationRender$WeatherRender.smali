.class Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherRender"
.end annotation


# instance fields
.field private mColorfulIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRect:Landroid/graphics/Rect;

.field private mIsColorful:Z

.field private mPrimaryColor:I

.field private mSingleColorIcon:Landroid/graphics/drawable/Drawable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTimeRect:Landroid/graphics/Rect;

.field private mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

.field private mWeatherData:Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->this$0:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTempRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    invoke-direct {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTempRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTimeRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIconRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mPrimaryColor:I

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->initPaint()V

    return-void
.end method

.method private drawColorfulIcon(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mColorfulIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mColorfulIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawSingleColorIcon(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mSingleColorIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mSingleColorIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mSingleColorIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->this$0:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3e020c4a    # 0.127f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->this$0:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;

    iget-object v5, v5, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    int-to-float v0, v0

    add-float/2addr v5, v0

    float-to-int v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTempRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTimeRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIconRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDataChanged()V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->this$0:Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;

    iget-object v0, v0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3d810625    # 0.063f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTempRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setPaint(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTempRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTimeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIsColorful:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->drawColorfulIcon(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->drawSingleColorIcon(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onStyleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mPrimaryColor:I

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mIsColorful:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setWeatherData(Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;)V
    .locals 1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mWeatherData:Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mColorfulIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mColorfulIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mSingleColorIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTempRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mWeatherData:Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;->getTemperature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mTimeRender:Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender$WeatherRender;->mWeatherData:Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/TextRenderer;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
