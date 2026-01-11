.class public Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_ALARM:Ljava/lang/String; = "heytap.intent.action.complication.SHOW_ALARM"

.field private static final ACTION_ALIPAY:Ljava/lang/String; = "com.google.android.wearable.localedition.action.PAY"

.field private static final ACTION_BATTERY:Ljava/lang/String; = "android.settings.BATTERY_SETTING"

.field private static final ACTION_BREATHE:Ljava/lang/String; = "heytap.wearable.intent.action.health.START_BREATHE"

.field private static final ACTION_BREENO:Ljava/lang/String; = "com.heytap.wearable.breeno.intent.action.SPEECH"

.field private static final ACTION_CALENDAR:Ljava/lang/String; = "heytap.wearable.intent.action.calendar.MAIN"

.field private static final ACTION_COUNT_DOWN:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.ui.CountdownActivity"

.field private static final ACTION_HEALTH_DAILY_MAIN:Ljava/lang/String; = "heytap.wearable.intent.action.health.START_DAILY"

.field private static final ACTION_HEALTH_FAT:Ljava/lang/String; = "heytap.wearable.intent.action.health.START_FITCOACH"

.field private static final ACTION_HEALTH_HEART:Ljava/lang/String; = "heytap.wearable.intent.action.health.START_HEARTRATE"

.field private static final ACTION_HEALTH_PRESSURE:Ljava/lang/String; = "heytap.wearable.intent.action.health.pressure.START_PRESSURE"

.field private static final ACTION_HEALTH_SLEEP_MAIN:Ljava/lang/String; = "heytap.wearable.intent.action.health.START_SLEEP"

.field private static final ACTION_HEALTH_SPO:Ljava/lang/String; = "heytap.wearable.intent.action.health.START_OXYGEN"

.field private static final ACTION_LUNAR:Ljava/lang/String; = "heytap.wearable.intent.action.calendar.MAIN"

.field private static final ACTION_PHONE:Ljava/lang/String; = "heytap.wearable.intent.action.dialer.TELECOM_ACTIVITY"

.field private static final ACTION_RECORDER:Ljava/lang/String; = "heytap.wearable.intent.action.soundrecorder.MAIN"

.field private static final ACTION_SPORT:Ljava/lang/String; = "com.heytap.wearable.sports/.MainActivity"

.field private static final ACTION_STOP_WATCH:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.StopWatchActivity"

.field private static final ACTION_WEATHER_DETAIL:Ljava/lang/String; = "heytap.wearable.intent.action.weather.ACTION_WEATHER_DETAIL"

.field private static final ACTION_WORLD_CLOCK:Ljava/lang/String; = "heytap.wearable.intent.action.complication.WORLD_CLOCK_SELECTED"

.field private static final COMPONENT_ALARM:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.clock.alarmclock.watchface.AlarmProviderService"

.field private static final COMPONENT_ALARM2:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.alarm.complication.AlarmProviderService"

.field private static final COMPONENT_ALARM_MD5:Ljava/lang/String; = "7b1d8a471706b3eede5cd1db733a4d6d"

.field public static final COMPONENT_ALIPAY:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayProviderService"

.field private static final COMPONENT_ALIPAY_MD5:Ljava/lang/String; = "378ec4774c510d7baac79b8932de4abe"

.field private static final COMPONENT_BATTERY:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryProviderService"

.field private static final COMPONENT_BATTERY_MD5:Ljava/lang/String; = "72af9305e952798cc5571ab919c78e4a"

.field private static final COMPONENT_BOO_HEE:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BooHeeProviderService"

.field private static final COMPONENT_BOO_HEE_MD5:Ljava/lang/String; = "07791e1618f1b23634c7ad210133e5b6"

.field private static final COMPONENT_BREATHE:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheProviderService"

.field private static final COMPONENT_BREATHE_MD5:Ljava/lang/String; = "def2412b9acdca1d6c90102ea3ff09ee"

.field private static final COMPONENT_BREENO:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoProviderService"

.field private static final COMPONENT_BREENO_MD5:Ljava/lang/String; = "dd8cde50e2e5d3f4150ad4873d517f61"

.field private static final COMPONENT_CALCULATOR:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalculatorProviderService"

.field private static final COMPONENT_CALCULATOR_MD5:Ljava/lang/String; = "a6baeebe4f0240f622f90805ebd04591"

.field private static final COMPONENT_CALENDAR:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarProviderService"

