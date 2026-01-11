.class public final Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeDifferenceBuilder"
.end annotation


# static fields
.field private static final NO_PERIOD_END:J = 0x7fffffffffffffffL

.field private static final NO_PERIOD_START:J


# instance fields
.field private mMinimumUnit:Ljava/util/concurrent/TimeUnit;

.field private mReferencePeriodEnd:J

.field private mReferencePeriodStart:J

.field private mShowNowText:Ljava/lang/Boolean;

.field private mStyle:I

.field private mSurroundingText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodStart:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodEnd:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mStyle:I

    return-void
.end method

.method private static getDefaultShowNowTextForStyle(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public build()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 11

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodEnd:J

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodStart:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mShowNowText:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mStyle:I

    invoke-static {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->getDefaultShowNowTextForStyle(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    move v7, v0

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    iget-object v9, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mSurroundingText:Ljava/lang/CharSequence;

    new-instance v10, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;

    iget-wide v2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodStart:J

    iget-wide v4, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodEnd:J

    iget v6, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mStyle:I

    iget-object v8, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;-><init>(JJIZLjava/util/concurrent/TimeUnit;)V

    const/4 v1, 0x0

    invoke-direct {v0, v9, v10, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;-><init>(Ljava/lang/CharSequence;Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;Lcom/heytap/wearable/support/watchface/complications/ComplicationText$1;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reference period end must not be before start."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumUnit(Ljava/util/concurrent/TimeUnit;)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public setReferencePeriodEnd(J)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodEnd:J

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Reference period end cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReferencePeriodStart(J)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mReferencePeriodStart:J

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Reference period start cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowNowText(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mShowNowText:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStyle(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mStyle:I

    return-object p0
.end method

.method public setSurroundingText(Ljava/lang/CharSequence;)Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;->mSurroundingText:Ljava/lang/CharSequence;

    return-object p0
.end method
