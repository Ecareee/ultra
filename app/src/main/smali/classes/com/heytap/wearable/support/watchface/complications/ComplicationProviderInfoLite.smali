.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$Builder;
    }
.end annotation


# instance fields
.field private mAliasPkg:Ljava/lang/String;

.field private mKeepAlive:Z

.field private mProvider:Ljava/lang/String;

.field private mUpdatePeriod:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mAliasPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatePeriod()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mUpdatePeriod:I

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mKeepAlive:Z

    return v0
.end method

.method public setAliasPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mAliasPkg:Ljava/lang/String;

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mKeepAlive:Z

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public setUpdatePeriod(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mUpdatePeriod:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ComplicationProviderInfoLite{mProvider=\'"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mProvider:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mAliasPkg=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mAliasPkg:Ljava/lang/String;

    const-string v3, ", mKeepAlive="

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mKeepAlive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUpdatePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfoLite;->mUpdatePeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
