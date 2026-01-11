.class public Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getComplicationData()Lcom/heytap/wearable/support/watchface/complications/ComplicationData;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    return-object v0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getLargeImageBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getLongTextAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getLongTextBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getLongTextGravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getLongTitleAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getLongTitleBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getLongTitleGravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getRangedValueBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getShortTextAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getShortTextBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getShortTextGravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getShortTitleAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getShortTitleBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getShortTitleGravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getSmallImageBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public update(IILcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->setHeight(I)V

    invoke-virtual {p0, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/utils/LayoutHelper;->setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V

    return-void
.end method
