.class public final Lcom/heytap/wearable/support/watchface/runtime/Constants$WatchFace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/runtime/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatchFace"
.end annotation


# static fields
.field public static final ACTION_WALLPAPER_SERVICE:Ljava/lang/String; = "heytap.wearable.intent.action.watchface.WATCH_FACE_SERVICE"

.field public static final CATEGORY_WATCH_FACE:Ljava/lang/String; = "heytap.wearable.intent.category.WATCH_FACE"

.field public static final COVER_TYPE_APPLIST:I = 0x0

.field public static final COVER_TYPE_MORE_WATCHFACE:I = 0x3

.field public static final COVER_TYPE_NOTIFICATION:I = 0x1

.field public static final COVER_TYPE_STATUSBAR:I = 0x2

.field public static final DESTROY_REASON_DELETE_WATCHFACE:I = 0x1

.field public static final DESTROY_REASON_REPLACE_WIDGET:I = 0x0

.field public static final EVENT_TYPE_AOD:I = 0x9

.field public static final EVENT_TYPE_AOD_UPDATE:I = 0xa

.field public static final EVENT_TYPE_BROADCAST_RECEIVED:I = 0x2

.field public static final EVENT_TYPE_CALL_PHONE_ALBUM:I = 0x2

.field public static final EVENT_TYPE_CALL_PHONE_OUTFITS:I = 0x1

.field public static final EVENT_TYPE_INVALIDATE_FRONT_LAYER:I = 0x8

.field public static final EVENT_TYPE_LOCK_SCREEN_STATE_CHANGE:I = 0x5

.field public static final EVENT_TYPE_LONG_CLICK_RECT:I = 0xb

.field public static final EVENT_TYPE_MCU_STYLE_CHANGE:I = 0x7

.field public static final EVENT_TYPE_NOTIFICATION_UNREAD:I = 0xc

.field public static final EVENT_TYPE_ON_CLICK:I = 0x6

.field public static final EVENT_TYPE_ON_COVER:I = 0x4

.field public static final EVENT_TYPE_SCROLL_CHANGE:I = 0x3

.field public static final EVENT_TYPE_USER_VISIBILITY_CHANGE:I = 0x1

.field public static final LIFECYCLE_STATE_CREATE:I = 0x1

.field public static final LIFECYCLE_STATE_DEFAULT:I = 0x0

.field public static final LIFECYCLE_STATE_DESTROY:I = 0x6

.field public static final LIFECYCLE_STATE_PAUSE:I = 0x4

.field public static final LIFECYCLE_STATE_RESUME:I = 0x3

.field public static final LIFECYCLE_STATE_START:I = 0x2

.field public static final LIFECYCLE_STATE_STOP:I = 0x5

.field public static final SCREEN_STATE_LOCKED:I = 0x0

.field public static final SCREEN_STATE_UNLOCKED:I = 0x1

.field public static final WATCH_FACE_CIRCULAR_PREVIEW_RES_ID:Ljava/lang/String; = "heytap.wearable.watchface.PREVIEW_CIRCULAR"

.field public static final WATCH_FACE_MODE_INTERACT:I = 0x1

.field public static final WATCH_FACE_MODE_NORMAL:I = 0x0

.field public static final WATCH_FACE_PREVIEW_RES_ID:Ljava/lang/String; = "heytap.wearable.watchface.PREVIEW"

.field public static final WATCH_FACE_PREVIEW_RES_ID_SMALL:Ljava/lang/String; = "heytap.wearable.watchface.PREVIEW_SMALL"

.field public static final WATCH_FACE_STYLE_FILE:Ljava/lang/String; = "heytap.wearable.watchface.STYLE_FILE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
