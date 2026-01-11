.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;
.super Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTimeFontPackageType:I

.field private mTimeFontPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeFontTypeIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontTypeIndex:I

    sget-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBounds(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->getTimeCoordinates()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;->getTimeSizes()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;->getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getTimeFontPackageType()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackageType:I

    return v0
.end method

.method public getTimeFontPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeFontTypeIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontTypeIndex:I

    return v0
.end method

.method public setTimeFontPackageType(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackageType:I

    return-void
.end method

.method public setTimeFontPackages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/TimeFontPackageConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public setTimeFontTypeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontTypeIndex:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackageType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontTypeIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;->mTimeFontPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
