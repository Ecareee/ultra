.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;
.source "SourceFile"


# instance fields
.field private mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onBoundsChanged(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->setHistogramData(Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->getUiMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->setUiMode(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    invoke-virtual {v0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->onLocaleChanged()V

    return-void
.end method

.method public onStyleChanged()V
    .locals 3

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/LargeCardRender;->onStyleChanged()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;->mDrawable:Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->isColorfulStyle()Z

    move-result v1

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    invoke-virtual {v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;->setStyle(ZI)V

    return-void
.end method
