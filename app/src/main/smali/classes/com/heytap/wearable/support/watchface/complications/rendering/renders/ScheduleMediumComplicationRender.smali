.class public Lcom/heytap/wearable/support/watchface/complications/rendering/renders/ScheduleMediumComplicationRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleMediumComplicationRender"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;->checkUpdate()V

    invoke-super {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/renders/NewIconTextComplicationRender;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
