.class public Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endTime:J

.field private startTime:J

.field private value:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->value:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->startTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->endTime:J

    return-void
.end method

.method private isSetTimeRange()Z
    .locals 4

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->endTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->startTime:J

    return-wide v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->value:F

    return v0
.end method

.method public isActive(J)Z
    .locals 4

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->isSetTimeRange()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->getStartTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->getEndTime()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->endTime:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->startTime:J

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TimeDependentData{value="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->value:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/TimeDependentData;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
