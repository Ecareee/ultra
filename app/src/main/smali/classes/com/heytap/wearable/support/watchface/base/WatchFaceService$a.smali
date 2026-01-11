.class public abstract Lcom/heytap/wearable/support/watchface/base/WatchFaceService$a;
.super Lm0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/base/WatchFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final synthetic t:Lcom/heytap/wearable/support/watchface/base/WatchFaceService;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/base/WatchFaceService;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/base/WatchFaceService$a;->t:Lcom/heytap/wearable/support/watchface/base/WatchFaceService;

    invoke-direct {p0, p2, p3}, Lm0/p;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getWatchFaceServiceClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/base/WatchFaceService$a;->t:Lcom/heytap/wearable/support/watchface/base/WatchFaceService;

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/base/WatchFaceService;->access$000(Lcom/heytap/wearable/support/watchface/base/WatchFaceService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
