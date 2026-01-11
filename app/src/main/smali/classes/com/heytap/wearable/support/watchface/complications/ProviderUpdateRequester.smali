.class public Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_REQUEST_UPDATE:Ljava/lang/String; = "heytap.wearable.intent.action.complication.ACTION_REQUEST_UPDATE"

.field public static final ACTION_REQUEST_UPDATE_ALL:Ljava/lang/String; = "heytap.wearable.intent.action.complication.ACTION_REQUEST_UPDATE_ALL"

.field public static final EXTRA_COMPLICATION_IDS:Ljava/lang/String; = "heytap.wearable.intent.extra.complication.EXTRA_COMPLICATION_IDS"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "heytap.wearable.intent.extra.complication.EXTRA_PENDING_INTENT"

.field public static final EXTRA_PROVIDER_COMPONENT:Ljava/lang/String; = "heytap.wearable.intent.extra.complication.EXTRA_PROVIDER_COMPONENT"

.field private static final UPDATE_REQUEST_RECEIVER_PACKAGE:Ljava/lang/String; = "com.heytap.wearable.launcher"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mProviderComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mProviderComponent:Landroid/content/ComponentName;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context or providerComponent is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs requestUpdate([I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "heytap.wearable.intent.action.complication.ACTION_REQUEST_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.heytap.wearable.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mProviderComponent:Landroid/content/ComponentName;

    const-string v3, "heytap.wearable.intent.extra.complication.EXTRA_PROVIDER_COMPONENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "heytap.wearable.intent.extra.complication.EXTRA_COMPLICATION_IDS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string v2, ""

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v1, "heytap.wearable.intent.extra.complication.EXTRA_PENDING_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestUpdateAll()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "heytap.wearable.intent.action.complication.ACTION_REQUEST_UPDATE_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.heytap.wearable.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mProviderComponent:Landroid/content/ComponentName;

    const-string v3, "heytap.wearable.intent.extra.complication.EXTRA_PROVIDER_COMPONENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "heytap.wearable.intent.extra.complication.EXTRA_PENDING_INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ProviderUpdateRequester;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
