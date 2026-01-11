.class public Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mComplicationText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/16 p1, 0x50

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mBatteryLevel:I

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;-><init>(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->setComplicationText(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->setBatteryLevel(I)V

    return-void
.end method

.method private setBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mBatteryLevel:I

    return-void
.end method

.method private setComplicationText(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mComplicationText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-void
.end method


# virtual methods
.method public getBatteryAngle(FF)F
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->getBatteryRatio()F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mBatteryLevel:I

    return v0
.end method

.method public getBatteryLevelStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryRatio()F
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mBatteryLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getBitmapIndex(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    const-string p1, "WFBatteryData"

    const-string v1, "[getBitmapIndex] num should be bigger than 1"

    invoke-static {p1, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/16 v2, 0x64

    sub-int/2addr p1, v1

    div-int/2addr v2, p1

    iget v3, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mBatteryLevel:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    div-int/2addr v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getComplicationText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFBatteryData$Data;->mComplicationText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method
