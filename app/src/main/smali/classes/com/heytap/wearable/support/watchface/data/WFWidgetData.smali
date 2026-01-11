.class public abstract Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.super Lcom/heytap/wearable/support/watchface/data/WFData;
.source "SourceFile"


# instance fields
.field public mComplicationId:I

.field public mDataUpdated:Z

.field public mProviderMode:I

.field public mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFData;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    return-void
.end method


# virtual methods
.method public beforeGetData()V
    .locals 2

    invoke-super {p0}, Lcom/heytap/wearable/support/watchface/data/WFData;->beforeGetData()V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[beforeGetData] this widget data has not been registered!"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final complicationAP(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mRegistered:Z

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    move-result-object p1

    return-object p1
.end method

.method public final complicationAP(II)Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mRegistered:Z

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    move-result-object p1

    return-object p1
.end method

.method public final complicationDataUpdate(ILcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[complicationDataUpdate] complicationData is null return!"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[complicationDataUpdate] complicationData type is empty, return!"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->complicationDataUpdateNoData()V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mDataUpdated:Z

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/heytap/wearable/support/watchface/data/WFData$WFDataListener;

    invoke-interface {p2}, Lcom/heytap/wearable/support/watchface/data/WFData$WFDataListener;->onDataChange()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public complicationDataUpdateNoData()V
    .locals 0

    return-void
.end method

.method public abstract getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
.end method

.method public abstract onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
.end method
