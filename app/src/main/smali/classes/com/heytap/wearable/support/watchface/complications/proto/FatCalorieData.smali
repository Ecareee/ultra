.class public Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private basicCalorie:I

.field private basicCalorieTarget:I

.field private date:Ljava/lang/String;

.field private dynamicCalorie:I

.field private totalCalorie:I

.field private totalCalorieTarget:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->date:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->dynamicCalorie:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorie:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorie:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorieTarget:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorieTarget:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBasicCalorie()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorie:I

    return v0
.end method

.method public getBasicCalorieTarget()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorieTarget:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicCalorie()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->dynamicCalorie:I

    return v0
.end method

.method public getTotalCalorie()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorie:I

    return v0
.end method

.method public getTotalCalorieTarget()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorieTarget:I

    return v0
.end method

.method public setBasicCalorie(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorie:I

    return-void
.end method

.method public setBasicCalorieTarget(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorieTarget:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->date:Ljava/lang/String;

    return-void
.end method

.method public setDynamicCalorie(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->dynamicCalorie:I

    return-void
.end method

.method public setTotalCalorie(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorie:I

    return-void
.end method

.method public setTotalCalorieTarget(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorieTarget:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FatCalorieData{date=\'"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->date:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", dynamicCalorie="

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->dynamicCalorie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", basicCalorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCalorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", basicCalorieTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorieTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCalorieTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorieTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->dynamicCalorie:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorie:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorie:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->basicCalorieTarget:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/proto/FatCalorieData;->totalCalorieTarget:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
