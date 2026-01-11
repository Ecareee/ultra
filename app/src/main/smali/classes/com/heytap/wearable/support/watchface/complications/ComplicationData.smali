.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;,
        Lcom/heytap/wearable/support/watchface/complications/ComplicationData$ProgressStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_DATA:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

.field private static final EMPTY_FIELDS:[Ljava/lang/String;

.field private static final FIELD_ANIMATION_STATE:Ljava/lang/String; = "ANIMATION_STATE"

.field private static final FIELD_BATTERY_LEVEL:Ljava/lang/String; = "BATTERY_LEVEL"

.field private static final FIELD_CALENDAR_LIST:Ljava/lang/String; = "CALENDAR_LIST"

.field private static final FIELD_CITY:Ljava/lang/String; = "CITY"

.field private static final FIELD_COLORFUL_COLOR:Ljava/lang/String; = "COLORFUL_COLOR"

.field private static final FIELD_COLORFUL_ICON:Ljava/lang/String; = "COLORFUL_ICON"

.field private static final FIELD_COLORFUL_IMAGE:Ljava/lang/String; = "COLORFUL_IMAGE"

.field private static final FIELD_COLOR_PROGRESS:Ljava/lang/String; = "COLOR_PROGRESS"

.field private static final FIELD_DAILY_ACTIVITY_CURRENT_VALUES:Ljava/lang/String; = "CURRENT_VALUES"

.field private static final FIELD_DAILY_ACTIVITY_TARGET_VALUES:Ljava/lang/String; = "TARGET_VALUES"

.field private static final FIELD_DASH_BOARD_SCALE:Ljava/lang/String; = "DASH_BOARD_SCALE"

.field private static final FIELD_END_TIME:Ljava/lang/String; = "END_TIME"

.field private static final FIELD_EXPIRED_ACTION:Ljava/lang/String; = "EXPIRED_ACTION"

.field private static final FIELD_EXTRA:Ljava/lang/String; = "EXTRA"

.field private static final FIELD_EXTRA_BUNDLE:Ljava/lang/String; = "EXTRA_BUNDLE"

.field private static final FIELD_HEART_RATE:Ljava/lang/String; = "HEART_RATE"

.field private static final FIELD_ICON:Ljava/lang/String; = "ICON"

.field private static final FIELD_IMAGE:Ljava/lang/String; = "IMAGE"

.field private static final FIELD_IS_DRAW_BG:Ljava/lang/String; = "FIELD_IS_DRAW_BG"

.field private static final FIELD_JUMP_ACTION:Ljava/lang/String; = "JUMP_ACTION"

.field private static final FIELD_MAX_VALUE:Ljava/lang/String; = "MAX_VALUE"

.field private static final FIELD_MIN_VALUE:Ljava/lang/String; = "MIN_VALUE"

.field private static final FIELD_ONLY_SHOW_ICON:Ljava/lang/String; = "FIELD_ONLY_SHOW_ICON"

.field private static final FIELD_PARCEL:Ljava/lang/String; = "PARCEL_DATA"

.field private static final FIELD_PERCENTAGE:Ljava/lang/String; = "PERCENTAGE"

.field private static final FIELD_PROGRESS:Ljava/lang/String; = "PROGRESS"

.field private static final FIELD_PROGRESS_STYLE:Ljava/lang/String; = "FIELD_PROGRESS_STYLE"

.field private static final FIELD_RANGED_BORDER_STYLE:Ljava/lang/String; = "RANGED_BORDER_STYLE"

.field private static final FIELD_SMALL_WIDGET:Ljava/lang/String; = "FIELD_SMALL_WIDGET"

.field private static final FIELD_START_TIME:Ljava/lang/String; = "START_TIME"

.field private static final FIELD_STR_MAX_VALUE:Ljava/lang/String; = "STR_MAX_VALUE"

.field private static final FIELD_STR_MIN_VALUE:Ljava/lang/String; = "STR_MIN_VALUE"

.field private static final FIELD_SUPPORT_INACTIVE_RESET:Ljava/lang/String; = "SUPPORT_INACTIVE_RESET"

.field private static final FIELD_SUPPORT_PRIVACY_MODE:Ljava/lang/String; = "SUPPORT_PRIVACY_MODE"

.field private static final FIELD_TAP_ACTION:Ljava/lang/String; = "TAP_ACTION"

.field private static final FIELD_TARGET_VALUE:Ljava/lang/String; = "TARGET_VALUE"

.field private static final FIELD_TEXT:Ljava/lang/String; = "TEXT"

.field private static final FIELD_TEXT_NUMBER:Ljava/lang/String; = "TEXT_NUMBER"

.field private static final FIELD_TIME_DURATION:Ljava/lang/String; = "TIME_DURATION"

.field private static final FIELD_TIME_ZONE:Ljava/lang/String; = "TIME_ZONE"

.field private static final FIELD_TITLE:Ljava/lang/String; = "TITLE"

.field private static final FIELD_UNCHANGED_COLORFUL:Ljava/lang/String; = "UNCHANGED_COLORFUL"

.field private static final FIELD_VALUE:Ljava/lang/String; = "VALUE"

.field private static final FIELD_WEATHER:Ljava/lang/String; = "WEATHER"

.field private static final FIELD_WHITE_ICON:Ljava/lang/String; = "FIELD_WHITE_ICON"

.field private static final FIELD_WORLD_CLOCK_TYPE:Ljava/lang/String; = "WORLD_CLOCK_TYPE"

.field public static final KEY_END_ANGLE:Ljava/lang/String; = "end_angle"

.field public static final KEY_END_COLOR:Ljava/lang/String; = "end_color"

.field public static final KEY_START_ANGLE:Ljava/lang/String; = "start_angle"

.field public static final KEY_START_COLOR:Ljava/lang/String; = "start_color"

.field public static final KEY_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field public static final KEY_TITLE_COLOR:Ljava/lang/String; = "title_color"

.field private static final OPTIONAL_FIELDS:[[Ljava/lang/String;

.field private static final REQUIRED_FIELDS:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ComplicationData"

.field public static final TAP_ACTION_PKG_PREFIX:Ljava/lang/String; = "pkg:"

.field public static final TYPE_AIR_PRESSURE:I = 0x17

.field public static final TYPE_ALARM_CLOCK_MEDIUM:I = 0x2e

.field public static final TYPE_ALARM_CLOCK_SMALL:I = 0x2f

.field public static final TYPE_ANIMATION:I = 0x9

.field public static final TYPE_BATTERY_MEDIUM:I = 0x11

.field public static final TYPE_BATTERY_SMALL:I = 0x10

.field public static final TYPE_CALORIE_HISTOGRAM:I = 0x1a

.field public static final TYPE_CLOCK_ANALOG:I = 0x24

.field public static final TYPE_CLOCK_DIGITAL:I = 0x23

.field public static final TYPE_CONTACT:I = 0x31

.field public static final TYPE_COUNT_DOWN:I = 0xe

.field public static final TYPE_DAILY_ACTIVITY:I = 0xa

.field public static final TYPE_DAILY_ACTIVITY_2:I = 0x2b

.field public static final TYPE_DAILY_ACTIVITY_CARD:I = 0xb

.field public static final TYPE_DASH_BOARD:I = 0x8

.field public static final TYPE_DATA:I = 0x15

.field public static final TYPE_DOUBLE_TEXT:I = 0x4

.field public static final TYPE_DOUBLE_TEXT_COLOR:I = 0x1e

.field public static final TYPE_EMPTY:I = 0x0

.field public static final TYPE_FAT_MANAGEMENT:I = 0x1c

.field public static final TYPE_HEART_RATE_CARD:I = 0xc

.field public static final TYPE_HR_HISTOGRAM:I = 0x16

.field public static final TYPE_ICON:I = 0x1

.field public static final TYPE_ICON_TEXT:I = 0x5

.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_IMAGE_COLOR_PROGRESS:I = 0x1d

.field public static final TYPE_IMAGE_COLOR_PROGRESS_NEW:I = 0x27

.field public static final TYPE_NEW_DOUBLE_TEXT:I = 0x28

.field public static final TYPE_NEW_ICON_TEXT:I = 0x21

.field public static final TYPE_NEW_SCHEDULE_MEDIUM:I = 0x2a

.field public static final TYPE_NEW_SCHEDULE_SMALL:I = 0x2d

.field public static final TYPE_NEW_WORLD_CLOCK_MEDIUM:I = 0x29

.field public static final TYPE_POINTER_DOUBLE_TEXT:I = 0x25

.field public static final TYPE_PRESSURE_HISTOGRAM:I = 0x1b

.field public static final TYPE_PROGRESS_ICON:I = 0x22

.field public static final TYPE_PROGRESS_TEXT:I = 0x20

.field public static final TYPE_PROGRESS_TEXT_ICON:I = 0x1f

.field public static final TYPE_PROGRESS_TEXT_ICON_NEW:I = 0x26

.field public static final TYPE_PROGRESS_TEXT_NEW:I = 0x2c

.field public static final TYPE_SCHEDULE_WATCHFACE:I = 0x14

.field public static final TYPE_SINGLE_TEXT:I = 0x3

.field public static final TYPE_SLEEP_HISTOGRAM:I = 0x18

.field public static final TYPE_STEP_HISTOGRAM:I = 0x19

.field public static final TYPE_STOP_WATCH:I = 0xd

.field public static final TYPE_TIMELINE_LARGE:I = 0x7

.field public static final TYPE_TIMELINE_MEDIUM:I = 0x13

.field public static final TYPE_WEATHER:I = 0x6

.field public static final TYPE_WIND_DIRECTION_SMALL:I = 0x30

.field public static final TYPE_WORLD_CLOCK_MEDIUM:I = 0xf

.field public static final TYPE_WORLD_CLOCK_SMALL:I = 0x12


# instance fields
.field private final mFields:Landroid/os/Bundle;

.field private final mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->EMPTY_FIELDS:[Ljava/lang/String;

    const/16 v2, 0x32

    new-array v3, v2, [[Ljava/lang/String;

    aput-object v1, v3, v0

    const-string v4, "ICON"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "IMAGE"

    const-string v7, "COLORFUL_IMAGE"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "TITLE"

    const-string v8, "COLORFUL_COLOR"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v3, v10

    const-string v9, "TEXT"

    filled-new-array {v5, v9, v8}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v3, v12

    filled-new-array {v4, v9, v8}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v3, v12

    const-string v11, "WEATHER"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v3, v12

    const-string v11, "PARCEL_DATA"

    const-string v12, "START_TIME"

    const-string v13, "END_TIME"

    filled-new-array {v11, v12, v13, v8}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v3, v15

    const-string v14, "VALUE"

    const-string v15, "DASH_BOARD_SCALE"

    filled-new-array {v14, v15, v4, v8}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    aput-object v15, v3, v16

    const-string v15, "ANIMATION_STATE"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x9

    aput-object v15, v3, v16

    const-string v15, "TARGET_VALUES"

    const-string v10, "CURRENT_VALUES"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xa

    aput-object v17, v3, v18

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xb

    aput-object v17, v3, v18

    const-string v17, "HEART_RATE"

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xc

    aput-object v17, v3, v18

    const-string v7, "TIME_DURATION"

    filled-new-array {v4, v8, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0xd

    aput-object v7, v3, v18

    const-string v7, "TIME_DURATION"

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0xe

    aput-object v7, v3, v18

    const-string v7, "WORLD_CLOCK_TYPE"

    const-string v6, "CITY"

    const-string v0, "TIME_ZONE"

    filled-new-array {v8, v7, v6, v0}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    aput-object v6, v3, v7

    const-string v6, "BATTERY_LEVEL"

    filled-new-array {v4, v8, v14, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    aput-object v6, v3, v7

    const-string v6, "BATTERY_LEVEL"

    filled-new-array {v4, v8, v14, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x11

    aput-object v6, v3, v7

    const-string v6, "WORLD_CLOCK_TYPE"

    const-string v7, "CITY"

    filled-new-array {v8, v6, v7, v0}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    aput-object v6, v3, v7

    filled-new-array {v4, v9, v8, v12, v13}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    aput-object v6, v3, v7

    const-string v6, "CALENDAR_LIST"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14

    aput-object v6, v3, v7

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15

    aput-object v6, v3, v7

    filled-new-array {v11, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    aput-object v6, v3, v7

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x17

    aput-object v6, v3, v7

    filled-new-array {v11, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    aput-object v6, v3, v7

    filled-new-array {v11, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x19

    aput-object v6, v3, v7

    filled-new-array {v11, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a

    aput-object v6, v3, v7

    filled-new-array {v11, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b

    aput-object v6, v3, v7

    filled-new-array {v11, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1c

    aput-object v6, v3, v7

    const-string v19, "ICON"

    const-string v20, "COLORFUL_ICON"

    const-string v21, "PERCENTAGE"

    const-string v22, "TEXT_NUMBER"

    const-string v23, "TITLE"

    const-string v24, "TEXT"

    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1d

    aput-object v6, v3, v7

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1e

    aput-object v6, v3, v7

    const-string v6, "PROGRESS"

    const-string v7, "RANGED_BORDER_STYLE"

    filled-new-array {v6, v4, v9, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f

    aput-object v6, v3, v7

    const-string v19, "PROGRESS"

    const-string v20, "COLORFUL_COLOR"

    const-string v21, "TEXT"

    const-string v22, "VALUE"

    const-string v23, "MIN_VALUE"

    const-string v24, "MAX_VALUE"

    const-string v25, "RANGED_BORDER_STYLE"

    filled-new-array/range {v19 .. v25}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    aput-object v6, v3, v7

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x21

    aput-object v6, v3, v7

    const-string v6, "MAX_VALUE"

    filled-new-array {v4, v8, v6, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x22

    aput-object v6, v3, v7

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x23

    aput-object v6, v3, v7

    const-string v6, "COLORFUL_ICON"

    const-string v7, "FIELD_WHITE_ICON"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x24

    aput-object v7, v3, v11

    filled-new-array {v8, v5, v9, v14}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x25

    aput-object v7, v3, v11

    const-string v7, "RANGED_BORDER_STYLE"

    filled-new-array {v4, v9, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x26

    aput-object v7, v3, v11

    const-string v7, "PERCENTAGE"

    const-string v11, "FIELD_PROGRESS_STYLE"

    filled-new-array {v6, v7, v11, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x27

    aput-object v7, v3, v11

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x28

    aput-object v7, v3, v11

    const-string v7, "TEXT_NUMBER"

    filled-new-array {v5, v7, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x29

    aput-object v0, v3, v11

    const-string v0, "EXPIRED_ACTION"

    filled-new-array {v4, v9, v0, v12, v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x2a

    aput-object v0, v3, v11

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x2b

    aput-object v0, v3, v10

    const-string v0, "PERCENTAGE"

    filled-new-array {v9, v8, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x2c

    aput-object v0, v3, v10

    filled-new-array {v5, v8, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x2d

    aput-object v0, v3, v10

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    aput-object v0, v3, v4

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    aput-object v0, v3, v4

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x30

    aput-object v0, v3, v4

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x31

    aput-object v0, v3, v4

    sput-object v3, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->REQUIRED_FIELDS:[[Ljava/lang/String;

    new-array v0, v2, [[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v19, "COLORFUL_COLOR"

    const-string v20, "PROGRESS"

    const-string v21, "RANGED_BORDER_STYLE"

    const-string v22, "TARGET_VALUE"

    const-string v23, "PERCENTAGE"

    const-string v24, "VALUE"

    const-string v25, "MIN_VALUE"

    const-string v26, "MAX_VALUE"

    const-string v27, "TAP_ACTION"

    const-string v28, "COLORFUL_ICON"

    const-string v29, "EXTRA"

    const-string v30, "EXTRA_BUNDLE"

    const-string v31, "SUPPORT_PRIVACY_MODE"

    const-string v32, "UNCHANGED_COLORFUL"

    const-string v33, "FIELD_IS_DRAW_BG"

    const-string v34, "START_TIME"

    const-string v35, "END_TIME"

    const-string v36, "TEXT_NUMBER"

    const-string v37, "TEXT"

    const-string v38, "EXPIRED_ACTION"

    filled-new-array/range {v19 .. v38}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v19, "PROGRESS"

    const-string v20, "RANGED_BORDER_STYLE"

    const-string v21, "TARGET_VALUE"

    const-string v22, "PERCENTAGE"

    const-string v23, "VALUE"

    const-string v24, "MIN_VALUE"

    const-string v25, "MAX_VALUE"

    const-string v26, "TAP_ACTION"

    const-string v27, "EXTRA"

    const-string v28, "EXTRA_BUNDLE"

    const-string v29, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v19 .. v29}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v19, "PROGRESS"

    const-string v20, "FIELD_SMALL_WIDGET"

    const-string v21, "RANGED_BORDER_STYLE"

    const-string v22, "TARGET_VALUE"

    const-string v23, "PERCENTAGE"

    const-string v24, "VALUE"

    const-string v25, "MIN_VALUE"

    const-string v26, "MAX_VALUE"

    const-string v27, "TAP_ACTION"

    const-string v28, "EXTRA"

    const-string v29, "EXTRA_BUNDLE"

    const-string v30, "TEXT_NUMBER"

    const-string v31, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v19 .. v31}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "TAP_ACTION"

    const-string v2, "EXTRA"

    const-string v3, "EXTRA_BUNDLE"

    const-string v4, "SUPPORT_PRIVACY_MODE"

    filled-new-array {v1, v2, v3, v7, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v0, v7

    const-string v19, "TAP_ACTION"

    const-string v20, "PROGRESS"

    const-string v21, "RANGED_BORDER_STYLE"

    const-string v22, "TARGET_VALUE"

    const-string v23, "PERCENTAGE"

    const-string v24, "VALUE"

    const-string v25, "MIN_VALUE"

    const-string v26, "MAX_VALUE"

    const-string v27, "COLORFUL_ICON"

    const-string v28, "EXTRA"

    const-string v29, "EXTRA_BUNDLE"

    const-string v30, "START_TIME"

    const-string v31, "END_TIME"

    const-string v32, "SUPPORT_PRIVACY_MODE"

    const-string v33, "SUPPORT_INACTIVE_RESET"

    filled-new-array/range {v19 .. v33}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v0, v7

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v0, v7

    const-string v5, "EXPIRED_ACTION"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x7

    aput-object v5, v0, v7

    filled-new-array {v1, v9, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    aput-object v5, v0, v7

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v0, v7

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xa

    aput-object v5, v0, v7

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb

    aput-object v5, v0, v7

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc

    aput-object v5, v0, v7

    filled-new-array {v1, v6, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    aput-object v5, v0, v6

    const-string v7, "PROGRESS"

    const-string v8, "RANGED_BORDER_STYLE"

    const-string v9, "TARGET_VALUE"

    const-string v10, "PERCENTAGE"

    const-string v11, "VALUE"

    const-string v12, "MIN_VALUE"

    const-string v13, "MAX_VALUE"

    const-string v14, "TAP_ACTION"

    const-string v15, "EXTRA"

    const-string v16, "EXTRA_BUNDLE"

    const-string v17, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xe

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "COLORFUL_ICON"

    const-string v9, "EXTRA"

    const-string v10, "EXTRA_BUNDLE"

    const-string v11, "SUPPORT_PRIVACY_MODE"

    const-string v12, "EXPIRED_ACTION"

    const-string v13, "SUPPORT_INACTIVE_RESET"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    aput-object v5, v0, v6

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    aput-object v5, v0, v6

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x15

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x16

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x17

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    aput-object v5, v0, v6

    const-string v19, "TAP_ACTION"

    const-string v20, "EXTRA"

    const-string v21, "SUPPORT_PRIVACY_MODE"

    const-string v22, "TAP_ACTION"

    const-string v23, "ICON"

    const-string v24, "FIELD_WHITE_ICON"

    const-string v25, "COLORFUL_ICON"

    const-string v26, "TEXT_NUMBER"

    const-string v27, "EXTRA"

    const-string v28, "EXTRA_BUNDLE"

    const-string v29, "PERCENTAGE"

    const-string v30, "STR_MIN_VALUE"

    const-string v31, "STR_MAX_VALUE"

    const-string v32, "TARGET_VALUE"

    const-string v33, "START_TIME"

    const-string v34, "END_TIME"

    const-string v35, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v19 .. v35}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x19

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1a

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1b

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "COLORFUL_COLOR"

    const-string v9, "PROGRESS"

    const-string v10, "TARGET_VALUE"

    const-string v11, "PERCENTAGE"

    const-string v12, "VALUE"

    const-string v13, "MIN_VALUE"

    const-string v14, "MAX_VALUE"

    const-string v15, "EXTRA"

    const-string v16, "EXTRA_BUNDLE"

    const-string v17, "START_TIME"

    const-string v18, "END_TIME"

    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1d

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "COLORFUL_COLOR"

    const-string v9, "COLORFUL_ICON"

    const-string v10, "TEXT_NUMBER"

    const-string v11, "EXTRA"

    const-string v12, "EXTRA_BUNDLE"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1e

    aput-object v5, v0, v6

    const-string v19, "TAP_ACTION"

    const-string v20, "FIELD_WHITE_ICON"

    const-string v21, "COLORFUL_COLOR"

    const-string v22, "PERCENTAGE"

    const-string v23, "TEXT_NUMBER"

    const-string v24, "TARGET_VALUE"

    const-string v25, "VALUE"

    const-string v26, "MIN_VALUE"

    const-string v27, "MAX_VALUE"

    const-string v28, "COLORFUL_ICON"

    const-string v29, "EXTRA"

    const-string v30, "EXTRA_BUNDLE"

    const-string v31, "START_TIME"

    const-string v32, "END_TIME"

    const-string v33, "SUPPORT_PRIVACY_MODE"

    const-string v34, "SUPPORT_INACTIVE_RESET"

    filled-new-array/range {v19 .. v34}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f

    aput-object v5, v0, v6

    const-string v19, "TAP_ACTION"

    const-string v20, "ICON"

    const-string v21, "FIELD_WHITE_ICON"

    const-string v22, "COLORFUL_ICON"

    const-string v23, "TEXT_NUMBER"

    const-string v24, "EXTRA"

    const-string v25, "EXTRA_BUNDLE"

    const-string v26, "PERCENTAGE"

    const-string v27, "STR_MIN_VALUE"

    const-string v28, "STR_MAX_VALUE"

    const-string v29, "TARGET_VALUE"

    const-string v30, "START_TIME"

    const-string v31, "END_TIME"

    const-string v32, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v19 .. v32}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    aput-object v5, v0, v6

    const-string v19, "TAP_ACTION"

    const-string v20, "FIELD_WHITE_ICON"

    const-string v21, "COLORFUL_ICON"

    const-string v22, "COLORFUL_COLOR"

    const-string v23, "TEXT_NUMBER"

    const-string v24, "EXTRA"

    const-string v25, "EXTRA_BUNDLE"

    const-string v26, "FIELD_SMALL_WIDGET"

    const-string v27, "PERCENTAGE"

    const-string v28, "TARGET_VALUE"

    const-string v29, "START_TIME"

    const-string v30, "END_TIME"

    const-string v31, "SUPPORT_INACTIVE_RESET"

    const-string v32, "SUPPORT_PRIVACY_MODE"

    const-string v33, "PROGRESS"

    filled-new-array/range {v19 .. v33}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "RANGED_BORDER_STYLE"

    const-string v9, "PERCENTAGE"

    const-string v10, "FIELD_WHITE_ICON"

    const-string v11, "COLORFUL_ICON"

    const-string v12, "EXTRA"

    const-string v13, "SUPPORT_PRIVACY_MODE"

    const-string v14, "FIELD_SMALL_WIDGET"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x22

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "COLORFUL_ICON"

    const-string v9, "EXTRA"

    const-string v10, "EXTRA_BUNDLE"

    const-string v11, "SUPPORT_PRIVACY_MODE"

    const-string v12, "EXPIRED_ACTION"

    const-string v13, "SUPPORT_INACTIVE_RESET"

    const-string v14, "TEXT"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x23

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "COLORFUL_ICON"

    const-string v9, "COLORFUL_COLOR"

    const-string v10, "EXTRA"

    const-string v11, "EXTRA_BUNDLE"

    const-string v12, "SUPPORT_PRIVACY_MODE"

    const-string v13, "EXPIRED_ACTION"

    const-string v14, "SUPPORT_INACTIVE_RESET"

    const-string v15, "TEXT"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x24

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "ICON"

    const-string v9, "COLORFUL_ICON"

    const-string v10, "FIELD_SMALL_WIDGET"

    const-string v11, "EXTRA"

    const-string v12, "EXTRA_BUNDLE"

    const-string v13, "SUPPORT_PRIVACY_MODE"

    const-string v14, "EXPIRED_ACTION"

    const-string v15, "SUPPORT_INACTIVE_RESET"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x25

    aput-object v5, v0, v6

    const-string v19, "TAP_ACTION"

    const-string v20, "FIELD_WHITE_ICON"

    const-string v21, "COLORFUL_COLOR"

    const-string v22, "PERCENTAGE"

    const-string v23, "TEXT_NUMBER"

    const-string v24, "TARGET_VALUE"

    const-string v25, "VALUE"

    const-string v26, "MIN_VALUE"

    const-string v27, "MAX_VALUE"

    const-string v28, "COLORFUL_ICON"

    const-string v29, "EXTRA"

    const-string v30, "EXTRA_BUNDLE"

    const-string v31, "START_TIME"

    const-string v32, "END_TIME"

    const-string v33, "SUPPORT_PRIVACY_MODE"

    const-string v34, "PROGRESS"

    const-string v35, "SUPPORT_INACTIVE_RESET"

    filled-new-array/range {v19 .. v35}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x26

    aput-object v5, v0, v6

    const-string v19, "TAP_ACTION"

    const-string v20, "STR_MIN_VALUE"

    const-string v21, "STR_MAX_VALUE"

    const-string v22, "ICON"

    const-string v23, "FIELD_WHITE_ICON"

    const-string v24, "COLORFUL_COLOR"

    const-string v25, "TEXT_NUMBER"

    const-string v26, "PROGRESS"

    const-string v27, "TARGET_VALUE"

    const-string v28, "PERCENTAGE"

    const-string v29, "TITLE"

    const-string v30, "VALUE"

    const-string v31, "MIN_VALUE"

    const-string v32, "MAX_VALUE"

    const-string v33, "EXTRA"

    const-string v34, "EXTRA_BUNDLE"

    const-string v35, "START_TIME"

    const-string v36, "END_TIME"

    filled-new-array/range {v19 .. v36}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x27

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "COLORFUL_COLOR"

    const-string v9, "EXTRA"

    const-string v10, "EXTRA_BUNDLE"

    const-string v11, "TEXT_NUMBER"

    const-string v12, "SUPPORT_PRIVACY_MODE"

    const-string v13, "FIELD_SMALL_WIDGET"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x28

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "FIELD_SMALL_WIDGET"

    const-string v9, "EXTRA"

    const-string v10, "EXTRA_BUNDLE"

    const-string v11, "SUPPORT_PRIVACY_MODE"

    const-string v12, "COLORFUL_COLOR"

    const-string v13, "CITY"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x29

    aput-object v5, v0, v6

    const-string v7, "TAP_ACTION"

    const-string v8, "COLORFUL_COLOR"

    const-string v9, "EXTRA"

    const-string v10, "EXTRA_BUNDLE"

    const-string v11, "SUPPORT_INACTIVE_RESET"

    const-string v12, "SUPPORT_PRIVACY_MODE"

    const-string v13, "PROGRESS"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2a

    aput-object v5, v0, v6

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2b

    aput-object v5, v0, v6

    const-string v5, "FIELD_SMALL_WIDGET"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v3, "TAP_ACTION"

    const-string v4, "EXTRA"

    const-string v5, "EXTRA_BUNDLE"

    const-string v6, "SUPPORT_PRIVACY_MODE"

    const-string v7, "START_TIME"

    const-string v8, "END_TIME"

    const-string v9, "SUPPORT_INACTIVE_RESET"

    const-string v10, "EXPIRED_ACTION"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v3, "TAP_ACTION"

    const-string v4, "FIELD_ONLY_SHOW_ICON"

    const-string v5, "FIELD_WHITE_ICON"

    const-string v6, "COLORFUL_ICON"

    const-string v7, "COLORFUL_COLOR"

    const-string v8, "TEXT_NUMBER"

    const-string v9, "EXTRA"

    const-string v10, "EXTRA_BUNDLE"

    const-string v11, "PERCENTAGE"

    const-string v12, "TARGET_VALUE"

    const-string v13, "START_TIME"

    const-string v14, "END_TIME"

    const-string v15, "SUPPORT_INACTIVE_RESET"

    const-string v16, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v3, "TAP_ACTION"

    const-string v4, "FIELD_ONLY_SHOW_ICON"

    const-string v5, "FIELD_WHITE_ICON"

    const-string v6, "COLORFUL_ICON"

    const-string v7, "COLORFUL_COLOR"

    const-string v8, "TEXT_NUMBER"

    const-string v9, "EXTRA"

    const-string v10, "EXTRA_BUNDLE"

    const-string v11, "PERCENTAGE"

    const-string v12, "TARGET_VALUE"

    const-string v13, "START_TIME"

    const-string v14, "END_TIME"

    const-string v15, "SUPPORT_INACTIVE_RESET"

    const-string v16, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v3, "PROGRESS"

    const-string v4, "FIELD_SMALL_WIDGET"

    const-string v5, "RANGED_BORDER_STYLE"

    const-string v6, "TARGET_VALUE"

    const-string v7, "PERCENTAGE"

    const-string v8, "VALUE"

    const-string v9, "MIN_VALUE"

    const-string v10, "MAX_VALUE"

    const-string v11, "TAP_ACTION"

    const-string v12, "EXTRA"

    const-string v13, "EXTRA_BUNDLE"

    const-string v14, "TEXT_NUMBER"

    const-string v15, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v3, "TITLE"

    const-string v4, "COLORFUL_COLOR"

    const-string v5, "FIELD_SMALL_WIDGET"

    const-string v6, "TAP_ACTION"

    const-string v7, "EXTRA"

    const-string v8, "EXTRA_BUNDLE"

    const-string v9, "TEXT_NUMBER"

    const-string v10, "SUPPORT_INACTIVE_RESET"

    const-string v11, "SUPPORT_PRIVACY_MODE"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->OPTIONAL_FIELDS:[[Ljava/lang/String;

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->build()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    move-result-object v0

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->EMPTY_DATA:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->access$000(Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;->access$100(Lcom/heytap/wearable/support/watchface/complications/ComplicationData$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic access$300()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->REQUIRED_FIELDS:[[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeThrowingException(Ljava/lang/String;I)V

    return-void
.end method

.method private static checkFieldValidForTypeThrowingException(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isFieldValidForType(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can not be recognized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isTypeSupported(I)Z

    move-result v0

    const-string v1, "ComplicationData"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can not be recognized"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isFieldValidForType(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static emptyData()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->EMPTY_DATA:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    return-object v0
.end method

.method private getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "ComplicationData"

    const-string v0, "Could not unparcel ComplicationData. Provider apps must exclude wearable support complication classes from proguard."

    invoke-static {p1, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static isFieldValidForType(Ljava/lang/String;I)Z
    .locals 6

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->REQUIRED_FIELDS:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->OPTIONAL_FIELDS:[[Ljava/lang/String;

    aget-object p1, v0, p1

    array-length v0, p1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private isSetTimeRange()Z
    .locals 4

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTypeSupported(I)Z
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->REQUIRED_FIELDS:[[Ljava/lang/String;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    iget v3, p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAnimationState()Z
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "ANIMATION_STATE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBatteryLevel()I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "BATTERY_LEVEL"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBorderStyle()I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "RANGED_BORDER_STYLE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCalendarData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/complications/rendering/CalendarComplicationData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "CALENDAR_LIST"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "CITY"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public getColorfulModeColor()I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "COLORFUL_COLOR"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColorfulModeIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "COLORFUL_ICON"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getColorfulModeImage()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "COLORFUL_IMAGE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getDailyActivityCurrentValues()[I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "CURRENT_VALUES"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDailyActivityTargetValues()[I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TARGET_VALUES"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDashBoardScale()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "DASH_BOARD_SCALE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TIME_DURATION"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "END_TIME"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpiredAction()Landroid/app/PendingIntent;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "EXPIRED_ACTION"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "EXTRA"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtraBundle()Landroid/os/Bundle;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "EXTRA_BUNDLE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeartRateComplicationData()Lcom/heytap/wearable/support/watchface/complications/MixHRData;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "HEART_RATE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/MixHRData;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "ICON"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "IMAGE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getJumpAction()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "JUMP_ACTION"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public getMaxValue()F
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "MAX_VALUE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getMinValue()F
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "MIN_VALUE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getParcelData()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "PARCEL_DATA"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getPercentage()F
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "PERCENTAGE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getProgressStyle()I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "FIELD_PROGRESS_STYLE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "START_TIME"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStrMaxValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "STR_MAX_VALUE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrMinValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "STR_MIN_VALUE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTapAction()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TAP_ACTION"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetValue()I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TARGET_VALUE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getText()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TEXT"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public getTimeZone()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TIME_ZONE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public getTitle()Lcom/heytap/wearable/support/watchface/complications/ComplicationText;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TITLE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getParcelableField(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationText;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    return v0
.end method

.method public getValue()F
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "VALUE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getWeatherData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/complications/rendering/WeatherComplicationData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "WEATHER"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "FIELD_WHITE_ICON"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getWorldClockType()I
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "WORLD_CLOCK_TYPE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActive(J)Z
    .locals 4

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->isSetTimeRange()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getStartTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getEndTime()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isDrawBg()Z
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "FIELD_IS_DRAW_BG"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNumberText()Z
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "TEXT_NUMBER"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOnlyShowIcon()Z
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "FIELD_ONLY_SHOW_ICON"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRangedProgressEnable()Z
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "PROGRESS"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmallWidget()Z
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "FIELD_SMALL_WIDGET"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportInActiveReset()Z
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "SUPPORT_INACTIVE_RESET"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSupportPrivacyMode()Z
    .locals 3

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "SUPPORT_PRIVACY_MODE"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUnChangedColorful()Z
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    const-string v1, "UNCHANGED_COLORFUL"

    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->checkFieldValidForTypeWithoutThrowingException(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ComplicationData{mType="

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->mFields:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
