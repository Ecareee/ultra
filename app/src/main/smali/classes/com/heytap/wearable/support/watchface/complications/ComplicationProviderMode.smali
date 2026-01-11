.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderMode$Mode;
    }
.end annotation


# static fields
.field private static final DATA_STR:Ljava/lang/String; = "DATA"

.field private static final LARGE_STR:Ljava/lang/String; = "LARGE"

.field private static final MEDIUM_STR:Ljava/lang/String; = "MEDIUM"

.field private static final SMALL_STR:Ljava/lang/String; = "SMALL"

.field public static final UNKNOWN_MODE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p0, v1

    goto :goto_1

    :sswitch_0
    const-string v0, "SMALL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "LARGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "DATA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "MEDIUM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v5

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    return v5

    :pswitch_1
    return v3

    :pswitch_2
    return v2

    :pswitch_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78ae7c8b -> :sswitch_3
        0x1fe7aa -> :sswitch_2
        0x44dc31b -> :sswitch_1
        0x4b59ce7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "DATA"

    return-object p0

    :cond_1
    const-string p0, "LARGE"

    return-object p0

    :cond_2
    const-string p0, "MEDIUM"

    return-object p0

    :cond_3
    const-string p0, "SMALL"

    return-object p0
.end method
