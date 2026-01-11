.class public Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalories:[I

.field private mGoalCalories:I

.field private mLatestCalories:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mLatestCalories:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mGoalCalories:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mCalories:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCalories()[I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mCalories:[I

    return-object v0
.end method

.method public getGoalCalories()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mGoalCalories:I

    return v0
.end method

.method public getLatestCalories()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mLatestCalories:I

    return v0
.end method

.method public setCalories([I)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mCalories:[I

    return-void
.end method

.method public setGoalCalories(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mGoalCalories:I

    return-void
.end method

.method public setLatestCalories(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mLatestCalories:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CalorieHistogramData{mLatestCalories="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mLatestCalories:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoalCalories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mGoalCalories:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCalories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mCalories:[I

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
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mLatestCalories:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mGoalCalories:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/CalorieHistogramData;->mCalories:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
