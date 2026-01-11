.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComplicationAP"

.field private static final THIRD_VALUE:I = 0x64


# instance fields
.field private mComplicationId:I

.field private mMode:I

.field private mProviderId:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mComplicationId:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x64

    if-ge p2, p1, :cond_1

    add-int/2addr p2, p1

    :cond_1
    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mProviderId:I

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mMode:I

    const-string p1, "[ComplicationAP] mComplicationId:"

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mComplicationId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mProviderId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mProviderId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mMode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ComplicationAP"

    invoke-static {p2, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getComplicationId()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mComplicationId:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mMode:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mProviderId:I

    return v0
.end method

.method public setComplicationId(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mComplicationId:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mMode:I

    return-void
.end method

.method public setProviderId(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mProviderId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ComplicationAP{mComplicationId="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mComplicationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mProviderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mProviderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationAP;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
