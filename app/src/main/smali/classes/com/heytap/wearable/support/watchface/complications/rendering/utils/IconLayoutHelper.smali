.class public Lcom/heytap/wearable/support/watchface/complications/rendering/utils/IconLayoutHelper;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->getBounds(Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutUtils;->getCentralSquare(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
