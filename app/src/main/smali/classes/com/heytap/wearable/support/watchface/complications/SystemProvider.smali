.class public Lcom/heytap/wearable/support/watchface/complications/SystemProvider;
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

.field private static final COMPONENT_ALIPAY:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayProviderService"

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

.field private static final COMPONENT_HEALTH_NEW_CALORIE:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesNewProviderService"

.field private static final COMPONENT_HEALTH_NEW_CALORIE_MD5:Ljava/lang/String; = "c55e672512bc354e378c93869b0e4389"

.field private static final COMPONENT_HEALTH_NEW_PRESSURE:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureNewProviderService"

.field private static final COMPONENT_HEALTH_NEW_PRESSURE_MD5:Ljava/lang/String; = "3ba6056b2b9e2c5a8dd9d982cdcefd75"

.field private static final COMPONENT_HEALTH_NEW_STEP:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepNewProviderService"

.field private static final COMPONENT_HEALTH_NEW_STEP_MD5:Ljava/lang/String; = "8ea81818a932183836e8424010554e75"

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

.field private static final COMPONENT_NEW_BATTERY:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryNewProviderService"

.field private static final COMPONENT_NEW_BATTERY_MD5:Ljava/lang/String; = "84b16e5aacb5bc4e8dc412e9c2133560"

.field private static final COMPONENT_NEW_COUNTDOWN:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownNewProviderService"

.field private static final COMPONENT_NEW_COUNTDOWN_MD5:Ljava/lang/String; = "ca25c80474930694bcc36176df5b51e1"

.field private static final COMPONENT_NEW_HEART_RATE:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.HeartRateNewProviderService"

.field private static final COMPONENT_NEW_HEART_RATE_MD5:Ljava/lang/String; = "2a5a99b51243d65d10683098234ca18b"

.field private static final COMPONENT_NEW_WEATHER_UV:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexNewProviderService"

.field private static final COMPONENT_NEW_WEATHER_UV_MD5:Ljava/lang/String; = "ff91ddd24fd354281cacbcf2204d0b53"

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

.field public static final COMPONENT_THIRD_ADULT_WECHAT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatAdultProviderService"

.field private static final COMPONENT_THIRD_ADULT_WECHAT_MD5:Ljava/lang/String; = "9f96f74d23bb98b7085171f05e52a14d"

.field public static final COMPONENT_THIRD_ADULT_WECHAT_PAY:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatAdultPayProviderService"

.field private static final COMPONENT_THIRD_ADULT_WECHAT_PAY_MD5:Ljava/lang/String; = "49a6e1c3ca63b81abef9c310357ce05c"

.field private static final COMPONENT_THIRD_ALARM:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.alarm.complication.AlarmProviderService"

.field private static final COMPONENT_THIRD_ALARM_MD5:Ljava/lang/String; = "c6e2225c188f221c980f97241c45a07c"

.field private static final COMPONENT_THIRD_ALIPAY:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayThirdProviderService"

.field private static final COMPONENT_THIRD_ALIPAY_MD5:Ljava/lang/String; = "497e0f874a5ac13ca6bf93aa7c2585f8"

.field public static final COMPONENT_THIRD_BAIDUMAP:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BaiduMapProviderService"

.field private static final COMPONENT_THIRD_BAIDUMAP_MD5:Ljava/lang/String; = "eb1dbd870f7883a3d4323d4dd35eaf42"

.field private static final COMPONENT_THIRD_BATTERY:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryThirdProviderService"

.field private static final COMPONENT_THIRD_BATTERY_MD5:Ljava/lang/String; = "54fb44783ac1b93efd33ee82d55b3565"

.field private static final COMPONENT_THIRD_BOOHEE:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BooHeeThirdProviderService"

.field private static final COMPONENT_THIRD_BOOHEE_MD5:Ljava/lang/String; = "bb651217481ddd339482c9640173b45c"

.field private static final COMPONENT_THIRD_BREATHE:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheThirdProviderService"

.field private static final COMPONENT_THIRD_BREATHE_MD5:Ljava/lang/String; = "0ca875ed2a938e2acd98df17b191319a"

.field private static final COMPONENT_THIRD_BREENO:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoThirdProviderService"

.field private static final COMPONENT_THIRD_BREENO_MD5:Ljava/lang/String; = "05d64a47cbdce721e0c4568685361634"

.field private static final COMPONENT_THIRD_CALCULATOR:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalculatorProviderService"

.field private static final COMPONENT_THIRD_CALCULATOR_MD5:Ljava/lang/String; = "a6baeebe4f0240f622f90805ebd04591"

.field private static final COMPONENT_THIRD_CALENDAR:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarThirdProviderService"

.field private static final COMPONENT_THIRD_CALENDAR_MD5:Ljava/lang/String; = "cd36b02234901a14538e067b94e645bf"

.field private static final COMPONENT_THIRD_CAPABILITY_ASSESSMENT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CapabilityAssessmentThirdProviderService"

.field private static final COMPONENT_THIRD_CAPABILITY_ASSESSMENT_MD5:Ljava/lang/String; = "61509ff629a79041d19e1f532c5c1088"

.field private static final COMPONENT_THIRD_CLOCK_ANALOG:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ClockAnalogProviderService"

