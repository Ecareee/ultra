.class public Lcom/heytap/wearable/healthsdk/bean/SleepData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/healthsdk/bean/SleepData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sleepData:[B

.field private startTime:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/healthsdk/bean/SleepData$a;

    invoke-direct {v0}, Lcom/heytap/wearable/healthsdk/bean/SleepData$a;-><init>()V

    sput-object v0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->startTime:I

    iput-object p2, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->sleepData:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->startTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->sleepData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSleepData()[B
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->sleepData:[B

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->startTime:I

    return v0
.end method

.method public setSleepData([B)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->sleepData:[B

    return-void
.end method

.method public setStartTime(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->startTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SleepData{startTime="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sleepData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->sleepData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

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

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->startTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/healthsdk/bean/SleepData;->sleepData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
