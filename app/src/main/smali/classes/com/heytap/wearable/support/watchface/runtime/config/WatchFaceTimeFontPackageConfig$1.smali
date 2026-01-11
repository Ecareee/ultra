.class final Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    invoke-direct {v0, p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;
    .locals 0

    new-array p1, p1, [Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig$1;->newArray(I)[Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    move-result-object p1

    return-object p1
.end method
