.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mComplicationId:I

.field private mManagerWrapper:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

.field private mMode:I


# direct methods
.method public constructor <init>(IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mComplicationId:I

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mMode:I

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mManagerWrapper:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mComplicationId:I

    iget p1, p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mComplicationId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getComplicationId()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mComplicationId:I

    return v0
.end method

.method public getDataUpdateManager()Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mManagerWrapper:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mMode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mComplicationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mManagerWrapper:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setComplicationId(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mComplicationId:I

    return-void
.end method

.method public setDataUpdateManager(Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mManagerWrapper:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ComplicationInfo{mComplicationId="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mComplicationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mManagerWrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationInfo;->mManagerWrapper:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
