.class public Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;
.super Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBgEnabled:Z

.field private mChangeProviderEnabled:Z

.field private mChangeStyleEnabled:Z

.field private mCoordinates:[Ljava/lang/String;

.field private mFixedColor:Ljava/lang/String;

.field private mId:I

.field private mIsStub:Z

.field private mProviderId:I

.field private mProviderMode:I

.field private mSizes:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mFixedColor:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mIsStub:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mBgEnabled:Z

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mBgEnabled:Z

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mFixedColor:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mIsStub:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mFixedColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeStyleEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeProviderEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mBgEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mIsStub:Z

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

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceBaseBoundsConfig;->getBounds(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getCoordinates()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getFixedColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mFixedColor:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mId:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderId:I

    return v0
.end method

.method public getProviderMode()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderMode:I

    return v0
.end method

.method public getSizes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    return-object v0
.end method

.method public isBgEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mBgEnabled:Z

    return v0
.end method

.method public isChangeProviderEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeProviderEnabled:Z

    return v0
.end method

.method public isChangeStyleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeStyleEnabled:Z

    return v0
.end method

.method public isStub()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mIsStub:Z

    return v0
.end method

.method public setBgEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mBgEnabled:Z

    return-void
.end method

.method public setChangeProviderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeProviderEnabled:Z

    return-void
.end method

.method public setChangeStyleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeStyleEnabled:Z

    return-void
.end method

.method public setCoordinate([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    return-void
.end method

.method public setFixedColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mFixedColor:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mId:I

    return-void
.end method

.method public setIsStub(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mIsStub:Z

    return-void
.end method

.method public setProviderId(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderId:I

    return-void
.end method

.method public setProviderMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderMode:I

    return-void
.end method

.method public setSize([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ComplicationConfig{mId="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProviderMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mProviderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFixedColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mFixedColor:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mChangeStyleEnabled="

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeStyleEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChangeProviderEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeProviderEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBgEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mBgEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mIsStub:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mCoordinates:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mSizes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mProviderId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mFixedColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeStyleEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mChangeProviderEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mBgEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->mIsStub:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
