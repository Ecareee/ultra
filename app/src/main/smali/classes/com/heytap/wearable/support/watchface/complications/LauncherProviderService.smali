.class public abstract Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;
.super Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherProviderService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService;-><init>()V

    return-void
.end method

.method private buildComplicationData()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;
    .locals 2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;->getColorfulModeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->setColorfulModeColor(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;->getColorfulModeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;->getColorfulModeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->setColorfulModeIcon(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;->isUnChangedColorful()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->setUnChangedColorful(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;->getTapAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->setTapAction(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->build()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getColorfulModeColor()I
.end method

.method public getColorfulModeIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Icon;
.end method

.method public abstract getTapAction()Ljava/lang/String;
.end method

.method public isUnChangedColorful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onComplicationUpdate(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onComplicationUpdate] complicationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "manager="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LauncherProviderService"

    invoke-static {v0, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/LauncherProviderService;->buildComplicationData()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;->updateComplicationData(ILcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    return-void
.end method
