.class public final Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/ComplicationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mFields:Landroid/os/Bundle;

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getType()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;)I
    .locals 0

    iget p0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    return p0
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    return-object p0
.end method

.method private putBooleanField(Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$400(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$400(Ljava/lang/String;I)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected object type: "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private putFloatField(Ljava/lang/String;F)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$400(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private putIntField(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$400(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private putLongField(Ljava/lang/String;J)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$400(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private putStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$400(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;
    .locals 5

    invoke-static {}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->access$300()[[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    aget-object v0, v0, v1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is required for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    invoke-direct {v0, p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;-><init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;)V

    return-object v0
.end method

.method public setAnimationState(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "ANIMATION_STATE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setBatteryLevel(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "BATTERY_LEVEL"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putIntField(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setBorderStyle(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1
    .param p1    # I
        .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$RangedBorderStyle;
        .end annotation
    .end param

    const-string v0, "RANGED_BORDER_STYLE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putIntField(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setCalendarData(Ljava/util/ArrayList;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/complications/rendering/CalendarComplicationData;",
            ">;)",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    const-string v1, "CALENDAR_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public setCity(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "CITY"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setColorProgress(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "COLOR_PROGRESS"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putIntField(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setColorfulModeColor(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "COLORFUL_COLOR"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putIntField(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setColorfulModeIcon(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "COLORFUL_ICON"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setColorfulModeImage(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "COLORFUL_IMAGE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setDailyActivityCurrentValues([I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    const-string v1, "CURRENT_VALUES"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public setDailyActivityTargetValues([I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    const-string v1, "TARGET_VALUES"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public setDashBoardScale(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "DASH_BOARD_SCALE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setDrawBgEnable(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "FIELD_IS_DRAW_BG"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setDuration(J)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "TIME_DURATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putLongField(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setEndTime(J)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "END_TIME"

    invoke-direct {p0, v0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putLongField(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setExpiredAction(Landroid/app/PendingIntent;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "EXPIRED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setExtra(Landroid/os/Bundle;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "EXTRA"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setExtraBundle(Landroid/os/Bundle;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "EXTRA_BUNDLE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setHeartRateComplicationData(Lcom/heytap/wearable/support/watchface/complications/MixHRData;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "HEART_RATE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "ICON"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setImage(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "IMAGE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setMaxValue(F)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "MAX_VALUE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFloatField(Ljava/lang/String;F)V

    return-object p0
.end method

.method public setMinValue(F)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "MIN_VALUE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFloatField(Ljava/lang/String;F)V

    return-object p0
.end method

.method public setNumberTextType(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "TEXT_NUMBER"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setOnlyShowIcon(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "FIELD_ONLY_SHOW_ICON"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setParcelData(Landroid/os/Parcelable;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "PARCEL_DATA"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setPercentage(F)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "PERCENTAGE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFloatField(Ljava/lang/String;F)V

    return-object p0
.end method

.method public setProgressEnabled(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "PROGRESS"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setProgressStyle(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "FIELD_PROGRESS_STYLE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putIntField(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSmallWidget(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "FIELD_SMALL_WIDGET"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setStartTime(J)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "START_TIME"

    invoke-direct {p0, v0, p1, p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putLongField(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setStrMaxValue(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "STR_MAX_VALUE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStrMinValue(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "STR_MIN_VALUE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSupportInActiveReset(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "SUPPORT_INACTIVE_RESET"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSupportPrivacyMode(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "SUPPORT_PRIVACY_MODE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setTapAction(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "TAP_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetValue(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1
    .param p1    # I
        .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$TargetValue;
        .end annotation
    .end param

    const-string v0, "TARGET_VALUE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putIntField(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setText(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "TEXT"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTimeZone(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "TIME_ZONE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTitle(Lcom/heytap/wearable/support/watchface/complications/ComplicationText;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "TITLE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setUnChangedColorful(Z)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "UNCHANGED_COLORFUL"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putBooleanField(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setValue(F)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "VALUE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFloatField(Ljava/lang/String;F)V

    return-object p0
.end method

.method public setWeatherData(Ljava/util/ArrayList;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;",
            ">;)",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->mFields:Landroid/os/Bundle;

    const-string v1, "WEATHER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public setWhiteIcon(Landroid/graphics/drawable/Icon;)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "FIELD_WHITE_ICON"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putFieldIfNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setWorldClockType(I)Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;
    .locals 1

    const-string v0, "WORLD_CLOCK_TYPE"

    invoke-direct {p0, v0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->putIntField(Ljava/lang/String;I)V

    return-object p0
.end method
