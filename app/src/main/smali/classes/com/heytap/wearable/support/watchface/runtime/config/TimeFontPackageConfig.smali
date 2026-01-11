.class public Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTimeCoordinates:[Ljava/lang/String;

.field private mTimeFontPackageLocation:I

.field private mTimeSizes:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeSizes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeSizes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeFontPackageLocation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeCoordinates:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeSizes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimeCoordinates()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeCoordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeFontPackageLocation()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeFontPackageLocation:I

    return v0
.end method

.method public getTimeSizes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeSizes:[Ljava/lang/String;

    return-object v0
.end method

.method public setTimeCoordinates([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeCoordinates:[Ljava/lang/String;

    return-void
.end method

.method public setTimeFontPackageLocation(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeFontPackageLocation:I

    return-void
.end method

.method public setTimeSizes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeSizes:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeFontPackageLocation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeCoordinates:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->mTimeSizes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
