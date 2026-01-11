.class public abstract Lcom/heytap/wearable/support/watchface/data/WFData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/data/WFData$Layer;,
        Lcom/heytap/wearable/support/watchface/data/WFData$WFDataListener;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mData:Ljava/lang/Object;

.field public mIsPrivacyMode:Z

.field public mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/wearable/support/watchface/data/WFData$WFDataListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewData:Ljava/lang/Object;

.field public mPrivacyStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mListeners:Ljava/util/List;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lk0/e;->privacy_mode_default_value:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPrivacyStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFData;->createPreviewData()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPreviewData:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFData;->createDefaultData()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addDataListener(Lcom/heytap/wearable/support/watchface/data/WFData$WFDataListener;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[addDataListener] listener is null, return!"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beforeGetData()V
    .locals 0

    return-void
.end method

.method public abstract createDefaultData()Ljava/lang/Object;
.end method

.method public abstract createPreviewData()Ljava/lang/Object;
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/data/WFData;->beforeGetData()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPreviewData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mPreviewData:Ljava/lang/Object;

    return-object v0
.end method

.method public final removeDataListener(Lcom/heytap/wearable/support/watchface/data/WFData$WFDataListener;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[removeDataListener] listener is null, remove all listeners"

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPrivacyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/data/WFData;->mIsPrivacyMode:Z

    return-void
.end method
