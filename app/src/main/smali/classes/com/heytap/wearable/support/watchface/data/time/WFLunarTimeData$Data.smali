.class public Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mDay:I

.field private final mIsPreview:Z

.field private mMonth:I

.field private mMoonAngle:F

.field private mMoonIndex:I

.field private mYear:I

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mIsPreview:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;ZLcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;Z)V

    return-void
.end method

.method private updateParams()V
    .locals 4

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mIsPreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;->access$100(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;->access$200(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;->access$300(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mYear:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mMonth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mDay:I

    if-eq v1, v0, :cond_2

    :cond_1
    iput v2, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mYear:I

    iput v3, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mMonth:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mDay:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;->access$400(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/android/calendar/LunarHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/calendar/LunarHelper;->getMoonAgePicIndex(III)I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mMoonIndex:I

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;->access$500(Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/android/calendar/LunarHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/calendar/LunarHelper;->getMoonAngle(III)F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mMoonAngle:F

    :cond_2
    return-void
.end method


# virtual methods
.method public getMoonAngle(FF)F
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->updateParams()V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mMoonAngle:F

    return p1
.end method

.method public getMoonIndex(I)I
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->updateParams()V

    iget p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFLunarTimeData$Data;->mMoonIndex:I

    return p1
.end method