.field private static final COMPONENT_CALENDAR_MD5:Ljava/lang/String; = "0d902b0e4a6c2dfcdddc5149859549df"

.field private static final COMPONENT_CAMERA_ASSISTANT:Ljava/lang/String; = "com.heytap.wearable.cameraassistant/com.heytap.wearable.cameraassistant.widget.CameraAssistantService"

.field private static final COMPONENT_CAMERA_ASSISTANT_MD5:Ljava/lang/String; = "8d924ba03d09488531ac5c87e58383fc"

.field private static final COMPONENT_COMPASS:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CompassProviderService"

.field private static final COMPONENT_COMPASS_MD5:Ljava/lang/String; = "5f0800548006cdd2e7e7659785417784"

.field private static final COMPONENT_COUNTDOWN:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.complication.CountdownProviderService"

.field private static final COMPONENT_COUNTDOWN2:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownProviderService"

.field private static final COMPONENT_COUNTDOWN_MD5:Ljava/lang/String; = "bbb7f84c23a8dfb8730e874c30cf78dc"

.field private static final COMPONENT_DAILY_ACTIVITY:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.DailyActivityProviderService"

.field private static final COMPONENT_DAILY_ACTIVITY2:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.DailyActivityProviderService"

.field private static final COMPONENT_DAILY_ACTIVITY_MD5:Ljava/lang/String; = "46e7a0a8d1bc0eac92c76c089468b078"

.field private static final COMPONENT_DRINK_WATER:Ljava/lang/String; = "com.heytap.wearable.waterreminder/com.heytap.wearable.waterreminder.complication.DrinkWaterProviderService"

.field private static final COMPONENT_DRINK_WATER_MD5:Ljava/lang/String; = "37fbbc949a84383ad3e1fda87f6bda28"

.field private static final COMPONENT_EMPTY:Ljava/lang/String; = ""

.field private static final COMPONENT_EXPRESS:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ExpressProviderService"

.field private static final COMPONENT_EXPRESS_MD5:Ljava/lang/String; = "5aceea78266ecd9ca3224139cdbce8c4"

.field private static final COMPONENT_FIT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitProviderService"

.field private static final COMPONENT_FITNESS:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitnessProviderService"

.field private static final COMPONENT_FITNESS_MD5:Ljava/lang/String; = "203b149a40a21721f4d375f5416a1302"

.field private static final COMPONENT_FIT_MD5:Ljava/lang/String; = "f7550ad56f103e0ac328cfbd82f7246b"

.field private static final COMPONENT_FLASH_LIGHT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlashLightProviderService"

.field private static final COMPONENT_FLASH_LIGHT_MD5:Ljava/lang/String; = "0dd779174665ace1e995cfcce9c90762"

.field private static final COMPONENT_FLIGHT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlightProviderService"

.field private static final COMPONENT_FLIGHT_MD5:Ljava/lang/String; = "6b673c299dc84005c74c0704a896bbb9"

.field private static final COMPONENT_HEALTH_CALORIE:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesProviderService"

.field private static final COMPONENT_HEALTH_CALORIE_MD5:Ljava/lang/String; = "e818387c1789928456b1980ac89af49f"

.field private static final COMPONENT_HEALTH_FAT:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.FatReductionProviderService"

.field private static final COMPONENT_HEALTH_FAT_MD5:Ljava/lang/String; = "5c449c76c30e46374caa1881638d350b"

.field private static final COMPONENT_HEALTH_PRESSURE:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureProviderService"

.field private static final COMPONENT_HEALTH_PRESSURE_MD5:Ljava/lang/String; = "9d78fd0ac9691da7acbac14457986ae7"

.field private static final COMPONENT_HEALTH_SLEEP:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.SleepProviderService"

.field private static final COMPONENT_HEALTH_SLEEP_MD5:Ljava/lang/String; = "78d086f6a654d36907e44c971af9217c"

.field private static final COMPONENT_HEALTH_SPO:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.SpoProviderService"

.field private static final COMPONENT_HEALTH_SPO_MD5:Ljava/lang/String; = "e5d8fd8cce9d97c3d491a8555d171301"

.field private static final COMPONENT_HEALTH_STEP:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepProviderService"

.field private static final COMPONENT_HEALTH_STEP_MD5:Ljava/lang/String; = "ba2a385f11098e8b462f7895e690e9a2"

.field private static final COMPONENT_HEART_RATE:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.HeartRateProviderService"

