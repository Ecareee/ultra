.class public Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGoalSteps:I

.field private mLatestSteps:I

.field private mLatestStepsTimestamp:J

.field private mSteps:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestSteps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mGoalSteps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestStepsTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mSteps:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGoalSteps()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mGoalSteps:I

    return v0
.end method

.method public getLatestSteps()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestSteps:I

    return v0
.end method

.method public getLatestStepsTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestStepsTimestamp:J

    return-wide v0
.end method

.method public getSteps()[I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mSteps:[I

    return-object v0
.end method

.method public setGoalSteps(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mGoalSteps:I

    return-void
.end method

.method public setLatestSteps(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestSteps:I

    return-void
.end method

.method public setLatestStepsTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestStepsTimestamp:J

    return-void
.end method

.method public setSteps([I)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mSteps:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StepHistogramData{mLatestSteps="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoalSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mGoalSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestStepsTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestStepsTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mSteps:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestSteps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mGoalSteps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mLatestStepsTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/StepHistogramData;->mSteps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
