.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentStyleIndex:I

.field private mLocalCurrentStyleIndex:I

.field private mStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mCurrentStyleIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mLocalCurrentStyleIndex:I

    sget-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    sget-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    return-void
.end method

.method public static getDefaultWatchFaceConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getDefault()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public addStyle(ILcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addStyle(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentStyleConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mCurrentStyleIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mCurrentStyleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getDefault()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStyleIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mCurrentStyleIndex:I

    return v0
.end method

.method public getLocalCurrentStyleIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mLocalCurrentStyleIndex:I

    return v0
.end method

.method public getStyles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getWatchFaceWigetConfig(I)Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidgets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public isColorfulStyle(II)Z
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getComplicationConfig(I)Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->isChangeStyleEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->getFixedColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getColor()I

    move-result p1

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public removeStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCurrentStyleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mCurrentStyleIndex:I

    return-void
.end method

.method public setLocalCurrentStyleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mLocalCurrentStyleIndex:I

    return-void
.end method

.method public setStyles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    return-void
.end method

.method public setWidgets(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mCurrentStyleIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mLocalCurrentStyleIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mStyles:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
