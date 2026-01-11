.class public Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private minSpo2:I

.field private reliability:[B

.field private spo2:[B

.field private timeStamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean$a;

    invoke-direct {v0}, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean$a;-><init>()V

    sput-object v0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->timeStamp:J

    iput p3, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->minSpo2:I

    iput-object p4, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->spo2:[B

    iput-object p5, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->reliability:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->timeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->minSpo2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->spo2:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->reliability:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinSpo2()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->minSpo2:I

    return v0
.end method

.method public getReliability()[B
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->reliability:[B

    return-object v0
.end method

.method public getSpo2()[B
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->spo2:[B

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->timeStamp:J

    return-wide v0
.end method

.method public setMinSpo2(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->minSpo2:I

    return-void
.end method

.method public setReliability([B)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->reliability:[B

    return-void
.end method

.method public setSpo2([B)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->spo2:[B

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->timeStamp:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->minSpo2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->spo2:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->reliability:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
