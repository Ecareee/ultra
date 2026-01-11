.class public abstract Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$TargetValue;,
        Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$RangedBorderStyle;
    }
.end annotation


# static fields
.field private static final PROGRESS_DASHED_START_ANGLE:F = -90.0f

.field private static final PROGRESS_DOT_START_ANGLE:F = -75.0f


# instance fields
.field public mBorderStyle:I
    .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$RangedBorderStyle;
    .end annotation
.end field

.field public mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

.field public mContext:Landroid/content/Context;

.field public mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V
    .locals 0
    .param p3    # I
        .annotation build Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender$RangedBorderStyle;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mBorderStyle:I

    return-void
.end method

.method public static createRangedBorderRenderNeeded(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;
    .locals 8

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->equalsBorderStyle(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedSolidBorderRender;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedSolidBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedSolidFullBorderRender;

    invoke-direct {v0, p0, p2, v3}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedSolidFullBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;I)V

    return-object v0

    :cond_3
    new-instance v7, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;

    const/4 v3, 0x2

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dot_border_background:I

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dot_border:I

    const/high16 v6, -0x3d6a0000    # -75.0f

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;IIIF)V

    return-object v7

    :cond_4
    new-instance v7, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;

    const/4 v3, 0x1

    sget v4, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border_background6:I

    sget v5, Lcom/heytap/wearable/support/watchface/complications/R$drawable;->ic_complication_ranged_dashed_border6:I

    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedPathBorderRender;-><init>(Landroid/content/Context;Lcom/heytap/wearable/support/watchface/complications/ComplicationData;IIIF)V

    return-object v7
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Z)V
.end method

.method public equalsBorderStyle(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)Z
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mBorderStyle:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationData;->getBorderStyle()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract setBounds(Landroid/graphics/Rect;)V
.end method

.method public setComplicationData(Lcom/heytap/wearable/support/watchface/complications/ComplicationData;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mComplicationData:Lcom/heytap/wearable/support/watchface/complications/ComplicationData;

    :cond_0
    return-void
.end method

.method public setStyle(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/RangedBorderRender;->mCurStyle:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationStyle;

    :cond_0
    return-void
.end method
