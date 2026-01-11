.class public Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllDay:I

.field private mEndTime:J

.field private mStartTime:J

.field private mText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

.field private mTitle:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mTitle:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    const-class v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mEndTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mAllDay:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllDay()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mAllDay:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mEndTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mStartTime:J

    return-wide v0
.end method

.method public getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public getTitle()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mTitle:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public setAllDay(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mAllDay:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mEndTime:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mStartTime:J

    return-void
.end method

.method public setText(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-void
.end method

.method public setTitle(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mTitle:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mTitle:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mText:Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeLineData;->mAllDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
