.class public Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBodyTemp:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mHumidity:I

.field private mPressure:I

.field private mRainProbability:I

.field private mState:I

.field private mTemp:Ljava/lang/String;

.field private mUvIndex:I

.field private mVisibility:I

.field private mWeatherIcon:Landroid/graphics/drawable/Icon;

.field private mWindDegree:I

.field private mWindPower:I

.field private mWindSpeed:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mBodyTemp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mHumidity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mPressure:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mTemp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mUvIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mVisibility:I

    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWeatherIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindDegree:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindPower:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindSpeed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mRainProbability:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mCityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mState:I

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBodyTemp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mBodyTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mHumidity:I

    return v0
.end method

.method public getPressure()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mPressure:I

    return v0
.end method

.method public getRainProbability()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mRainProbability:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mState:I

    return v0
.end method

.method public getTemp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getUvIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mUvIndex:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mVisibility:I

    return v0
.end method

.method public getWeatherIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWeatherIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getWindDegree()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindDegree:I

    return v0
.end method

.method public getWindPower()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindPower:I

    return v0
.end method

.method public getWindSpeed()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindSpeed:I

    return v0
.end method

.method public setBodyTemp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mBodyTemp:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mCityName:Ljava/lang/String;

    return-void
.end method

.method public setHumidity(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mHumidity:I

    return-void
.end method

.method public setPressure(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mPressure:I

    return-void
.end method

.method public setRainProbability(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mRainProbability:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mState:I

    return-void
.end method

.method public setTemp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mTemp:Ljava/lang/String;

    return-void
.end method

.method public setUvIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mUvIndex:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mVisibility:I

    return-void
.end method

.method public setWeatherIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWeatherIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setWindDegree(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindDegree:I

    return-void
.end method

.method public setWindPower(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindPower:I

    return-void
.end method

.method public setWindSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindSpeed:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "WeatherObw{mBodyTemp=\'"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mBodyTemp:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mHumidity="

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mHumidity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mPressure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTemp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mTemp:Ljava/lang/String;

    const-string v3, ", mUvIndex="

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mUvIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWeatherIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWeatherIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWindDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWindPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWindSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRainProbability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mRainProbability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mBodyTemp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mHumidity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mPressure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mTemp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mUvIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWeatherIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindDegree:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindPower:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mWindSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mRainProbability:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherObw;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
