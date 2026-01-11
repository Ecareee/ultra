.class public final Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeFormatBuilder"
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mStyle:I

.field private mSurroundingText:Ljava/lang/CharSequence;

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mStyle:I

    return-void
.end method


# virtual methods
.method public build()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 6

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mSurroundingText:Ljava/lang/CharSequence;

    new-instance v2, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mFormat:Ljava/lang/String;

    iget v4, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mStyle:I

    iget-object v5, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {v2, v3, v4, v5}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;-><init>(Ljava/lang/CharSequence;Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;Lcom/heytap/wearable/support/watchface/complications/ComplicationText$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Format must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setStyle(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mStyle:I

    return-object p0
.end method

.method public setSurroundingText(Ljava/lang/CharSequence;)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mSurroundingText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;->mTimeZone:Ljava/util/TimeZone;

    return-object p0
.end method
