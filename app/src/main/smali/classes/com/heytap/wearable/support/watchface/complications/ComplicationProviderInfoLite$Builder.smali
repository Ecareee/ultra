.class public final Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAliasPkg:Ljava/lang/String;

.field private mKeepAlive:Z

.field private mProvider:Ljava/lang/String;

.field private mUpdatePeriod:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mProvider:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mUpdatePeriod:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public build()Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;
    .locals 2

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$1;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mAliasPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->setAliasPkg(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mKeepAlive:Z

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->setKeepAlive(Z)V

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mUpdatePeriod:I

    invoke-virtual {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->setUpdatePeriod(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ComplicationProviderInfoLite args are illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAliasPkg(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mAliasPkg:Ljava/lang/String;

    return-object p0
.end method

.method public setKeepAlive(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mKeepAlive:Z

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatePeriod(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;->mUpdatePeriod:I

    return-object p0
.end method
