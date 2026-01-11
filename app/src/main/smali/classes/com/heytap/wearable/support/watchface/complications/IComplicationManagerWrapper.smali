.class public Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IComplicationManagerWrapper"


# instance fields
.field private final mService:Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;->mService:Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;

    return-void
.end method


# virtual methods
.method public noUpdateRequired(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;->mService:Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;->updateComplicationData(ILcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "IComplicationManagerWrapper"

    const-string v1, "[noUpdateRequired] Failed to send complication data."

    invoke-static {v0, v1, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateComplicationData(ILcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;->mService:Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/IComplicationManager;->updateComplicationData(ILcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IComplicationManagerWrapper"

    const-string v0, "[updateComplicationData] Failed to send complication data."

    invoke-static {p2, v0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
