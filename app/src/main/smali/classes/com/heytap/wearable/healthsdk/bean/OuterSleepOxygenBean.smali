.class public Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private outerSleepOxygenDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private sleepOxygenSwitch:I

.field private sleepOxygenType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean$a;

    invoke-direct {v0}, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean$a;-><init>()V

    sput-object v0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenSwitch:I

    iput p2, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenType:I

    iput-object p3, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->outerSleepOxygenDataBeanList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenSwitch:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenType:I

    sget-object v0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->outerSleepOxygenDataBeanList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOuterSleepOxygenDataBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->outerSleepOxygenDataBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getSleepOxygenSwitch()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenSwitch:I

    return v0
.end method

.method public getSleepOxygenType()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenType:I

    return v0
.end method

.method public setOuterSleepOxygenDataBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenDataBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->outerSleepOxygenDataBeanList:Ljava/util/List;

    return-void
.end method

.method public setSleepOxygenSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenSwitch:I

    return-void
.end method

.method public setSleepOxygenType(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->sleepOxygenType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/healthsdk/bean/OuterSleepOxygenBean;->outerSleepOxygenDataBeanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
