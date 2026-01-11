.class Lcom/heytap/wearable/support/watchface/edit/ConfigManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/edit/ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/heytap/wearable/support/watchface/edit/ConfigManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/edit/ConfigManager;-><init>(Lcom/heytap/wearable/support/watchface/edit/ConfigManager$1;)V

    sput-object v0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager$SingletonHolder;->INSTANCE:Lcom/heytap/wearable/support/watchface/edit/ConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/heytap/wearable/support/watchface/edit/ConfigManager;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/edit/ConfigManager$SingletonHolder;->INSTANCE:Lcom/heytap/wearable/support/watchface/edit/ConfigManager;

    return-object v0
.end method
