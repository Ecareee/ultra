.class public Lcom/heytap/wearable/support/watchface/complications/MixHRData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/MixHRData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

.field private mLatestHRData:Lcom/heytap/wearable/support/watchface/complications/LatestHRData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/MixHRData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/MixHRData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mLatestHRData:Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    const-class v0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/LatestHRData;Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mLatestHRData:Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHistoryHRData()Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    return-object v0
.end method

.method public getLatestHRData()Lcom/heytap/wearable/support/watchface/complications/LatestHRData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mLatestHRData:Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MixHRData{mLatestHRData="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mLatestHRData:Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHistoryHRData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mLatestHRData:Lcom/heytap/wearable/support/watchface/complications/LatestHRData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;->mHistoryHRData:Lcom/heytap/wearable/support/watchface/complications/HistoryHRData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
