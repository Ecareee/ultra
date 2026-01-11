.class public final enum Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FboBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

.field public static final enum FBO_BYTE:Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

.field public static final enum FBO_FLOAT:Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

.field public static final enum FBO_SHORT565:Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    const-string v1, "FBO_SHORT565"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;->FBO_SHORT565:Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    new-instance v1, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    const-string v3, "FBO_BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;->FBO_BYTE:Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    new-instance v3, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    const-string v5, "FBO_FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;->FBO_FLOAT:Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;->$VALUES:[Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;
    .locals 1

    const-class v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    return-object p0
.end method

.method public static values()[Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;->$VALUES:[Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    invoke-virtual {v0}, [Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heytap/wearable/support/watchface/gl/FrameBufferObject$FboBufferType;

    return-object v0
.end method
