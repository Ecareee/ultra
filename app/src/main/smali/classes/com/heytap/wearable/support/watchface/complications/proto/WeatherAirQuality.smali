.class public Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCo:I

.field private mForecastTime:I

.field private mIndex:I

.field private mLead:I

.field private mNo:I

.field private mNo2:I

.field private mO3:I

.field private mPm10:I

.field private mPm25:I

.field private mSo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mForecastTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm25:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm10:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mO3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mCo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mSo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mLead:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCo()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mCo:I

    return v0
.end method

.method public getForecastTime()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mForecastTime:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mIndex:I

    return v0
.end method

.method public getLead()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mLead:I

    return v0
.end method

.method public getNo()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo:I

    return v0
.end method

.method public getNo2()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo2:I

    return v0
.end method

.method public getO3()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mO3:I

    return v0
.end method

.method public getPm10()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm10:I

    return v0
.end method

.method public getPm25()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm25:I

    return v0
.end method

.method public getSo()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mSo:I

    return v0
.end method

.method public setCo(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mCo:I

    return-void
.end method

.method public setForecastTime(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mForecastTime:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mIndex:I

    return-void
.end method

.method public setLead(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mLead:I

    return-void
.end method

.method public setNo(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo:I

    return-void
.end method

.method public setNo2(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo2:I

    return-void
.end method

.method public setO3(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mO3:I

    return-void
.end method

.method public setPm10(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm10:I

    return-void
.end method

.method public setPm25(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm25:I

    return-void
.end method

.method public setSo(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mSo:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "WeatherAirQuality{mForecastTime="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mForecastTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPm25="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm25:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPm10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm10:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mO3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mO3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mCo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNo2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mSo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mLead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mForecastTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm25:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mPm10:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mO3:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mCo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mNo2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mSo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherAirQuality;->mLead:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