.field private static final COMPONENT_THIRD_CLOCK_ANALOG_MD5:Ljava/lang/String; = "80af2aefb28146d2d902ed15b53ddd31"

.field private static final COMPONENT_THIRD_CLOCK_DIGITAL:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ClockDigitalProviderService"

.field private static final COMPONENT_THIRD_CLOCK_DIGITAL_MD5:Ljava/lang/String; = "bbe86bc3c13e7a3722c870751bf2410c"

.field private static final COMPONENT_THIRD_CLOUDMUSIC:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CloudMusicProviderService"

.field private static final COMPONENT_THIRD_CLOUDMUSIC_MD5:Ljava/lang/String; = "7fb3f845c4d2c3618564c6f8695b77fa"

.field public static final COMPONENT_THIRD_CONTACT:Ljava/lang/String; = "com.heytap.wearable.dialer/com.heytap.wearable.dialer.widgets.ContactsProviderService"

.field private static final COMPONENT_THIRD_CONTACT_MD5:Ljava/lang/String; = "58e50884bdaef4b553bfa5726750e46d"

.field private static final COMPONENT_THIRD_COUNTDOWN_BOUTIQUE:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownBoutiqueProviderService"

.field private static final COMPONENT_THIRD_DAILY_ACTIVITY2:Ljava/lang/String; = "com.heytap.wearable.health/com.heytap.wearable.health.complication.DailyActivityProviderService"

.field private static final COMPONENT_THIRD_DAILY_ACTIVITY2_MD5:Ljava/lang/String; = "a6cad42a51fe9426c81e8f445d48cabd"

.field private static final COMPONENT_THIRD_FIT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitThirdProviderService"

.field private static final COMPONENT_THIRD_FITNESS:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitnessThirdProviderService"

.field private static final COMPONENT_THIRD_FITNESS_MD5:Ljava/lang/String; = "787aac945916408cac4007624a067737"

.field private static final COMPONENT_THIRD_FIT_MD5:Ljava/lang/String; = "ae65f6a9ec8c97223989a56410a6047b"

.field private static final COMPONENT_THIRD_FLASHLIGHT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlashLightProviderService"

.field private static final COMPONENT_THIRD_FLASHLIGHT_MD5:Ljava/lang/String; = "0dd779174665ace1e995cfcce9c90762"

.field public static final COMPONENT_THIRD_GUDONG:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.GudongProviderService"

.field private static final COMPONENT_THIRD_GUDONG_MD5:Ljava/lang/String; = "f234c8ff96c221e53a30b4e6ded8a020"

.field private static final COMPONENT_THIRD_KEEP:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.KeepProviderService"

.field private static final COMPONENT_THIRD_KEEP_MD5:Ljava/lang/String; = "6db9cad98d02ed99d5f826dd00c9d524"

.field private static final COMPONENT_THIRD_LUNAR:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarThirdProviderService"

.field private static final COMPONENT_THIRD_LUNAR_MD5:Ljava/lang/String; = "5dc322e83f990f4d3431bbd445687b9d"

.field public static final COMPONENT_THIRD_MEIYOU:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MeiYouThirdProviderService"

.field private static final COMPONENT_THIRD_MEIYOU_MD5:Ljava/lang/String; = "0e1e5f8225532aa29c3bf029f8990967"

.field private static final COMPONENT_THIRD_PHONE:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneThirdProviderService"

.field private static final COMPONENT_THIRD_PHONE_MD5:Ljava/lang/String; = "db9445311cc66fb150f9ead4c0f55a48"

.field private static final COMPONENT_THIRD_QQMUSIC:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.QQMusicProviderService"

.field private static final COMPONENT_THIRD_QQMUSIC_MD5:Ljava/lang/String; = "f0cbb2681f9969c66a96834c0edbdad6"

.field private static final COMPONENT_THIRD_RECORD:Ljava/lang/String; = "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecorderW3ProviderService"

.field private static final COMPONENT_THIRD_RECORD_MD5:Ljava/lang/String; = "6208d17aa6965d71f4edd94f1c6c5cde"

.field private static final COMPONENT_THIRD_SCHEDULE_3:Ljava/lang/String; = "com.heytap.wearable.calendar/com.heytap.wearable.complication.service.ScheduleWatchFace3ProviderService"

.field private static final COMPONENT_THIRD_SMS:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SmsProviderService"

.field private static final COMPONENT_THIRD_SMS_MD5:Ljava/lang/String; = "410005884f58a0445739b3ec20f39b28"

.field private static final COMPONENT_THIRD_SPORT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportThirdProviderService"

.field private static final COMPONENT_THIRD_SPORT_MD5:Ljava/lang/String; = "1a967718aed5aa34bc578392b601e925"

.field private static final COMPONENT_THIRD_STOPWATCH:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.stopwatch.complication.StopWatchProviderService"

.field private static final COMPONENT_THIRD_STOPWATCH_MD5:Ljava/lang/String; = "93197130bf8ea034ad8c2cabe5f8fa22"

.field public static final COMPONENT_THIRD_TIMELINE:Ljava/lang/String; = "com.heytap.wearable.calendar/com.heytap.wearable.complication.service.TimeLineW3ProviderService"

.field private static final COMPONENT_THIRD_TIMELINE_MD5:Ljava/lang/String; = "4b417d6a6d329d3a0af97fad8093b1ff"

