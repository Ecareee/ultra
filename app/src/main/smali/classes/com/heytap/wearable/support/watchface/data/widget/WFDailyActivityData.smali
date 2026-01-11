.class public Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;
.super Lcom/heytap/wearable/support/watchface/data/WFWidgetData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;
    }
.end annotation


# static fields
.field private static final ACTIVITY_INDEX:I = 0x2

.field private static final CALORIES_INDEX:I = 0x0

.field private static final DEFAULT_CURRENT_VALUES:[I

.field private static final DEFAULT_TARGET_VALUES:[I

.field private static final EXERCISE_INDEX:I = 0x3

.field private static final PREVIEW_CURRENT_VALUES:[I

.field private static final PREVIEW_TARGET_VALUES:[I

.field private static final STEPS_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WFDailyActivityData"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->PREVIEW_TARGET_VALUES:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->PREVIEW_CURRENT_VALUES:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->DEFAULT_TARGET_VALUES:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->DEFAULT_CURRENT_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x12c
        0x1f40
        0xc
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x12c
        0x1f40
        0xc
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$2800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$300()[I
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->PREVIEW_TARGET_VALUES:[I

    return-object v0
.end method

.method public static synthetic access$3000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$3200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$3400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$3600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$3800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$400()[I
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->PREVIEW_CURRENT_VALUES:[I

    return-object v0
.end method

.method public static synthetic access$4000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$4200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$4400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$4600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$4800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$4900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$500()[I
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->DEFAULT_TARGET_VALUES:[I

    return-object v0
.end method

.method public static synthetic access$5000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$5100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$5200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$5300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$5400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$600()[I
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->DEFAULT_CURRENT_VALUES:[I

    return-object v0
.end method

.method public static synthetic access$700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return p0
.end method


# virtual methods
.method public createDefaultData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;ZLcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$1;)V

    return-object v0
.end method

.method public createPreviewData()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;ZLcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$1;)V

    return-object v0
.end method

.method public getComplicationAP()Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
    .locals 4

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mComplicationId:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/data/WFWidgetData;->mProviderMode:I

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;-><init>(III)V

    return-object v0
.end method

.method public onComplicationDataUpdate(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;

    const-string v0, "WFDailyActivityData"

    if-nez p1, :cond_0

    const-string p1, "[onComplicationDataUpdate] dailyActivityData is null, return!"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "[onComplicationDataUpdate]"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->getTargetValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->getCurrentValues()[I

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;[I[I)V

    return-void
.end method
