.class public Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mSleepHistoryData:Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;

.field private mSleepHour:I

.field private mSleepMinute:I

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    iput p2, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepHour:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepHour:I

    :goto_0
    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepMinute:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;ZLcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->setSleepHistoryData(Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->setSleepHour(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->setSleepMinute(I)V

    return-void
.end method

.method private setSleepHistoryData(Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepHistoryData:Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;

    return-void
.end method

.method private setSleepHour(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepHour:I

    return-void
.end method

.method private setSleepMinute(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepMinute:I

    return-void
.end method


# virtual methods
.method public getSleepHistoryData()Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepHistoryData:Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;

    return-object v0
.end method

.method public getSleepHour()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;->access$400(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepHour:I

    :goto_0
    return v0
.end method

.method public getSleepHourStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;->access$600(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepHour:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;->access$700(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getSleepMinute()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;->access$500(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepMinute:I

    :goto_0
    return v0
.end method

.method public getSleepMinuteStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;->access$800(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->mSleepMinute:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;->access$900(Lcom/heytap/wearable/support/watchface/data/widget/WFHealthSleepData;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
