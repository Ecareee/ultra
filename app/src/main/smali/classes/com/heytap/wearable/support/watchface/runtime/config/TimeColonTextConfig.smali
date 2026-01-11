.class public Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColonCoordinates:[Ljava/lang/String;

.field private mColonSizes:[Ljava/lang/String;

.field private mColonTextColor:Ljava/lang/String;

.field private mColonTextFont:Ljava/lang/String;

.field private mColonTextSize:Ljava/lang/String;

.field private mExist:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonSizes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonCoordinates:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonSizes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mExist:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextFont:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonCoordinates:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonSizes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColonCoordinates()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonCoordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getColonSizes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonSizes:[Ljava/lang/String;

    return-object v0
.end method

.method public getColonTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColonTextFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextFont:Ljava/lang/String;

    return-object v0
.end method

.method public getColonTextSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextSize:Ljava/lang/String;

    return-object v0
.end method

.method public isExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mExist:Z

    return v0
.end method

.method public setColonCoordinates([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonCoordinates:[Ljava/lang/String;

    return-void
.end method

.method public setColonSizes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonSizes:[Ljava/lang/String;

    return-void
.end method

.method public setColonTextColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextColor:Ljava/lang/String;

    return-void
.end method

.method public setColonTextFont(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextFont:Ljava/lang/String;

    return-void
.end method

.method public setColonTextSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextSize:Ljava/lang/String;

    return-void
.end method

.method public setExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mExist:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mExist:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextFont:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonTextSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonCoordinates:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/TimeColonTextConfig;->mColonSizes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
