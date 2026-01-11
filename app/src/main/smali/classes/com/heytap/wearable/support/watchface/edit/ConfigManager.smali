.class public Lcom/heytap/wearable/support/watchface/edit/ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/edit/ConfigManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MAX_STYLES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ConfigManager"


# instance fields
.field private final mConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mEngines:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mConfigs:Ljava/util/HashMap;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mLauncherContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/edit/ConfigManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/heytap/wearable/support/watchface/edit/ConfigManager;
    .locals 1

    invoke-static {}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager$SingletonHolder;->access$100()Lcom/heytap/wearable/support/watchface/edit/ConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private hasStyles(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadEngineWFConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/enginewf/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "infos.json"

    const/4 v1, 0x1

    aput-object p1, v0, v1

    aget-object p1, v0, p2

    aget-object v1, v0, v1

    .line 2
    invoke-static {p1, v1}, Lq0/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lb0/h;

    invoke-direct {v1}, Lb0/h;-><init>()V

    const-class v3, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {v1, p1, v3}, Lb0/h;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    aget-object v4, v0, p2

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->getEditBackground()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    .line 3
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".png"

    .line 4
    invoke-static {v5, v6}, Landroidx/appcompat/app/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/images/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->setEditBackgroundPath(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->setEditBackground(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[loadEngineConfig] --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConfigManager"

    invoke-static {v0, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private updateWatchFaceConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceStyleConfig;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method


# virtual methods
.method public getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
    .locals 6

    const-string v0, "/"

    .line 1
    invoke-static {p2, v0, p3}, Landroidx/appcompat/app/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mEngines:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getWatchFaceConfig] packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " className = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " watchFaceConfig = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isEngineWf = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ConfigManager"

    invoke-static {v5, v3}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/edit/ConfigUtils;->isCreationWatchFace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/edit/ConfigUtils;->loadSdcardStyles(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", sdcardHasStyles = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->hasStyles(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->hasStyles(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->updateWatchFaceConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/edit/ConfigUtils;->loadAssetsStyles(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object v1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->loadStyles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    const-string p2, "[getWatchFaceConfig] styles size = "

    .line 3
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getWatchFaceConfigOsOne(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
    .locals 4

    const-string v0, "/"

    .line 1
    invoke-static {p2, v0, p3}, Landroidx/appcompat/app/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getWatchFaceConfig] packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " className = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " watchFaceConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigManager"

    invoke-static {v3, v2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v2, "com.heytap.wearable.watchface.impl.outfit.WatchFaceServiceImpl"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/edit/ConfigUtils;->loadSdcardStylesOsOne(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->hasStyles(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->updateWatchFaceConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/heytap/wearable/support/watchface/edit/ConfigUtils;->getWatchFaceConfigOsOne(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    const-string p2, "[getWatchFaceConfig] styles size = "

    .line 3
    invoke-static {p2}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getStyles()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public loadStyles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->loadStyles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    return-object p1
.end method

.method public loadStyles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;
    .locals 1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mLauncherContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->loadEngineWFConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/edit/ConfigUtils;->loadSdcardStyles(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->hasStyles(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Z

    move-result p4

    const-string v0, "ConfigManager"

    if-eqz p4, :cond_1

    const-string p1, "[loadStyles] sdcard has styles"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/edit/ConfigUtils;->loadAssetsStyles(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->hasStyles(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "[loadStyles] assets has styles"

    invoke-static {v0, p2}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "[loadStyles] getDefaultWatchFaceConfig"

    invoke-static {v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;->getDefaultWatchFaceConfig()Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->updateWatchFaceConfig(Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;)Lcom/heytap/wearable/support/watchface/runtime/config/WatchFaceConfig;

    move-result-object p1

    return-object p1
.end method

.method public setEngines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;->mEngines:Ljava/util/List;

    return-void
.end method
