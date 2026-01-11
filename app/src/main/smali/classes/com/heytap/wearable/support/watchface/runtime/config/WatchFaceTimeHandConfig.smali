.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCircleHandResName:Ljava/lang/String;

.field private mHourHandResName:Ljava/lang/String;

.field private mMinuteHandResName:Ljava/lang/String;

.field private mSecondHandResName:Ljava/lang/String;

.field private mTimeBackground:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mTimeBackground:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mCircleHandResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mHourHandResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mMinuteHandResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mSecondHandResName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCircleHandResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mCircleHandResName:Ljava/lang/String;

    return-object v0
.end method

.method public getHourHandResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mHourHandResName:Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteHandResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mMinuteHandResName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondHandResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mSecondHandResName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mTimeBackground:Ljava/lang/String;

    return-object v0
.end method

.method public setCircleHandResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mCircleHandResName:Ljava/lang/String;

    return-void
.end method

.method public setHourHandResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mHourHandResName:Ljava/lang/String;

    return-void
.end method

.method public setMinuteHandResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mMinuteHandResName:Ljava/lang/String;

    return-void
.end method

.method public setSecondHandResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mSecondHandResName:Ljava/lang/String;

    return-void
.end method

.method public setTimeBackground(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mTimeBackground:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mTimeBackground:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mCircleHandResName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mHourHandResName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mMinuteHandResName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;->mSecondHandResName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
