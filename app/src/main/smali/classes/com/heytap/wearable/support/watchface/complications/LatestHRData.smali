.class public Lcom/heytap/wearable/support/watchface/complications/LatestHRData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/LatestHRData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTimestamp:J

.field private mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/LatestHRData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mValue:I

    iput-wide p2, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mTimestamp:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "LatestHRData{mValue="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
