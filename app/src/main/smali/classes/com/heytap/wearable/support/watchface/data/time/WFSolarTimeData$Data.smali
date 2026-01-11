.class public Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private final mIsPreview:Z

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->mIsPreview:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;ZLcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;Z)V

    return-void
.end method

.method private getDay(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method private getHour(Ljava/util/Calendar;)I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$2300(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0xc

    :cond_1
    return p1
.end method

.method private getMinute(Ljava/util/Calendar;)I
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method private getMonth(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getSecond(Ljava/util/Calendar;)I
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method private getWeek(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private getYear(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public get(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->mIsPreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$2000(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$2100(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$2200(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[get] invalid field = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WFSolarTimeData"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getSecond(Ljava/util/Calendar;)I

    move-result p1

    return p1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getMinute(Ljava/util/Calendar;)I

    move-result p1

    return p1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getHour(Ljava/util/Calendar;)I

    move-result p1

    return p1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getWeek(Ljava/util/Calendar;)I

    move-result p1

    return p1

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getDay(Ljava/util/Calendar;)I

    move-result p1

    return p1

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getMonth(Ljava/util/Calendar;)I

    move-result p1

    return p1

    :pswitch_6
    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getYear(Ljava/util/Calendar;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAmPm(I)I
    .locals 2

    iget-boolean p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->mIsPreview:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1500(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1600(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1700(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v1, 0xc

    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getDate0Str()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/widget/g;->s()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v2}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$800(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lk0/b;->month_number_small:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v4

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    :goto_0
    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v4}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$900(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lk0/e;->date_format_str:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate1Str()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v1

    const-string v2, "0"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "/"

    .line 1
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDay0Str()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$300(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lk0/e;->day_format_str:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDay1Str()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDay2Str()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleDigitsHourStr()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDoubleDigitsMinuteStr()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDoubleDigitsSecondStr()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHighHour(I)I
    .locals 1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    div-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getHighHourStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getHighHour(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighMinute(I)I
    .locals 1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    div-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getHighMinuteStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getHighMinute(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighSecond(I)I
    .locals 1

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    div-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getHighSecondStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getHighSecond(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHourAndMinute()[I
    .locals 2

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->mIsPreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1000(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1100(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroidx/appcompat/widget/g;->m(Landroid/content/Context;Ljava/util/Calendar;)[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1200(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1300(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1400(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0
.end method

.method public getHourAngle(FF)F
    .locals 2

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->mIsPreview:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x43960000    # 300.0f

    return p1

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1800(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$1900(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr p2, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    return p1
.end method

.method public getHourMinuteStr()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getHourAndMinute()[I

    move-result-object v0

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

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHourStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowHour(I)I
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getLowHourStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getLowHour(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowMinute(I)I
    .locals 0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getLowMinuteStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getLowMinute(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowSecond(I)I
    .locals 0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getLowSecondStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getLowSecond(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinuteAngle(FF)F
    .locals 2

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->mIsPreview:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x42400000    # 48.0f

    return p1

    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p2, v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, p1

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, v1

    return p1
.end method

.method public getMinuteStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonth0Str()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v1

    invoke-static {}, Landroidx/appcompat/widget/g;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v2}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$100(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lk0/b;->month_number_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sub-int/2addr v1, v0

    aget-object v1, v2, v1

    :goto_0
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v2}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$200(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lk0/e;->month_format_str:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonth1Str()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMonth2Str()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondAngle(FF)F
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->mIsPreview:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x43580000    # 216.0f

    return p1

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public getSecondStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStr()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->getHourMinuteStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeek(I)I
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result p1

    return p1
.end method

.method public getWeek0Str()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$400(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lk0/b;->week_str_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWeek1Str()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroidx/appcompat/widget/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$500(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lk0/b;->week_str:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$600(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lk0/b;->week_str_small:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWeek2Str()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;->access$700(Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lk0/b;->week_str_en:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWeekAngle(FF)F
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public getYearStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/data/time/WFSolarTimeData$Data;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
