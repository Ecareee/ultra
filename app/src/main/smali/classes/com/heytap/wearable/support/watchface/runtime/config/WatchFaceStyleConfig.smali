.class public Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WatchFaceStyleConfig"


# instance fields
.field private mColor:Ljava/lang/String;

.field private mComplicationConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mDateTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

.field private mEditBackground:Ljava/lang/String;

.field private mEditBackgroundPath:Ljava/lang/String;

.field private mEditHandDrawable:Ljava/lang/String;

.field private mEngineBackground:Ljava/lang/String;

.field private mExtraJson:Ljava/lang/String;

.field private mFromSdcard:Z

.field private mIndex:I

.field private mPreviewResName:Ljava/lang/String;

.field private mPreviewResNamePath:Ljava/lang/String;

.field private mStyleName:Ljava/lang/String;

.field private mTimeFontPackageConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

.field private mTimeHandConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

.field private mTimeStyle:I

.field private mTimeTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

.field private mTimeTextDiversityConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

.field private mVideoKeyframes:[I

.field private mVideoName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mStyleName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mFromSdcard:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackground:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackgroundPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditHandDrawable:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEngineBackground:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoKeyframes:[I

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mDateTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeStyle:I

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeHandConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextDiversityConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

    const-class v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeFontPackageConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mExtraJson:Ljava/lang/String;

    sget-object v0, Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mComplicationConfigs:Ljava/util/ArrayList;

    return-void
.end method

.method public static getDefault()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;
    .locals 3

    new-instance v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/heytap/wearable/support/watchface/common/utils/ColorUtils;->int2RgbString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->setColor(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->setIndex(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->setPreviewResName(Ljava/lang/String;)V

    const-string v1, "WatchFaceStyleConfig"

    const-string v2, "[getDefault] --> something wrong, get default style config"

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 4

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "[getColor] --> parseColor error , mColor="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WatchFaceStyleConfig"

    invoke-static {v2, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    const-string v0, "[getColor] --> parseInt error , mColor="

    .line 3
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getComplicationConfig(I)Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mComplicationConfigs:Ljava/util/ArrayList;

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

.method public getComplicationConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mComplicationConfigs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getDateTextConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mDateTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

    return-object v0
.end method

.method public getEditBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getEditBackgroundPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackgroundPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEditHandDrawable()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditHandDrawable:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEngineBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mExtraJson:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mIndex:I

    return v0
.end method

.method public getPreviewResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewResNamePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResNamePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mStyleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeFontPackageConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeFontPackageConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    return-object v0
.end method

.method public getTimeHandConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeHandConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

    return-object v0
.end method

.method public getTimeStyle()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeStyle:I

    return v0
.end method

.method public getTimeTextConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

    return-object v0
.end method

.method public getTimeTextDiversityConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextDiversityConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

    return-object v0
.end method

.method public getVideoKeyframes()[I
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoKeyframes:[I

    return-object v0
.end method

.method public getVideoName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoName:Ljava/lang/String;

    return-object v0
.end method

.method public isFromSdcard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mFromSdcard:Z

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    return-void
.end method

.method public setComplicationConfigs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/runtime/config/ComplicationConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mComplicationConfigs:Ljava/util/ArrayList;

    return-void
.end method

.method public setDateTextConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mDateTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

    return-void
.end method

.method public setEditBackground(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackground:Ljava/lang/String;

    return-void
.end method

.method public setEditBackgroundPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackgroundPath:Ljava/lang/String;

    return-void
.end method

.method public setEditHandDrawable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditHandDrawable:Ljava/lang/String;

    return-void
.end method

.method public setEngineBackground(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEngineBackground:Ljava/lang/String;

    return-void
.end method

.method public setExtraJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mExtraJson:Ljava/lang/String;

    return-void
.end method

.method public setFromSdcard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mFromSdcard:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mIndex:I

    return-void
.end method

.method public setPreviewResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResName:Ljava/lang/String;

    return-void
.end method

.method public setPreviewResNamePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResNamePath:Ljava/lang/String;

    return-void
.end method

.method public setStyleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mStyleName:Ljava/lang/String;

    return-void
.end method

.method public setTimeFontPackageConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeFontPackageConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    return-void
.end method

.method public setTimeHandConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeHandConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

    return-void
.end method

.method public setTimeStyle(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeStyle:I

    return-void
.end method

.method public setTimeTextConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

    return-void
.end method

.method public setTimeTextDiversityConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextDiversityConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

    return-void
.end method

.method public setVideoKeyframes([I)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoKeyframes:[I

    return-void
.end method

.method public setVideoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "WatchFaceStyleConfig{mIndex="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStyleName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mStyleName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mColor=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    const-string v3, ", mFromSdcard="

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mFromSdcard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewResName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResName:Ljava/lang/String;

    const-string v3, ", mPreviewResNamePath=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResNamePath:Ljava/lang/String;

    const-string v3, ", mEditBackground=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackground:Ljava/lang/String;

    const-string v3, ", mEditBackgroundPath=\'"

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackgroundPath:Ljava/lang/String;

    const-string v3, ", mEditHandDrawable=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditHandDrawable:Ljava/lang/String;

    const-string v3, ", mEngineBackground=\'"

    .line 15
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEngineBackground:Ljava/lang/String;

    const-string v3, ", mVideoName=\'"

    .line 17
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoName:Ljava/lang/String;

    const-string v3, ", mVideoKeyframes="

    .line 19
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoKeyframes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDateTextConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mDateTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeTextConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeHandConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeHandConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeTextDiversityConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextDiversityConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeFontPackageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeFontPackageConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mExtraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mStyleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mFromSdcard:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mPreviewResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackground:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditBackgroundPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEditHandDrawable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mEngineBackground:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mVideoKeyframes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mDateTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceDateTextConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeHandConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeHandConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeTextDiversityConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeTextDiversityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mTimeFontPackageConfig:Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceTimeFontPackageConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mExtraJson:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->mComplicationConfigs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
