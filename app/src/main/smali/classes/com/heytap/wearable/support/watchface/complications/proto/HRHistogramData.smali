.class public Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHistoryHRs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestHR:I

.field private mLatestHRTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHR:I

    iput-wide p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHRTimestamp:J

    iput-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mHistoryHRs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHR:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHRTimestamp:J

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mHistoryHRs:Ljava/util/List;

    return-void
.end method

.method public static buildEmpty()Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;
    .locals 5

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;-><init>(IJLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHistoryHRs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mHistoryHRs:Ljava/util/List;

    return-object v0
.end method

.method public getLatestHR()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHR:I

    return v0
.end method

.method public getLatestHRTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHRTimestamp:J

    return-wide v0
.end method

.method public setHistoryHRs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mHistoryHRs:Ljava/util/List;

    return-void
.end method

.method public setLatestHR(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHR:I

    return-void
.end method

.method public setLatestHRTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHRTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "HRHistogramData{mLatestHR="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestHRTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHRTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mHistoryHRs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mHistoryHRs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHR:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mLatestHRTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;->mHistoryHRs:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
