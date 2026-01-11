.class public Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMinuteCoordinates:[Ljava/lang/String;

.field private mMinuteSizes:[Ljava/lang/String;

.field private mMinuteTextColor:Ljava/lang/String;

.field private mMinuteTextFont:Ljava/lang/String;

.field private mMinuteTextSize:Ljava/lang/String;

.field private mStroke:Z

.field private mStrokeColor:Ljava/lang/String;

.field private mStrokeWidth:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteSizes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteSizes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextFont:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteCoordinates:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteSizes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStroke:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeWidth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinuteCoordinates()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteCoordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteSizes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteSizes:[Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinuteTextFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextFont:Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteTextSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextSize:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeWidth:Ljava/lang/String;

    return-object v0
.end method

.method public isStroke()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStroke:Z

    return v0
.end method

.method public setMinuteCoordinates([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteCoordinates:[Ljava/lang/String;

    return-void
.end method

.method public setMinuteSizes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteSizes:[Ljava/lang/String;

    return-void
.end method

.method public setMinuteTextColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextColor:Ljava/lang/String;

    return-void
.end method

.method public setMinuteTextFont(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextFont:Ljava/lang/String;

    return-void
.end method

.method public setMinuteTextSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextSize:Ljava/lang/String;

    return-void
.end method

.method public setStroke(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStroke:Z

    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeColor:Ljava/lang/String;

    return-void
.end method

.method public setStrokeWidth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeWidth:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextFont:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteTextSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteCoordinates:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mMinuteSizes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStroke:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeMinuteTextConfig;->mStrokeWidth:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
