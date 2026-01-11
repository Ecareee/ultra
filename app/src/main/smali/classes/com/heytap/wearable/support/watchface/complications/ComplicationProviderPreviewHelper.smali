.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderPreviewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewKey(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "heytap.wearable.complication.PREVIEW_LARGE"

    return-object p0

    :cond_1
    const-string p0, "heytap.wearable.complication.PREVIEW_MEDIUM"

    return-object p0

    :cond_2
    const-string p0, "heytap.wearable.complication.PREVIEW_SMALL"

    return-object p0
.end method

.method public static getSinglePreviewKey(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "heytap.wearable.complication.PREVIEW_LARGE_SINGLE"

    return-object p0

    :cond_1
    const-string p0, "heytap.wearable.complication.PREVIEW_MEDIUM_SINGLE"

    return-object p0

    :cond_2
    const-string p0, "heytap.wearable.complication.PREVIEW_SMALL_SINGLE"

    return-object p0
.end method
