.class public Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityTimes:I

.field private burnCalorie:I

.field private exerciseTime:I

.field private stepCounts:I

.field private targetActivityTimes:I

.field private targetBurnCalorie:I

.field private targetExerciseTime:I

.field private targetStepCounts:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->burnCalorie:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->stepCounts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->activityTimes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->exerciseTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetBurnCalorie:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetStepCounts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetActivityTimes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetExerciseTime:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityTimes()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->activityTimes:I

    return v0
.end method

.method public getBurnCalorie()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->burnCalorie:I

    return v0
.end method

.method public getCurrentValues()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->burnCalorie:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->stepCounts:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->activityTimes:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->exerciseTime:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getExerciseTime()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->exerciseTime:I

    return v0
.end method

.method public getStepCounts()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->stepCounts:I

    return v0
.end method

.method public getTargetActivityTimes()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetActivityTimes:I

    return v0
.end method

.method public getTargetBurnCalorie()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetBurnCalorie:I

    return v0
.end method

.method public getTargetExerciseTime()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetExerciseTime:I

    return v0
.end method

.method public getTargetStepCounts()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetStepCounts:I

    return v0
.end method

.method public getTargetValues()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetBurnCalorie:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetStepCounts:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetActivityTimes:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetExerciseTime:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public setActivityTimes(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->activityTimes:I

    return-void
.end method

.method public setBurnCalorie(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->burnCalorie:I

    return-void
.end method

.method public setExerciseTime(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->exerciseTime:I

    return-void
.end method

.method public setStepCounts(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->stepCounts:I

    return-void
.end method

.method public setTargetActivityTimes(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetActivityTimes:I

    return-void
.end method

.method public setTargetBurnCalorie(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetBurnCalorie:I

    return-void
.end method

.method public setTargetExerciseTime(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetExerciseTime:I

    return-void
.end method

.method public setTargetStepCounts(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetStepCounts:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DailyActivityData{burnCalorie="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->burnCalorie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->stepCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activityTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->activityTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exerciseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->exerciseTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetBurnCalorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetBurnCalorie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetStepCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetStepCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetActivityTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetActivityTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetExerciseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetExerciseTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->burnCalorie:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->stepCounts:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->activityTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->exerciseTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetBurnCalorie:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetStepCounts:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetActivityTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/DailyActivityData;->targetExerciseTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
