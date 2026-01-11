.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;
.super Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCoordinates:[Ljava/lang/String;

.field private mDateTextFont:Ljava/lang/String;

.field private mDateTextHeight:Ljava/lang/String;

.field private mDateTextSize:Ljava/lang/String;

.field private mDividerColor:Ljava/lang/String;

.field private mDividerStrokeWidth:Ljava/lang/String;

.field private mSizes:[Ljava/lang/String;

.field private mTextColor:Ljava/lang/String;

.field private mWeekTextFont:Ljava/lang/String;

.field private mWeekTextHeight:Ljava/lang/String;

.field private mWeekTextSize:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mSizes:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextFont:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextFont:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mTextColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextHeight:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextHeight:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerStrokeWidth:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mCoordinates:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mSizes:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;-><init>(Landroid/os/Parcel;)V

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

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mCoordinates:[Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;->getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getCoordinates()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mCoordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getDateTextFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextFont:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTextHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTextSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextSize:Ljava/lang/String;

    return-object v0
.end method

.method public getDividerColor()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDividerStrokeWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerStrokeWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getSizes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mSizes:[Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWeekTextFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextFont:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekTextHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekTextSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextSize:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordinates([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mCoordinates:[Ljava/lang/String;

    return-void
.end method

.method public setDateTextFont(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextFont:Ljava/lang/String;

    return-void
.end method

.method public setDateTextHeight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextHeight:Ljava/lang/String;

    return-void
.end method

.method public setDateTextSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextSize:Ljava/lang/String;

    return-void
.end method

.method public setDividerColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerColor:Ljava/lang/String;

    return-void
.end method

.method public setDividerStrokeWidth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerStrokeWidth:Ljava/lang/String;

    return-void
.end method

.method public setSizes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mSizes:[Ljava/lang/String;

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mTextColor:Ljava/lang/String;

    return-void
.end method

.method public setWeekTextFont(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextFont:Ljava/lang/String;

    return-void
.end method

.method public setWeekTextHeight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextHeight:Ljava/lang/String;

    return-void
.end method

.method public setWeekTextSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextSize:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextFont:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextFont:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mTextColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mWeekTextHeight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDateTextHeight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mDividerStrokeWidth:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mCoordinates:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
