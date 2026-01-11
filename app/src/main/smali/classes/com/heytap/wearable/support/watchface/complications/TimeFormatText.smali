.class public Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_TIME_FORMAT_PRECISION:[J

.field private static final DATE_TIME_FORMAT_SYMBOLS:[[Ljava/lang/String;

.field private static final DURATION_12L:J = 0xcL

.field private static final DURATION_1L:J = 0x1L


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private final mStyle:I

.field private mTimePrecision:J

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "S"

    const-string v3, "s"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "m"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v5, "H"

    const-string v6, "K"

    const-string v7, "h"

    const-string v8, "k"

    const-string v9, "j"

    const-string v10, "J"

    const-string v11, "C"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "a"

    const-string v6, "b"

    const-string v7, "B"

    filled-new-array {v2, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->DATE_TIME_FORMAT_SYMBOLS:[[Ljava/lang/String;

    new-array v0, v0, [J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    aput-wide v1, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    aput-wide v1, v0, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    aput-wide v2, v0, v5

    const-wide/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    aput-wide v1, v0, v6

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->DATE_TIME_FORMAT_PRECISION:[J

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/TimeZone;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDateFormat:Ljava/text/SimpleDateFormat;

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mStyle:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    :goto_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDate:Ljava/util/Date;

    return-void
.end method

.method private getDateFormatWithoutText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getOffset(J)J
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    int-to-long p1, p1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    int-to-long p1, p1

    :goto_0
    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextChangeTime(J)J
    .locals 6

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getPrecision()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getOffset(J)J

    move-result-wide v2

    add-long/2addr p1, v2

    div-long/2addr p1, v0

    const-wide/16 v4, 0x1

    add-long/2addr p1, v4

    mul-long/2addr p1, v0

    sub-long/2addr p1, v2

    return-wide p1
.end method

.method public getPrecision()J
    .locals 8

    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getDateFormatWithoutText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    sget-object v5, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->DATE_TIME_FORMAT_SYMBOLS:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-wide v5, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_2

    move v5, v1

    :goto_1
    sget-object v6, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->DATE_TIME_FORMAT_SYMBOLS:[[Ljava/lang/String;

    aget-object v7, v6, v4

    array-length v7, v7

    if-ge v5, v7, :cond_1

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v5, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->DATE_TIME_FORMAT_PRECISION:[J

    aget-wide v6, v5, v4

    iput-wide v6, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    :cond_3
    iget-wide v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimePrecision:J

    return-wide v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mStyle:I

    return v0
.end method

.method public getText(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mStyle:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public returnsSameText(JJ)Z
    .locals 4

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getPrecision()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getOffset(J)J

    move-result-wide v2

    add-long/2addr p1, v2

    invoke-direct {p0, p3, p4}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getOffset(J)J

    move-result-wide v2

    add-long/2addr p3, v2

    div-long/2addr p1, v0

    div-long/2addr p3, v0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
