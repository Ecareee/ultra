.class public Lcom/heytap/wearable/healthsdk/bean/HealthData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/healthsdk/bean/HealthData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calories:I

.field private distance:I

.field private sportType:I

.field private steps:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/healthsdk/bean/HealthData$a;

    invoke-direct {v0}, Lcom/heytap/wearable/healthsdk/bean/HealthData$a;-><init>()V

    sput-object v0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->steps:I

    iput p2, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->calories:I

    iput p3, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->distance:I

    iput p4, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->sportType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->steps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->calories:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->distance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->sportType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCalories()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->calories:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->distance:I

    return v0
.end method

.method public getSportType()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->sportType:I

    return v0
.end method

.method public getSteps()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->steps:I

    return v0
.end method

.method public setCalories(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->calories:I

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->distance:I

    return-void
.end method

.method public setSportType(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->sportType:I

    return-void
.end method

.method public setSteps(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->steps:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->steps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->calories:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->distance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/HealthData;->sportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
