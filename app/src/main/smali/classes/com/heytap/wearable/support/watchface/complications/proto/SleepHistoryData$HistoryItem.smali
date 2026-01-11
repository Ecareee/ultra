.class public Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsWaso:Z

.field private mSleepMode:I

.field private mTimeValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mSleepMode:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mTimeValue:I

    iput-boolean p3, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mIsWaso:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mSleepMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mTimeValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mIsWaso:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSleepMode()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mSleepMode:I

    return v0
.end method

.method public getTimeValue()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mTimeValue:I

    return v0
.end method

.method public isIsWaso()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mIsWaso:Z

    return v0
.end method

.method public setIsWaso(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mIsWaso:Z

    return-void
.end method

.method public setSleepMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mSleepMode:I

    return-void
.end method

.method public setTimeValue(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mTimeValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "HistoryItem{mSleepMode="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mSleepMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mTimeValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWaso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mIsWaso:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mSleepMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mTimeValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/SleepHistoryData$HistoryItem;->mIsWaso:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