.field private static final COMPONENT_HEART_RATE2:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.HeartRateProviderService"

.field private static final COMPONENT_HEART_RATE_MD5:Ljava/lang/String; = "db75ca8e5441dc4381588a1302a244c0"

.field private static final COMPONENT_LUNAR:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarProviderService"

.field private static final COMPONENT_LUNAR_MD5:Ljava/lang/String; = "c71aa9bb9f768d3fe110df10de7a16f7"

.field private static final COMPONENT_MEI_YOU:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MeiYouProviderService"

.field private static final COMPONENT_MEI_YOU_MD5:Ljava/lang/String; = "71edb02175fae2bdc4d0348a9c2960d3"

.field private static final COMPONENT_MUSIC:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MusicProviderService"

.field private static final COMPONENT_MUSIC_MD5:Ljava/lang/String; = "1940217dfcc5c5af2c17e1ac254704ae"

.field private static final COMPONENT_PHONE:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneProviderService"

.field private static final COMPONENT_PHONE_MD5:Ljava/lang/String; = "bf6e0c85a2b5a6110faf0ba93d87c777"

.field private static final COMPONENT_RECORDER:Ljava/lang/String; = "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecordWidgetService"

.field private static final COMPONENT_RECORDER_MD5:Ljava/lang/String; = "61b9753cce8ba7ac981b74f0fd590db0"

.field private static final COMPONENT_SPORT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportProviderService"

.field private static final COMPONENT_SPORT_MD5:Ljava/lang/String; = "9043cbcf50273783204829eb38d7a726"

.field private static final COMPONENT_STOPWATCH:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.complication.StopWatchProviderService"

.field private static final COMPONENT_STOPWATCH2:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.stopwatch.complication.StopWatchProviderService"

.field private static final COMPONENT_STOPWATCH_MD5:Ljava/lang/String; = "fc4e56163eae508f7aee2e2289d840ee"

.field private static final COMPONENT_SUNRISE:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunriseProviderService"

.field private static final COMPONENT_SUNRISE_MD5:Ljava/lang/String; = "f4830212daa70539a3053c91c30da754"

.field private static final COMPONENT_SUNSET:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunsetProviderService"

.field private static final COMPONENT_SUNSET_MD5:Ljava/lang/String; = "9d2dbbeeba66c64b0e3ce7a6a0236b34"

.field private static final COMPONENT_TIMELINE:Ljava/lang/String; = "com.heytap.wearable.calendar/com.heytap.wearable.calendar.complication.TimeLineProviderService"

.field private static final COMPONENT_TIMELINE_MD5:Ljava/lang/String; = "26867ddecb3760aff8671f65ada2116c"

.field private static final COMPONENT_TING_SHU:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TingshuProviderService"

.field private static final COMPONENT_TING_SHU_MD5:Ljava/lang/String; = "286857c3848c773c25a70c981ca8224d"

.field private static final COMPONENT_TOMATO_CLOCK:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TomatoClockProviderService"

.field private static final COMPONENT_TOMATO_CLOCK_MD5:Ljava/lang/String; = "aee211e8f09517a2e3b93d8ae9153cbb"

.field private static final COMPONENT_TV_ASSISTANT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TVAssistantProviderService"

.field private static final COMPONENT_TV_ASSISTANT_MD5:Ljava/lang/String; = "63de7dcf0c13af64e2e66fa8446db75c"

.field private static final COMPONENT_UME_TRIP:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.UmetripProviderService"

.field private static final COMPONENT_UME_TRIP_MD5:Ljava/lang/String; = "69f0af931ab9a1209866f1a57872299b"

.field private static final COMPONENT_WEATHER:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WeatherProviderService"

.field private static final COMPONENT_WEATHER_AP:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

.field private static final COMPONENT_WEATHER_AP_MD5:Ljava/lang/String; = "aab34363ba4b19cce2e15e1430bc01ae"

.field private static final COMPONENT_WEATHER_AQ:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityProviderService"

.field private static final COMPONENT_WEATHER_AQI:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

.field private static final COMPONENT_WEATHER_AQI_MD5:Ljava/lang/String; = "af66a68ebb89bfaf6b44a06c2fc0e1b2"

.field private static final COMPONENT_WEATHER_DFW:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.DfwProviderService"

.field private static final COMPONENT_WEATHER_GOLDEN_HOUR:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

.field private static final COMPONENT_WEATHER_GOLDEN_HOUR_MD5:Ljava/lang/String; = "5be85b2087ae63deae87c0139eb722b5"

