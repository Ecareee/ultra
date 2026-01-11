.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;
.super Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCoordinates:[Ljava/lang/String;

.field private mSizes:[Ljava/lang/String;

.field private mTextStyle:I

.field private mTimeBackground:Ljava/lang/String;

.field private mTimeFont:Ljava/lang/String;

.field private mTimeFontColor:Ljava/lang/String;

.field private mTimeFontSize:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mSizes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeBackground:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFont:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTextStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mCoordinates:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mSizes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mCoordinates:[Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;->getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getCoordinates()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mCoordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getSizes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mSizes:[Ljava/lang/String;

    return-object v0
.end method

.method public getTextStyle()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTextStyle:I

    return v0
.end method

.method public getTimeBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeFontColor()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeFontSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontSize:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordinates([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mCoordinates:[Ljava/lang/String;

    return-void
.end method

.method public setSizes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mSizes:[Ljava/lang/String;

    return-void
.end method

.method public setTextStyle(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTextStyle:I

    return-void
.end method

.method public setTimeBackground(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeBackground:Ljava/lang/String;

    return-void
.end method

.method public setTimeFont(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFont:Ljava/lang/String;

    return-void
.end method

.method public setTimeFontColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontColor:Ljava/lang/String;

    return-void
.end method

.method public setTimeFontSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontSize:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeBackground:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFont:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTimeFontSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mTextStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mCoordinates:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
