.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;
.super Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTimeBackground:Ljava/lang/String;

.field private mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

.field private mTimeHourTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

.field private mTimeMinuteTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeBackground:Ljava/lang/String;

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeHourTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeMinuteTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColonBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->getColonCoordinates()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->getColonSizes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;->getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHourBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeHourTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;->getHourCoordinates()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeHourTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;->getHourSizes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;->getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getMinuteBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeMinuteTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->getMinuteCoordinates()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeMinuteTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->getMinuteSizes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;->getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getTimeBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeColonTextConfig()Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    return-object v0
.end method

.method public getTimeHourTextConfig()Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeHourTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    return-object v0
.end method

.method public getTimeMinuteTextConfig()Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeMinuteTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    return-object v0
.end method

.method public setTimeBackground(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeBackground:Ljava/lang/String;

    return-void
.end method

.method public setTimeColonTextConfig(Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    return-void
.end method

.method public setTimeHourTextConfig(Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeHourTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    return-void
.end method

.method public setTimeMinuteTextConfig(Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeMinuteTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeBackground:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeHourTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeHourTextConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeMinuteTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;->mTimeColonTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