.field private static final COMPONENT_THIRD_UMETRIP:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.UmetripProviderService"

.field private static final COMPONENT_THIRD_UMETRIP_MD5:Ljava/lang/String; = "69f0af931ab9a1209866f1a57872299b"

.field private static final COMPONENT_THIRD_WALLET:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WalletProviderService"

.field private static final COMPONENT_THIRD_WALLET_MD5:Ljava/lang/String; = "a6f7c34a16dbc70f230f90b277f6feed"

.field private static final COMPONENT_THIRD_WECHAT:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatMapProviderService"

.field private static final COMPONENT_THIRD_WECHAT_MD5:Ljava/lang/String; = "46b2583527be15cf531b28dbd63e0f40"

.field private static final COMPONENT_THIRD_XIMALAYA:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.XiMaLaYaMapProviderService"

.field private static final COMPONENT_THIRD_XIMALAYA_MD5:Ljava/lang/String; = "b5624509374f249c01761a051bc5b975"

.field private static final COMPONENT_THIRD_YUEPAOQUAN:Ljava/lang/String; = "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.YuePaoQuanMapProviderService"

.field private static final COMPONENT_THIRD_YUEPAOQUAN_MD5:Ljava/lang/String; = "a198c2a493ac7bd1faa18d10e44c7e74"

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

.field private static final COMPONENT_WEATHER_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WeatherProviderV3Service"

.field private static final COMPONENT_WEATHER_3_MD5:Ljava/lang/String; = "0921473dcb7049b1794c0185c09e95e3"

.field private static final COMPONENT_WEATHER_AIR_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirQualityProviderV3Service"

.field private static final COMPONENT_WEATHER_AIR_3_MD5:Ljava/lang/String; = "9ed75a577feab0480a8417145ebf6c9e"

.field private static final COMPONENT_WEATHER_AIR_PRESSURE_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirPressureProviderV3Service"

.field private static final COMPONENT_WEATHER_AIR_PRESSURE_3_MD5:Ljava/lang/String; = "c14818d7c297de9631ca89f5f2fe5590"

.field private static final COMPONENT_WEATHER_AP:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

.field private static final COMPONENT_WEATHER_AP_MD5:Ljava/lang/String; = "aab34363ba4b19cce2e15e1430bc01ae"

.field private static final COMPONENT_WEATHER_AQ:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityProviderService"

.field private static final COMPONENT_WEATHER_AQI:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

.field private static final COMPONENT_WEATHER_AQI_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirQualityIndexProviderV3Service"

.field private static final COMPONENT_WEATHER_AQI_3_MD5:Ljava/lang/String; = "14516ef561a7b1623661558b66db4997"

.field private static final COMPONENT_WEATHER_AQI_MD5:Ljava/lang/String; = "af66a68ebb89bfaf6b44a06c2fc0e1b2"

.field private static final COMPONENT_WEATHER_CURRENT_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.ObwProviderV3Service"

.field private static final COMPONENT_WEATHER_CURRENT_3_MD5:Ljava/lang/String; = "4009f874312cc87d7765ca9c76e591b8"

.field private static final COMPONENT_WEATHER_DAY_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.DfwProviderV3Service"

.field private static final COMPONENT_WEATHER_DAY_3_MD5:Ljava/lang/String; = "af52fbae746925401bde3df50e33d26e"

.field private static final COMPONENT_WEATHER_DFW:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.DfwProviderService"

.field private static final COMPONENT_WEATHER_GOLDEN_HOUR:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

.field private static final COMPONENT_WEATHER_GOLDEN_HOUR_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.GoldenHourProviderV3Service"

.field private static final COMPONENT_WEATHER_GOLDEN_HOUR_3_MD5:Ljava/lang/String; = "b2f948f553ff690c28c405cdb3c3c658"

.field private static final COMPONENT_WEATHER_GOLDEN_HOUR_MD5:Ljava/lang/String; = "5be85b2087ae63deae87c0139eb722b5"

.field private static final COMPONENT_WEATHER_HUMIDITY:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

.field private static final COMPONENT_WEATHER_HUMIDITY_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.HumidityProviderV3Service"

.field private static final COMPONENT_WEATHER_HUMIDITY_3_MD5:Ljava/lang/String; = "bef1f982e57b221431963b5470318f38"

.field private static final COMPONENT_WEATHER_HUMIDITY_MD5:Ljava/lang/String; = "307886bee0ca7f66f881bc96fac565a1"

.field private static final COMPONENT_WEATHER_LIFE_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.LifeIndexProviderV3Service"

.field private static final COMPONENT_WEATHER_LIFE_3_MD5:Ljava/lang/String; = "8fc0c82ac047a5a78bc2a772db1a9b5b"

.field private static final COMPONENT_WEATHER_LIFE_INDEX:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.LifeIndexProviderService"

.field private static final COMPONENT_WEATHER_MD5:Ljava/lang/String; = "47c880b50a213e528702346c3e80bf34"

.field public static final COMPONENT_WEATHER_MOON_PHASE_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.MoonPhaseProviderV3Service"

.field private static final COMPONENT_WEATHER_MOON_PHASE_3_MD5:Ljava/lang/String; = "569d3dcba22048ffe0b7e2aee27505f3"

.field private static final COMPONENT_WEATHER_NEW_AQI:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

