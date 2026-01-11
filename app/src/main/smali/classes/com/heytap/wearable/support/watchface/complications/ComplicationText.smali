.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceStyle;,
        Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatStyle;,
        Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeDifferenceBuilder;,
        Lcom/heytap/wearable/support/watchface/complications/ComplicationText$TimeFormatBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationText;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIFFERENCE_STYLE_SHORT_DUAL_UNIT:I = 0x3

.field public static final DIFFERENCE_STYLE_SHORT_SINGLE_UNIT:I = 0x2

.field public static final DIFFERENCE_STYLE_SHORT_WORDS_SINGLE_UNIT:I = 0x5

.field public static final DIFFERENCE_STYLE_STOPWATCH:I = 0x1

.field public static final DIFFERENCE_STYLE_WORDS_SINGLE_UNIT:I = 0x4

.field public static final FORMAT_STYLE_DEFAULT:I = 0x1

.field public static final FORMAT_STYLE_LOWER_CASE:I = 0x3

.field public static final FORMAT_STYLE_UPPER_CASE:I = 0x2

.field private static final KEY_DIFFERENCE_MINIMUM_UNIT:Ljava/lang/String; = "minimum_unit"

.field private static final KEY_DIFFERENCE_PERIOD_END:Ljava/lang/String; = "difference_period_end"

.field private static final KEY_DIFFERENCE_PERIOD_START:Ljava/lang/String; = "difference_period_start"

.field private static final KEY_DIFFERENCE_SHOW_NOW_TEXT:Ljava/lang/String; = "show_now_text"

.field private static final KEY_DIFFERENCE_STYLE:Ljava/lang/String; = "difference_style"

.field private static final KEY_FORMAT_FORMAT_STRING:Ljava/lang/String; = "format_format_string"

.field private static final KEY_FORMAT_STYLE:Ljava/lang/String; = "format_style"

.field private static final KEY_FORMAT_TIME_ZONE:Ljava/lang/String; = "format_time_zone"

.field private static final KEY_SURROUNDING_STRING:Ljava/lang/String; = "surrounding_string"


# instance fields
.field private mDependentTextCache:Ljava/lang/CharSequence;

.field private mDependentTextCacheTime:J

.field private final mSurroundingText:Ljava/lang/CharSequence;

.field private final mTemplateValues:[Ljava/lang/CharSequence;

.field private final mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, "^2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v3, "^3"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "^4"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "^5"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "^6"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "^7"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "^8"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "^9"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTemplateValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "surrounding_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mSurroundingText:Ljava/lang/CharSequence;

    const-string v0, "difference_style"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "difference_period_start"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "difference_period_end"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "show_now_text"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v0, "minimum_unit"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->timeUnitFromName(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v12

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;-><init>(JJIZLjava/util/concurrent/TimeUnit;)V

    iput-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    goto :goto_0

    :cond_0
    const-string v0, "format_format_string"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "format_style"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "format_time_zone"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    :cond_1
    new-instance v3, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v3, v0, p1, v2}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    iput-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    :goto_0
    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->checkFields()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/heytap/wearable/support/watchface/complications/ComplicationText$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "^2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "^3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "^4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "^5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "^9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTemplateValues:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mSurroundingText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->checkFields()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;Lcom/heytap/wearable/support/watchface/complications/ComplicationText$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;-><init>(Ljava/lang/CharSequence;Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;)V

    return-void
.end method

.method private checkFields()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mSurroundingText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One of mSurroundingText and mTimeDependentText must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getText(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationText;J)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->getText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static plainText(Ljava/lang/CharSequence;)Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;-><init>(Ljava/lang/CharSequence;Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;)V

    return-object v0
.end method

.method private static timeUnitFromName(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNextChangeTime(J)J
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    if-nez v0, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;->getNextChangeTime(J)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public getText(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mSurroundingText:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mDependentTextCache:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mDependentTextCacheTime:J

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;->returnsSameText(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mDependentTextCache:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    invoke-interface {v0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;->getText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    iput-wide p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mDependentTextCacheTime:J

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mDependentTextCache:Ljava/lang/CharSequence;

    :goto_0
    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mSurroundingText:Ljava/lang/CharSequence;

    if-nez p2, :cond_2

    return-object p1

    :cond_2
    iget-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTemplateValues:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isAlwaysEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mSurroundingText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTimeDependent()Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public returnsSameText(JJ)Z
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;->returnsSameText(JJ)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mSurroundingText:Ljava/lang/CharSequence;

    const-string v1, "surrounding_string"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;->mTimeDependentText:Lcom/heytap/wearable/support/watchface/complications/TimeDependentText;

    instance-of v1, v0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getReferencePeriodStart()J

    move-result-wide v1

    const-string v3, "difference_period_start"

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getReferencePeriodEnd()J

    move-result-wide v1

    const-string v3, "difference_period_end"

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getStyle()I

    move-result v1

    const-string v2, "difference_style"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->shouldShowNowText()Z

    move-result v1

    const-string v2, "show_now_text"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getMinimumUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeDifferenceText;->getMinimumUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "minimum_unit"

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getFormatString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_format_string"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getStyle()I

    move-result v1

    const-string v2, "format_style"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/TimeFormatText;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format_time_zone"

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
