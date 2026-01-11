.class public Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOURS_24:I = 0x18

.field private static final MILLISECONDS_1000:I = 0x3e8

.field private static final MINIMUM_UNIT_PARCELED_IS_NULL:I = -0x1

.field private static final MINUTES_60:I = 0x3c

.field private static final ONLY_SHOW_DAYS_THRESHOLD:I = 0xa

.field private static final SECONDS_60:I = 0x3c

.field private static final SHORT_CHARACTER_LIMIT:I = 0x7

.field private static final STYLE_1:I = 0x1

.field private static final STYLE_2:I = 0x2

.field private static final STYLE_3:I = 0x3

.field private static final STYLE_4:I = 0x4

.field private static final STYLE_5:I = 0x5


# instance fields
.field private final mMinimumUnit:Ljava/util/concurrent/TimeUnit;

.field private final mReferencePeriodEnd:J

.field private final mReferencePeriodStart:J

.field private final mShowNowText:Z

.field private final mStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJIZLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodStart:J

    iput-wide p3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodEnd:J

    iput p5, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mStyle:I

    iput-boolean p6, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mShowNowText:Z

    iput-object p7, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodStart:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodEnd:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mShowNowText:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    aget-object p1, v0, p1

    :goto_1
    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private static buildShortDaysHoursText(IILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->time_difference_short_days_and_hours:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDaysText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortHoursText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildShortDaysText(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->time_difference_short_days:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildShortDualUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result v3

    const/16 v5, 0xa

    if-ge v3, v5, :cond_5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result p2

    invoke-static {p2, p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDaysHoursText(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDaysText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortHoursText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result v0

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->minutes(J)I

    move-result v1

    if-lez v0, :cond_4

    if-lez v1, :cond_3

    invoke-static {v0, v1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortHoursMinsText(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {v0, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortHoursText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->minutes(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortMinsText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {p1, p2, v4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDaysText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static buildShortHoursMinsText(IILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$string;->time_difference_short_hours_and_minutes:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortHoursText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortMinsText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildShortHoursText(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->time_difference_short_hours:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildShortMinsText(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->time_difference_short_minutes:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildShortSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result v3

    if-gtz v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->minutes(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortMinsText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortHoursText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1, p2, v4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDaysText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildStopwatchText(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result p1

    invoke-static {p1, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDaysText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result v3

    if-gtz v3, :cond_2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {p3, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result p3

    if-gtz p3, :cond_1

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->minutes(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->seconds(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%02d:%02d"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->minutes(J)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "%d:%02d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDualUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildWordsSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result v3

    if-gtz v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->minutes(J)I

    move-result p1

    sget p2, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->time_difference_words_minutes:I

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p3, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->hours(J)I

    move-result p1

    sget p2, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->time_difference_words_hours:I

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p3, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, p2, v4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->days(J)I

    move-result p1

    sget p2, Lcom/heytap/wearable/support/watchface/complications/R$plurals;->time_difference_words_days:I

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p3, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static days(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->modToUnit(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static divRoundingUp(JJ)J
    .locals 2

    div-long v0, p0, p2

    rem-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private getTimeDifference(J)J
    .locals 3

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodStart:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    sub-long/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodEnd:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    sub-long v0, p1, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private static getUnitMaximum(Ljava/util/concurrent/TimeUnit;)I
    .locals 3

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText$2;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/16 v2, 0x3c

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unit not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x18

    return p0

    :cond_2
    return v2

    :cond_3
    const/16 p0, 0x3e8

    return p0
.end method

.method private static hours(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->modToUnit(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static isGreaterOrEqual(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static minutes(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->modToUnit(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static modToUnit(JLjava/util/concurrent/TimeUnit;)I
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    div-long/2addr p0, v0

    invoke-static {p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getUnitMaximum(Ljava/util/concurrent/TimeUnit;)I

    move-result p2

    int-to-long v0, p2

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static roundUpToUnit(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->divRoundingUp(JJ)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static seconds(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->modToUnit(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private shortDualUnlessTooLong(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortDualUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private wordsSingleUnlessTooLong(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildWordsSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public getNextChangeTime(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getPrecision()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->divRoundingUp(JJ)J

    move-result-wide p1

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getPrecision()J
    .locals 5

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mStyle:I

    const-wide/16 v1, 0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_1
    return-wide v3
.end method

.method public getReferencePeriodEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodEnd:J

    return-wide v0
.end method

.method public getReferencePeriodStart()J
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodStart:J

    return-wide v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mStyle:I

    return v0
.end method

.method public getText(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getTimeDifference(J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mShowNowText:Z

    if-eqz v0, :cond_0

    sget p2, Lcom/heytap/wearable/support/watchface/complications/R$string;->time_difference_now:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2, p3, p1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->wordsSingleUnlessTooLong(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, p2, p3, p1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildWordsSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p2, p3, p1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->shortDualUnlessTooLong(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0, p2, p3, p1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildShortSingleUnitText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0, p2, p3, p1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->buildStopwatchText(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public returnsSameText(JJ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getPrecision()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getTimeDifference(J)J

    move-result-wide p1

    invoke-static {p1, p2, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->divRoundingUp(JJ)J

    move-result-wide p1

    invoke-direct {p0, p3, p4}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getTimeDifference(J)J

    move-result-wide p3

    invoke-static {p3, p4, v0, v1}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->divRoundingUp(JJ)J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public shouldShowNowText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mShowNowText:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mReferencePeriodEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mShowNowText:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->mMinimumUnit:Ljava/util/concurrent/TimeUnit;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
