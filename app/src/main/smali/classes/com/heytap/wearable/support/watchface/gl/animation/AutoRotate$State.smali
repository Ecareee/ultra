.class final enum Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

.field public static final enum BACK:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

.field public static final enum DECELERATE:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

.field public static final enum RUNNING:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

.field public static final enum STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->RUNNING:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    new-instance v1, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const-string v3, "DECELERATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->DECELERATE:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    new-instance v3, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const-string v5, "STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->STOP:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    new-instance v5, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const-string v7, "BACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->BACK:Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->$VALUES:[Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;
    .locals 1

    const-class v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    return-object p0
.end method

.method public static values()[Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;
    .locals 1

    sget-object v0, Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->$VALUES:[Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    invoke-virtual {v0}, [Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heytap/wearable/support/watchface/gl/animation/AutoRotate$State;

    return-object v0
.end method