.field private static final COMPONENT_WEATHER_HUMIDITY:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

.field private static final COMPONENT_WEATHER_HUMIDITY_MD5:Ljava/lang/String; = "307886bee0ca7f66f881bc96fac565a1"

.field private static final COMPONENT_WEATHER_LIFE_INDEX:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.LifeIndexProviderService"

.field private static final COMPONENT_WEATHER_MD5:Ljava/lang/String; = "47c880b50a213e528702346c3e80bf34"

.field private static final COMPONENT_WEATHER_NEW_AQI:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

.field private static final COMPONENT_WEATHER_NEW_AQI_MD5:Ljava/lang/String; = "fd57abcfe3f24e33f07dc47eba713aa3"

.field private static final COMPONENT_WEATHER_NEW_PM25:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

.field private static final COMPONENT_WEATHER_NEW_PM25_MD5:Ljava/lang/String; = "030a3e9bdd98ca18cf6301a730ff4374"

.field private static final COMPONENT_WEATHER_OBW:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.ObwProviderService"

.field private static final COMPONENT_WEATHER_PM25:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

.field private static final COMPONENT_WEATHER_PM25_MD5:Ljava/lang/String; = "9a54e1c50b3aca85c7b4fb96c05217df"

.field private static final COMPONENT_WEATHER_RAIN_PROBABILITY:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

.field private static final COMPONENT_WEATHER_RAIN_PROBABILITY_MD5:Ljava/lang/String; = "86a46fe50cfab78533b90fc0fc46217c"

.field private static final COMPONENT_WEATHER_UV:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

.field private static final COMPONENT_WEATHER_UV_MD5:Ljava/lang/String; = "62ad5dc2ef069fe5b885ae505787a67b"

.field private static final COMPONENT_WEATHER_WIND_PATH:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

.field private static final COMPONENT_WEATHER_WIND_PATH_MD5:Ljava/lang/String; = "6ffb1768077eb5f376f855574d2d0d29"

.field private static final COMPONENT_WORLD_CLOCK:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.worldclock.WorldClockProviderService"

.field private static final COMPONENT_WORLD_CLOCK_MD5:Ljava/lang/String; = "2d2d01c1cdbc522db0abccfeaea0101c"

