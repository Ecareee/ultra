.class public Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWeatherLifeIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;->mWeatherLifeIndexMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndex;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;->mWeatherLifeIndexMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWeatherLifeIndexMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndex;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;->mWeatherLifeIndexMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setWeatherLifeIndexMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndex;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;->mWeatherLifeIndexMap:Ljava/util/HashMap;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/WeatherLifeIndices;->mWeatherLifeIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
