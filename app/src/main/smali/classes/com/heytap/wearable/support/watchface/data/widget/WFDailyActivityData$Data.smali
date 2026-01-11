.class public Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mCurrentValues:[I

.field private mDailyActivityData:Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;

.field private mTargetValues:[I

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$300()[I

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    invoke-static {}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$400()[I

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$500()[I

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    invoke-static {}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$600()[I

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;ZLcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->setDailyActivityData(Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;[I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->setValues([I[I)V

    return-void
.end method

.method private getBitmapIndex(II)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_0

    const-string p1, "WFDailyActivityData"

    const-string p2, "[getBitmapIndex] num should be bigger than 1"

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    aget v3, v2, p1

    if-nez v3, :cond_1

    return v1

    :cond_1
    aget v2, v2, p1

    sub-int/2addr p2, v0

    div-int/2addr v2, p2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget p1, v0, p1

    div-int/2addr p1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private setDailyActivityData(Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mDailyActivityData:Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;

    return-void
.end method

.method private setValues([I[I)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    return-void
.end method


# virtual methods
.method public getActivityTimesAngle(FF)F
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getActivityTimesRatio()F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public getActivityTimesBitmapIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$5300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getBitmapIndex(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getActivityTimesRatio()F
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v2, v2, v1

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public getCaloriesAngle(FF)F
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getCaloriesRatio()F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public getCaloriesBitmapIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$5100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getBitmapIndex(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getCaloriesRatio()F
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v2, v2, v1

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public getCurrentActivityTimes()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCurrentActivityTimesStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentCalories()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v1, v0, v1

    :goto_0
    return v1
.end method

.method public getCurrentCaloriesStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentCaloriesStrPre()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentExercise()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCurrentExerciseStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentSteps()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCurrentStepsStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentValueStrings()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getCurrentValues()[I
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getDailyActivityData()Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mDailyActivityData:Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;

    return-object v0
.end method

.method public getExerciseAngle(FF)F
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getExerciseRatio()F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public getExerciseBitmapIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$5400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getBitmapIndex(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getExerciseRatio()F
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$5000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x3

    aget v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v2, v2, v1

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public getStepsAngle(FF)F
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getStepsRatio()F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public getStepsBitmapIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$5200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->getBitmapIndex(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getStepsRatio()F
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$4800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mCurrentValues:[I

    aget v2, v2, v1

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public getTargetActivityTimes()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getTargetActivityTimesStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3400(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTargetCalories()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    aget v1, v0, v1

    :goto_0
    return v1
.end method

.method public getTargetCaloriesStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTargetCaloriesStrPre()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2800(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTargetExercise()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getTargetExerciseStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3500(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3600(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTargetSteps()I
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$2000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getTargetStepsStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$3200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTargetValueStrings()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$900(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1000(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1100(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1200(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$1300(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTargetValues()[I
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;->access$700(Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFDailyActivityData$Data;->mTargetValues:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