.field private static final PROVIDERS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDERS_MD5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;->PROVIDERS:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;->PROVIDERS_MD5:Ljava/util/Map;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoProviderService"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string v4, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneProviderService"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    const-string v5, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarProviderService"

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x4

    const-string v7, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarProviderService"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x5

    const-string v8, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayProviderService"

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x6

    const-string v9, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WeatherProviderService"

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v6, 0x16

    const-string v10, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunriseProviderService"

    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v6, 0x17

    const-string v11, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunsetProviderService"

    invoke-virtual {v0, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x7

    const-string v12, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryProviderService"

    invoke-virtual {v0, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "static initializer getColorOSVERSION: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/a;->a()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "SystemProvider"

    invoke-static {v13, v6}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->a()I

    move-result v6

    const-string v13, "com.heytap.wearable.clock/com.heytap.wearable.android.alarm.complication.AlarmProviderService"

    const-string v14, "com.heytap.wearable.clock/com.heytap.wearable.android.stopwatch.complication.StopWatchProviderService"

    const-string v15, "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownProviderService"

    const-string v2, "com.heytap.wearable.health/com.heytap.wearable.health.complication.HeartRateProviderService"

    move-object/from16 v16, v12

    const-string v12, "com.heytap.wearable.health/com.heytap.wearable.health.complication.DailyActivityProviderService"

    move-object/from16 v17, v11

    const-string v11, "com.heytap.wearable.clock/com.heytap.wearable.clock.alarmclock.watchface.AlarmProviderService"

    move-object/from16 v18, v10

    const-string v10, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.complication.StopWatchProviderService"

    move-object/from16 v19, v9

    const-string v9, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.complication.CountdownProviderService"

    move-object/from16 v20, v8

    const-string v8, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.HeartRateProviderService"

    move-object/from16 v21, v7

    const-string v7, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.DailyActivityProviderService"

    move-object/from16 v22, v5

    const/4 v5, 0x3

    if-lt v6, v5, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xf

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xf

    invoke-virtual {v0, v5, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    const/16 v5, 0xa

    const-string v6, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xb

    const-string v6, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xc

    const-string v6, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.worldclock.WorldClockProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x10

    const-string v6, "com.heytap.wearable.calendar/com.heytap.wearable.calendar.complication.TimeLineProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x22

    const-string v6, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecordWidgetService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x12

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.ObwProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x13

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.DfwProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x14

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x19

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x1a

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x26

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x27

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x29

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x28

    const-string v6, "com.heytap.wearable.cameraassistant/com.heytap.wearable.cameraassistant.widget.CameraAssistantService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x1b

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x18

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x23

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x24

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x25

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x15

    const-string v6, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.LifeIndexProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x1c

    const-string v6, "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x1d

    const-string v6, "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x1e

    const-string v6, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SleepProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x1f

    const-string v6, "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x20

    const-string v6, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SpoProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x21

    const-string v6, "com.heytap.wearable.health/com.heytap.wearable.health.complication.FatReductionProviderService"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "dd8cde50e2e5d3f4150ad4873d517f61"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bf6e0c85a2b5a6110faf0ba93d87c777"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0d902b0e4a6c2dfcdddc5149859549df"

    move-object/from16 v5, v22

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c71aa9bb9f768d3fe110df10de7a16f7"

    move-object/from16 v6, v21

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "378ec4774c510d7baac79b8932de4abe"

    move-object/from16 v5, v20

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "47c880b50a213e528702346c3e80bf34"

    move-object/from16 v5, v19

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f4830212daa70539a3053c91c30da754"

    move-object/from16 v5, v18

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "9d2dbbeeba66c64b0e3ce7a6a0236b34"

    move-object/from16 v5, v17

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

    const-string v5, "af66a68ebb89bfaf6b44a06c2fc0e1b2"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

    const-string v5, "9a54e1c50b3aca85c7b4fb96c05217df"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

    const-string v5, "fd57abcfe3f24e33f07dc47eba713aa3"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

    const-string v5, "030a3e9bdd98ca18cf6301a730ff4374"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

    const-string v5, "86a46fe50cfab78533b90fc0fc46217c"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.cameraassistant/com.heytap.wearable.cameraassistant.widget.CameraAssistantService"

    const-string v5, "8d924ba03d09488531ac5c87e58383fc"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

    const-string v5, "62ad5dc2ef069fe5b885ae505787a67b"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

    const-string v5, "aab34363ba4b19cce2e15e1430bc01ae"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

    const-string v5, "5be85b2087ae63deae87c0139eb722b5"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

    const-string v5, "307886bee0ca7f66f881bc96fac565a1"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

    const-string v5, "6ffb1768077eb5f376f855574d2d0d29"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "72af9305e952798cc5571ab919c78e4a"

    move-object/from16 v5, v16

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La/a;->a()I

    move-result v0

    const/4 v5, 0x3

    if-lt v0, v5, :cond_1

    const-string v0, "46e7a0a8d1bc0eac92c76c089468b078"

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "db75ca8e5441dc4381588a1302a244c0"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bbb7f84c23a8dfb8730e874c30cf78dc"

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fc4e56163eae508f7aee2e2289d840ee"

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "7b1d8a471706b3eede5cd1db733a4d6d"

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "46e7a0a8d1bc0eac92c76c089468b078"

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "db75ca8e5441dc4381588a1302a244c0"

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bbb7f84c23a8dfb8730e874c30cf78dc"

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fc4e56163eae508f7aee2e2289d840ee"

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "7b1d8a471706b3eede5cd1db733a4d6d"

    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportProviderService"

    const-string v5, "9043cbcf50273783204829eb38d7a726"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheProviderService"

    const-string v5, "def2412b9acdca1d6c90102ea3ff09ee"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.worldclock.WorldClockProviderService"

    const-string v5, "2d2d01c1cdbc522db0abccfeaea0101c"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.calendar/com.heytap.wearable.calendar.complication.TimeLineProviderService"

    const-string v5, "26867ddecb3760aff8671f65ada2116c"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecordWidgetService"

    const-string v5, "61b9753cce8ba7ac981b74f0fd590db0"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesProviderService"

    const-string v5, "e818387c1789928456b1980ac89af49f"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepProviderService"

    const-string v5, "ba2a385f11098e8b462f7895e690e9a2"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SleepProviderService"

    const-string v5, "78d086f6a654d36907e44c971af9217c"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureProviderService"

    const-string v5, "9d78fd0ac9691da7acbac14457986ae7"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SpoProviderService"

    const-string v5, "e5d8fd8cce9d97c3d491a8555d171301"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.FatReductionProviderService"

    const-string v5, "5c449c76c30e46374caa1881638d350b"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitnessProviderService"

    const-string v5, "203b149a40a21721f4d375f5416a1302"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.waterreminder/com.heytap.wearable.waterreminder.complication.DrinkWaterProviderService"

    const-string v5, "37fbbc949a84383ad3e1fda87f6bda28"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BooHeeProviderService"

    const-string v5, "07791e1618f1b23634c7ad210133e5b6"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MeiYouProviderService"

    const-string v5, "71edb02175fae2bdc4d0348a9c2960d3"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitProviderService"

    const-string v5, "f7550ad56f103e0ac328cfbd82f7246b"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.UmetripProviderService"

    const-string v5, "69f0af931ab9a1209866f1a57872299b"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TingshuProviderService"

    const-string v5, "286857c3848c773c25a70c981ca8224d"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ExpressProviderService"

    const-string v5, "5aceea78266ecd9ca3224139cdbce8c4"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CompassProviderService"

    const-string v5, "5f0800548006cdd2e7e7659785417784"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalculatorProviderService"

    const-string v5, "a6baeebe4f0240f622f90805ebd04591"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlashLightProviderService"

    const-string v5, "0dd779174665ace1e995cfcce9c90762"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TomatoClockProviderService"

    const-string v5, "aee211e8f09517a2e3b93d8ae9153cbb"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TVAssistantProviderService"

    const-string v5, "63de7dcf0c13af64e2e66fa8446db75c"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlightProviderService"

    const-string v5, "6b673c299dc84005c74c0704a896bbb9"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MusicProviderService"

    const-string v5, "1940217dfcc5c5af2c17e1ac254704ae"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;->ACTIONS:Ljava/util/Map;

    const-string v1, "com.heytap.wearable.breeno.intent.action.SPEECH"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.dialer.TELECOM_ACTIVITY"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.calendar.MAIN"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.wearable.localedition.action.PAY"

    move-object/from16 v3, v20

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportProviderService"

    const-string v3, "com.heytap.wearable.sports/.MainActivity"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheProviderService"

    const-string v3, "heytap.wearable.intent.action.health.START_BREATHE"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.settings.BATTERY_SETTING"

    move-object/from16 v3, v16

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.weather.ACTION_WEATHER_DETAIL"

    move-object/from16 v3, v19

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v18

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v17

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.ObwProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.DfwProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.cameraassistant/com.heytap.wearable.cameraassistant.widget.CameraAssistantService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.LifeIndexProviderService"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.calendar.MAIN"

    move-object/from16 v3, v22

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.calendar/com.heytap.wearable.calendar.complication.TimeLineProviderService"

    const-string v3, "heytap.wearable.intent.action.calendar.MAIN"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecordWidgetService"

    const-string v3, "heytap.wearable.intent.action.soundrecorder.MAIN"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.worldclock.WorldClockProviderService"

    const-string v3, "heytap.wearable.intent.action.complication.WORLD_CLOCK_SELECTED"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La/a;->a()I

    move-result v1

    const-string v3, "heytap.wearable.intent.action.health.START_DAILY"

    const/4 v4, 0x3

    if-lt v1, v4, :cond_2

    const-string v1, "heytap.wearable.intent.action.health.START_HEARTRATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.ui.CountdownActivity"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.StopWatchActivity"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.intent.action.complication.SHOW_ALARM"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v1, "heytap.wearable.intent.action.health.START_HEARTRATE"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.ui.CountdownActivity"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.StopWatchActivity"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.intent.action.complication.SHOW_ALARM"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesProviderService"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepProviderService"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SleepProviderService"

    const-string v2, "heytap.wearable.intent.action.health.START_SLEEP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureProviderService"

    const-string v2, "heytap.wearable.intent.action.health.pressure.START_PRESSURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SpoProviderService"

    const-string v2, "heytap.wearable.intent.action.health.START_OXYGEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.FatReductionProviderService"

    const-string v2, "heytap.wearable.intent.action.health.START_FITCOACH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProviderAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;->ACTIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProviderComponent(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;->PROVIDERS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProviderId(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;->PROVIDERS:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getProviderMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProviderOsOne;->PROVIDERS_MD5:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isComponentCameraAssistant(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.heytap.wearable.cameraassistant/com.heytap.wearable.cameraassistant.widget.CameraAssistantService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