.field private static final COMPONENT_WEATHER_NEW_AQI_MD5:Ljava/lang/String; = "fd57abcfe3f24e33f07dc47eba713aa3"

.field private static final COMPONENT_WEATHER_NEW_PM25:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

.field private static final COMPONENT_WEATHER_NEW_PM25_MD5:Ljava/lang/String; = "030a3e9bdd98ca18cf6301a730ff4374"

.field private static final COMPONENT_WEATHER_OBW:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.ObwProviderService"

.field private static final COMPONENT_WEATHER_PM25:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

.field private static final COMPONENT_WEATHER_PM25_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.PM25ProviderV3Service"

.field private static final COMPONENT_WEATHER_PM25_3_MD5:Ljava/lang/String; = "db9ddb637cc36c79b3a8a9cd2644edac"

.field private static final COMPONENT_WEATHER_PM25_MD5:Ljava/lang/String; = "9a54e1c50b3aca85c7b4fb96c05217df"

.field private static final COMPONENT_WEATHER_RAIN_PROBABILITY:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

.field private static final COMPONENT_WEATHER_RAIN_PROBABILITY_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.RainProbabilityProviderV3Service"

.field private static final COMPONENT_WEATHER_RAIN_PROBABILITY_3_MD5:Ljava/lang/String; = "c680ea69e6cb409f844d941d98b56a40"

.field private static final COMPONENT_WEATHER_RAIN_PROBABILITY_MD5:Ljava/lang/String; = "86a46fe50cfab78533b90fc0fc46217c"

.field private static final COMPONENT_WEATHER_SUNRISE_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunriseProviderV3Service"

.field private static final COMPONENT_WEATHER_SUNRISE_3_MD5:Ljava/lang/String; = "c3217c8fd973c84cd35e9834c6d54ee9"

.field private static final COMPONENT_WEATHER_SUNSET_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunsetProviderV3Service"

.field private static final COMPONENT_WEATHER_SUNSET_3_MD5:Ljava/lang/String; = "7b89caaebfe95304605ab78a40158bb8"

.field private static final COMPONENT_WEATHER_TEMPERATURE_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.TemperatureProviderV3Service"

.field private static final COMPONENT_WEATHER_TEMPERATURE_3_MD5:Ljava/lang/String; = "72a84500b5dc942ac6e5334da6e7fcda"

.field private static final COMPONENT_WEATHER_UV:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

.field private static final COMPONENT_WEATHER_UV_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.UVIndexProviderV3Service"

.field private static final COMPONENT_WEATHER_UV_3_MD5:Ljava/lang/String; = "f50fc612ef7d4a584e2b280dfacac916"

.field private static final COMPONENT_WEATHER_UV_MD5:Ljava/lang/String; = "62ad5dc2ef069fe5b885ae505787a67b"

.field private static final COMPONENT_WEATHER_WINDDIRECTION_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindProviderV3Service"

.field private static final COMPONENT_WEATHER_WINDDIRECTION_3_MD5:Ljava/lang/String; = "319e12e383882c119b7bc514a61884a3"

.field private static final COMPONENT_WEATHER_WINDFORCE_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindForceProviderV3Service"

.field private static final COMPONENT_WEATHER_WINDFORCE_3_MD5:Ljava/lang/String; = "af125b9dac01eaded9241dc0045f9839"

.field private static final COMPONENT_WEATHER_WIND_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindDirectionProviderV3Service"

.field private static final COMPONENT_WEATHER_WIND_3_MD5:Ljava/lang/String; = "f0339b1ab63dbd25939d31f8bdeaba83"

.field private static final COMPONENT_WEATHER_WIND_PATH:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

.field private static final COMPONENT_WEATHER_WIND_PATH_MD5:Ljava/lang/String; = "6ffb1768077eb5f376f855574d2d0d29"

.field private static final COMPONENT_WEATHER_WIND_SPEED_3:Ljava/lang/String; = "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindSpeedProviderV3Service"

.field private static final COMPONENT_WEATHER_WIND_SPEED_3_MD5:Ljava/lang/String; = "dde5e1759a04707932e5b3e547ab0945"

