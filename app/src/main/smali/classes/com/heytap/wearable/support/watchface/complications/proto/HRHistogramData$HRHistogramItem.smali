.class public Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HRHistogramItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMax:I

.field private mMin:I

.field private mTimeIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mTimeIndex:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMin:I

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMax:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mTimeIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMax:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMin:I

    return v0
.end method

.method public getTimeIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mTimeIndex:I

    return v0
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMax:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMin:I

    return-void
.end method

.method public setTimeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mTimeIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "HRHistogramItem{mTimeIndex="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mTimeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mTimeIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/HRHistogramData$HRHistogramItem;->mMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
