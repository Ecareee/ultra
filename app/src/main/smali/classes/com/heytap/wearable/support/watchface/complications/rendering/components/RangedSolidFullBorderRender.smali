.class public Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedSolidFullBorderRender;
.super Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;
.source "SourceFile"


# static fields
.field private static final STROKE_WIDTH_ID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/heytap/wearable/support/watchface/complications/R$dimen;->x2:I

    sput v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedSolidFullBorderRender;->STROKE_WIDTH_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V
    .locals 0
    .param p3    # I
        .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$RangedBorderStyle;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V

    iget-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedSolidFullBorderRender;->STROKE_WIDTH_ID:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBaseSolidRender;->setStrokeWidth(F)V

    return-void
.end method