.field private static final COMPONENT_WORLD_CLOCK:Ljava/lang/String; = "com.heytap.wearable.clock/com.heytap.wearable.android.worldclock.complication.WorldClockProviderService"

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
    .locals 22

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProvider;->PROVIDERS:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/SystemProvider;->PROVIDERS_MD5:Ljava/util/Map;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoProviderService"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneProviderService"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarProviderService"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x4

    const-string v4, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarProviderService"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x5

    const-string v4, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayProviderService"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x6

    const-string v4, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WeatherProviderService"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x16

    const-string v4, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunriseProviderService"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x17

    const-string v4, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunsetProviderService"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x7

    const-string v4, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryProviderService"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "static initializer getColorOSVERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemProvider"

    invoke-static {v4, v3}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->a()I

    move-result v3

    const-string v4, "com.heytap.wearable.clock/com.heytap.wearable.android.alarm.complication.AlarmProviderService"

    const-string v5, "com.heytap.wearable.clock/com.heytap.wearable.android.stopwatch.complication.StopWatchProviderService"

    const-string v6, "com.heytap.wearable.health/com.heytap.wearable.health.complication.DailyActivityProviderService"

    if-lt v3, v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x9

    const-string v7, "com.heytap.wearable.health/com.heytap.wearable.health.complication.HeartRateProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xd

    const-string v7, "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    const-string v7, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.DailyActivityProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x9

    const-string v7, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.HeartRateProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xd

    const-string v7, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.complication.CountdownProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xe

    const-string v7, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.complication.StopWatchProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xf

    const-string v7, "com.heytap.wearable.clock/com.heytap.wearable.clock.alarmclock.watchface.AlarmProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    const/16 v3, 0xa

    const-string v7, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xb

    const-string v7, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xc

    const-string v7, "com.heytap.wearable.clock/com.heytap.wearable.android.worldclock.complication.WorldClockProviderService"

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x10

    const-string v8, "com.heytap.wearable.calendar/com.heytap.wearable.calendar.complication.TimeLineProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x22

    const-string v8, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecordWidgetService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x12

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.ObwProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x13

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.DfwProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x14

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x19

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x1a

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x26

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x27

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x29

    const-string v8, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x28

    const-string v8, "com.heytap.wearable.cameraassistant/com.heytap.wearable.cameraassistant.widget.CameraAssistantService"

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x1b

    const-string v9, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x18

    const-string v9, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x23

    const-string v9, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x24

    const-string v9, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x25

    const-string v9, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x15

    const-string v9, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.LifeIndexProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x1c

    const-string v9, "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x1d

    const-string v9, "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x1e

    const-string v9, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SleepProviderService"

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x1f

    const-string v10, "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureProviderService"

    invoke-virtual {v0, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x20

    const-string v10, "com.heytap.wearable.health/com.heytap.wearable.health.complication.SpoProviderService"

    invoke-virtual {v0, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x21

    const-string v11, "com.heytap.wearable.health/com.heytap.wearable.health.complication.FatReductionProviderService"

    invoke-virtual {v0, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x2a

    const-string v12, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryNewProviderService"

    invoke-virtual {v0, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x2b

    const-string v12, "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesNewProviderService"

    invoke-virtual {v0, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x2c

    const-string v13, "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepNewProviderService"

    invoke-virtual {v0, v3, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x2d

    const-string v14, "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureNewProviderService"

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x2e

    const-string v15, "com.heytap.wearable.health/com.heytap.wearable.health.complication.HeartRateNewProviderService"

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x2f

    const-string v2, "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownNewProviderService"

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x30

    move-object/from16 v16, v1

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexNewProviderService"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6a

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WeatherProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7a

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunriseProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7b

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunsetProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7c

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirPressureProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirQualityIndexProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e

    move-object/from16 v17, v3

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.PM25ProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f

    move-object/from16 v18, v3

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.UVIndexProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x94

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x88

    move-object/from16 v19, v3

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.HumidityProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8d

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.RainProbabilityProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x95

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindDirectionProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x89

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x87

    move-object/from16 v20, v3

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.GoldenHourProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x96

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindSpeedProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x97

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.MoonPhaseProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x98

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.TemperatureProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x77

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.DfwProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x76

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.ObwProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x79

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.LifeIndexProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x78

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirQualityProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xae

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xaf

    const-string v3, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindForceProviderV3Service"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x69

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x99

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BooHeeThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9a

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MeiYouThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9b

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9c

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatMapProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb2

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatAdultProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb3

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatAdultPayProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9d

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.UmetripProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9e

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BaiduMapProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9f

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CloudMusicProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa0

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.KeepProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa1

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.XiMaLaYaMapProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa2

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.GudongProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa3

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.YuePaoQuanMapProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa4

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.QQMusicProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa5

    const-string v3, "com.heytap.wearable.dialer/com.heytap.wearable.dialer.widgets.ContactsProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x74

    const-string v3, "com.heytap.wearable.calendar/com.heytap.wearable.complication.service.TimeLineW3ProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x86

    const-string v3, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecorderW3ProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa6

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ClockAnalogProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa7

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ClockDigitalProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x68

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa8

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SmsProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8e

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa9

    move-object/from16 v21, v3

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalculatorProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xaa

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlashLightProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x67

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xab

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WalletProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8c

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x65

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x66

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb1

    const-string v3, "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownBoutiqueProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6e

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6f

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xac

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitnessThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xad

    const-string v3, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CapabilityAssessmentThirdProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x92

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x82

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x84

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x85

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8f

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x81

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x90

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x93

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x91

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x83

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb0

    const-string v3, "com.heytap.wearable.calendar/com.heytap.wearable.complication.service.ScheduleWatchFace3ProviderService"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoProviderService"

    const-string v1, "dd8cde50e2e5d3f4150ad4873d517f61"

    move-object/from16 v3, v16

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneProviderService"

    const-string v1, "bf6e0c85a2b5a6110faf0ba93d87c777"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarProviderService"

    const-string v1, "0d902b0e4a6c2dfcdddc5149859549df"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarProviderService"

    const-string v1, "c71aa9bb9f768d3fe110df10de7a16f7"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayProviderService"

    const-string v1, "378ec4774c510d7baac79b8932de4abe"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WeatherProviderService"

    const-string v1, "47c880b50a213e528702346c3e80bf34"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunriseProviderService"

    const-string v1, "f4830212daa70539a3053c91c30da754"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunsetProviderService"

    const-string v1, "9d2dbbeeba66c64b0e3ce7a6a0236b34"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

    const-string v1, "af66a68ebb89bfaf6b44a06c2fc0e1b2"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

    const-string v1, "9a54e1c50b3aca85c7b4fb96c05217df"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

    const-string v1, "fd57abcfe3f24e33f07dc47eba713aa3"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

    const-string v1, "030a3e9bdd98ca18cf6301a730ff4374"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

    const-string v1, "86a46fe50cfab78533b90fc0fc46217c"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "8d924ba03d09488531ac5c87e58383fc"

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

    const-string v1, "62ad5dc2ef069fe5b885ae505787a67b"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

    const-string v1, "aab34363ba4b19cce2e15e1430bc01ae"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

    const-string v1, "5be85b2087ae63deae87c0139eb722b5"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

    const-string v1, "307886bee0ca7f66f881bc96fac565a1"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

    const-string v1, "6ffb1768077eb5f376f855574d2d0d29"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryProviderService"

    const-string v1, "72af9305e952798cc5571ab919c78e4a"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const-string v0, "46e7a0a8d1bc0eac92c76c089468b078"

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.HeartRateProviderService"

    const-string v1, "db75ca8e5441dc4381588a1302a244c0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownProviderService"

    const-string v1, "bbb7f84c23a8dfb8730e874c30cf78dc"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fc4e56163eae508f7aee2e2289d840ee"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "7b1d8a471706b3eede5cd1db733a4d6d"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.DailyActivityProviderService"

    const-string v1, "46e7a0a8d1bc0eac92c76c089468b078"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.HeartRateProviderService"

    const-string v1, "db75ca8e5441dc4381588a1302a244c0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.complication.CountdownProviderService"

    const-string v1, "bbb7f84c23a8dfb8730e874c30cf78dc"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.complication.StopWatchProviderService"

    const-string v1, "fc4e56163eae508f7aee2e2289d840ee"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.clock/com.heytap.wearable.clock.alarmclock.watchface.AlarmProviderService"

    const-string v1, "7b1d8a471706b3eede5cd1db733a4d6d"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportProviderService"

    const-string v1, "9043cbcf50273783204829eb38d7a726"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheProviderService"

    const-string v1, "def2412b9acdca1d6c90102ea3ff09ee"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "2d2d01c1cdbc522db0abccfeaea0101c"

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.calendar/com.heytap.wearable.calendar.complication.TimeLineProviderService"

    const-string v1, "26867ddecb3760aff8671f65ada2116c"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecordWidgetService"

    const-string v1, "61b9753cce8ba7ac981b74f0fd590db0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesProviderService"

    const-string v1, "e818387c1789928456b1980ac89af49f"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepProviderService"

    const-string v1, "ba2a385f11098e8b462f7895e690e9a2"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "78d086f6a654d36907e44c971af9217c"

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureProviderService"

    const-string v1, "9d78fd0ac9691da7acbac14457986ae7"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e5d8fd8cce9d97c3d491a8555d171301"

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5c449c76c30e46374caa1881638d350b"

    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitnessProviderService"

    const-string v1, "203b149a40a21721f4d375f5416a1302"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.waterreminder/com.heytap.wearable.waterreminder.complication.DrinkWaterProviderService"

    const-string v1, "37fbbc949a84383ad3e1fda87f6bda28"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BooHeeProviderService"

    const-string v1, "07791e1618f1b23634c7ad210133e5b6"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MeiYouProviderService"

    const-string v1, "71edb02175fae2bdc4d0348a9c2960d3"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitProviderService"

    const-string v1, "f7550ad56f103e0ac328cfbd82f7246b"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.UmetripProviderService"

    const-string v1, "69f0af931ab9a1209866f1a57872299b"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TingshuProviderService"

    const-string v1, "286857c3848c773c25a70c981ca8224d"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ExpressProviderService"

    const-string v1, "5aceea78266ecd9ca3224139cdbce8c4"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CompassProviderService"

    const-string v1, "5f0800548006cdd2e7e7659785417784"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalculatorProviderService"

    const-string v1, "a6baeebe4f0240f622f90805ebd04591"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlashLightProviderService"

    const-string v1, "0dd779174665ace1e995cfcce9c90762"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TomatoClockProviderService"

    const-string v1, "aee211e8f09517a2e3b93d8ae9153cbb"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.TVAssistantProviderService"

    const-string v1, "63de7dcf0c13af64e2e66fa8446db75c"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlightProviderService"

    const-string v1, "6b673c299dc84005c74c0704a896bbb9"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MusicProviderService"

    const-string v1, "1940217dfcc5c5af2c17e1ac254704ae"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryNewProviderService"

    const-string v1, "84b16e5aacb5bc4e8dc412e9c2133560"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c55e672512bc354e378c93869b0e4389"

    invoke-interface {v3, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "8ea81818a932183836e8424010554e75"

    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3ba6056b2b9e2c5a8dd9d982cdcefd75"

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "2a5a99b51243d65d10683098234ca18b"

    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ca25c80474930694bcc36176df5b51e1"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexNewProviderService"

    const-string v1, "ff91ddd24fd354281cacbcf2204d0b53"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WeatherProviderV3Service"

    const-string v1, "0921473dcb7049b1794c0185c09e95e3"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunriseProviderV3Service"

    const-string v1, "c3217c8fd973c84cd35e9834c6d54ee9"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunsetProviderV3Service"

    const-string v1, "7b89caaebfe95304605ab78a40158bb8"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirPressureProviderV3Service"

    const-string v1, "c14818d7c297de9631ca89f5f2fe5590"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "14516ef561a7b1623661558b66db4997"

    move-object/from16 v1, v17

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "db9ddb637cc36c79b3a8a9cd2644edac"

    move-object/from16 v1, v18

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f50fc612ef7d4a584e2b280dfacac916"

    move-object/from16 v1, v19

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.HumidityProviderV3Service"

    const-string v1, "bef1f982e57b221431963b5470318f38"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.RainProbabilityProviderV3Service"

    const-string v1, "c680ea69e6cb409f844d941d98b56a40"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f0339b1ab63dbd25939d31f8bdeaba83"

    move-object/from16 v1, v20

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.GoldenHourProviderV3Service"

    const-string v1, "b2f948f553ff690c28c405cdb3c3c658"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindSpeedProviderV3Service"

    const-string v1, "dde5e1759a04707932e5b3e547ab0945"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.MoonPhaseProviderV3Service"

    const-string v1, "569d3dcba22048ffe0b7e2aee27505f3"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.TemperatureProviderV3Service"

    const-string v1, "72a84500b5dc942ac6e5334da6e7fcda"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.ObwProviderV3Service"

    const-string v1, "4009f874312cc87d7765ca9c76e591b8"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.DfwProviderV3Service"

    const-string v1, "af52fbae746925401bde3df50e33d26e"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.LifeIndexProviderV3Service"

    const-string v1, "8fc0c82ac047a5a78bc2a772db1a9b5b"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirQualityProviderV3Service"

    const-string v1, "9ed75a577feab0480a8417145ebf6c9e"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindProviderV3Service"

    const-string v1, "319e12e383882c119b7bc514a61884a3"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindForceProviderV3Service"

    const-string v1, "af125b9dac01eaded9241dc0045f9839"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayThirdProviderService"

    const-string v1, "497e0f874a5ac13ca6bf93aa7c2585f8"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BooHeeThirdProviderService"

    const-string v1, "bb651217481ddd339482c9640173b45c"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.MeiYouThirdProviderService"

    const-string v1, "0e1e5f8225532aa29c3bf029f8990967"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitThirdProviderService"

    const-string v1, "ae65f6a9ec8c97223989a56410a6047b"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatMapProviderService"

    const-string v1, "46b2583527be15cf531b28dbd63e0f40"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatAdultProviderService"

    const-string v1, "9f96f74d23bb98b7085171f05e52a14d"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WeChatAdultPayProviderService"

    const-string v1, "49a6e1c3ca63b81abef9c310357ce05c"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.UmetripProviderService"

    const-string v1, "69f0af931ab9a1209866f1a57872299b"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BaiduMapProviderService"

    const-string v1, "eb1dbd870f7883a3d4323d4dd35eaf42"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CloudMusicProviderService"

    const-string v1, "7fb3f845c4d2c3618564c6f8695b77fa"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.KeepProviderService"

    const-string v1, "6db9cad98d02ed99d5f826dd00c9d524"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.XiMaLaYaMapProviderService"

    const-string v1, "b5624509374f249c01761a051bc5b975"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.GudongProviderService"

    const-string v1, "f234c8ff96c221e53a30b4e6ded8a020"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.YuePaoQuanMapProviderService"

    const-string v1, "a198c2a493ac7bd1faa18d10e44c7e74"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.QQMusicProviderService"

    const-string v1, "f0cbb2681f9969c66a96834c0edbdad6"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.dialer/com.heytap.wearable.dialer.widgets.ContactsProviderService"

    const-string v1, "58e50884bdaef4b553bfa5726750e46d"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.calendar/com.heytap.wearable.complication.service.TimeLineW3ProviderService"

    const-string v1, "4b417d6a6d329d3a0af97fad8093b1ff"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecorderW3ProviderService"

    const-string v1, "6208d17aa6965d71f4edd94f1c6c5cde"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ClockAnalogProviderService"

    const-string v1, "80af2aefb28146d2d902ed15b53ddd31"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.ClockDigitalProviderService"

    const-string v1, "bbe86bc3c13e7a3722c870751bf2410c"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarThirdProviderService"

    const-string v1, "5dc322e83f990f4d3431bbd445687b9d"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SmsProviderService"

    const-string v1, "410005884f58a0445739b3ec20f39b28"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "54fb44783ac1b93efd33ee82d55b3565"

    move-object/from16 v1, v21

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalculatorProviderService"

    const-string v1, "a6baeebe4f0240f622f90805ebd04591"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FlashLightProviderService"

    const-string v1, "0dd779174665ace1e995cfcce9c90762"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarThirdProviderService"

    const-string v1, "cd36b02234901a14538e067b94e645bf"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.WalletProviderService"

    const-string v1, "a6f7c34a16dbc70f230f90b277f6feed"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoThirdProviderService"

    const-string v1, "05d64a47cbdce721e0c4568685361634"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneThirdProviderService"

    const-string v1, "db9445311cc66fb150f9ead4c0f55a48"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c6e2225c188f221c980f97241c45a07c"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "93197130bf8ea034ad8c2cabe5f8fa22"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportThirdProviderService"

    const-string v1, "1a967718aed5aa34bc578392b601e925"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheThirdProviderService"

    const-string v1, "0ca875ed2a938e2acd98df17b191319a"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.FitnessThirdProviderService"

    const-string v1, "787aac945916408cac4007624a067737"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CapabilityAssessmentThirdProviderService"

    const-string v1, "61509ff629a79041d19e1f532c5c1088"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "a6cad42a51fe9426c81e8f445d48cabd"

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProvider;->ACTIONS:Ljava/util/Map;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoProviderService"

    const-string v3, "com.heytap.wearable.breeno.intent.action.SPEECH"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneProviderService"

    const-string v3, "heytap.wearable.intent.action.dialer.TELECOM_ACTIVITY"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarProviderService"

    const-string v3, "heytap.wearable.intent.action.calendar.MAIN"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayProviderService"

    move-object/from16 v16, v2

    const-string v2, "com.google.android.wearable.localedition.action.PAY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportProviderService"

    const-string v2, "com.heytap.wearable.sports/.MainActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheProviderService"

    const-string v2, "heytap.wearable.intent.action.health.START_BREATHE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryProviderService"

    const-string v2, "android.settings.BATTERY_SETTING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WeatherProviderService"

    const-string v2, "heytap.wearable.intent.action.weather.ACTION_WEATHER_DETAIL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunriseProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.SunsetProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.ObwProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.DfwProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25ProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirQualityIndexNewProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.PM25NewProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.RainProbabilityProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.AirPressureProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.GoldenHourProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.HumidityProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.WindDirectionProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.LifeIndexProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarProviderService"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.calendar/com.heytap.wearable.calendar.complication.TimeLineProviderService"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.soundrecorder/com.heytap.wearable.soundrecorder.widget.RecordWidgetService"

    const-string v8, "heytap.wearable.intent.action.soundrecorder.MAIN"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.complication.WORLD_CLOCK_SELECTED"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La/a;->a()I

    move-result v1

    const-string v7, "heytap.wearable.intent.action.health.START_DAILY"

    const/4 v8, 0x3

    if-lt v1, v8, :cond_2

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.HeartRateProviderService"

    const-string v8, "heytap.wearable.intent.action.health.START_HEARTRATE"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.android.countdown.complication.CountdownProviderService"

    const-string v6, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.ui.CountdownActivity"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.StopWatchActivity"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.intent.action.complication.SHOW_ALARM"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.HeartRateProviderService"

    const-string v4, "heytap.wearable.intent.action.health.START_HEARTRATE"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.communication.complication.DailyActivityProviderService"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.complication.CountdownProviderService"

    const-string v4, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.ui.CountdownActivity"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.complication.StopWatchProviderService"

    const-string v4, "com.heytap.wearable.clock/com.heytap.wearable.clock.stopwatch.StopWatchActivity"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.alarmclock.watchface.AlarmProviderService"

    const-string v4, "heytap.intent.action.complication.SHOW_ALARM"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.CaloriesProviderService"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.StepProviderService"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.health.START_SLEEP"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.health/com.heytap.wearable.health.complication.PressureProviderService"

    const-string v4, "heytap.wearable.intent.action.health.pressure.START_PRESSURE"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.health.START_OXYGEN"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.health.START_FITCOACH"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BatteryNewProviderService"

    const-string v4, "android.settings.BATTERY_SETTING"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.health.pressure.START_PRESSURE"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "heytap.wearable.intent.action.health.START_HEARTRATE"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.clock/com.heytap.wearable.clock.countdown.ui.CountdownActivity"

    move-object/from16 v4, v16

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.UVIndexNewProviderService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WeatherProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunriseProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.SunsetProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirPressureProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.HumidityProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.RainProbabilityProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.GoldenHourProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindSpeedProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.TemperatureProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.ObwProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.DfwProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.LifeIndexProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.AirQualityProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.weather/com.heytap.wearable.weather.complication.v3.WindForceProviderV3Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.AlipayThirdProviderService"

    const-string v2, "com.google.android.wearable.localedition.action.PAY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.LunarThirdProviderService"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.settings.BATTERY_SETTING"

    move-object/from16 v2, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.CalendarThirdProviderService"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreenoThirdProviderService"

    const-string v2, "com.heytap.wearable.breeno.intent.action.SPEECH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.PhoneThirdProviderService"

    const-string v2, "heytap.wearable.intent.action.dialer.TELECOM_ACTIVITY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.SportThirdProviderService"

    const-string v2, "com.heytap.wearable.sports/.MainActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.heytap.wearable.launcher/com.heytap.wearable.launcher.watchface.complications.providers.BreatheThirdProviderService"

    const-string v2, "heytap.wearable.intent.action.health.START_BREATHE"

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

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProvider;->ACTIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProviderComponent(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProvider;->PROVIDERS:Landroid/util/SparseArray;

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
    sget-object v2, Lcom/heytap/wearable/support/watchface/complications/SystemProvider;->PROVIDERS:Landroid/util/SparseArray;

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

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/SystemProvider;->PROVIDERS_MD5:Ljava/util/Map;

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
