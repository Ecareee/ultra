.class public Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private dataList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData;


# direct methods
.method private constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData$Data;->this$0:Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData;ZLcom/heytap/wearable/support/watchface/data/widget/WFCalendarData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData$Data;-><init>(Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData;Z)V

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData$Data;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDataList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/widget/WFCalendarData$Data;->dataList:Ljava/util/ArrayList;

    return-void
.end method
