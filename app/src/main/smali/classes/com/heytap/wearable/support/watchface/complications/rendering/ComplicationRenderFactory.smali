.class Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRenderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMPLICATION_RENDERS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ComplicationRenderFactory"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRenderFactory;->COMPLICATION_RENDERS:Landroid/util/SparseArray;

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconComplicationRender;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SingleTextComplicationRender;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextComplicationRender;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DoubleTextColorComplicationRender;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextComplicationRender;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/IconTextColorComplicationRender;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ImageComplicationRender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WeatherComplicationRender;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineMediumComplicationRender;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/TimeLineLargeComplicationRender;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DashBoardComplicationRender;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityComplicationRender;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivityCardRender;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/HeartRateChartComplicationRender;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StopWatchComplicationRender;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CountDownComplicationRender;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockSmallComplicationRender;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockMediumComplicationRender;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatterySmallComplicationRender;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/BatteryMediumComplicationRender;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/HRHistogramComplicationRender;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/AirPressureComplicationRender;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/SleepHistogramComplicationRender;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/StepHistogramComplicationRender;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/CalorieHistogramComplicationRender;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/PressureHistogramComplicationRender;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/FatReductionComplicationRender;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressComplicationRender;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextComplicationRender;

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressDoubleTextComplicationRender;

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextIconComplicationRender;

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockAnalogComplicationRender;

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ClockDigitalComplicationRender;

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/PointerDoubleTextComplicationRender;

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressIconComplicationRender;

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewDoubleTextComplicationRender;

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WorldClockIconTextComplicationRender;

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ScheduleMediumComplicationRender;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/DailyActivity2ComplicationRender;

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ProgressTextNewComplicationRender;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ScheduleSmallComplicationRender;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/AlarmClockComplicationRender;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/AlarmClockSmallComplicationRender;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/WindSingleTextComplicationRender;

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v1, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ContactComplicationRender;

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRenderer(Landroid/content/Context;I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
    .locals 6

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRenderFactory;->COMPLICATION_RENDERS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "ComplicationRenderFactory"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[createRenderer] is not supported type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    new-array v3, p1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    const-string p1, "[createRenderer] exception:"

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v2, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
