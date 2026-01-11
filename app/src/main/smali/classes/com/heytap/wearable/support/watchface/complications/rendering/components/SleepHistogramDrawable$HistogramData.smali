.class Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistogramData"
.end annotation


# instance fields
.field private final color:I

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;->color:I

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;)I
    .locals 0

    iget p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;->color:I

    return p0
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/components/SleepHistogramDrawable$HistogramData;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method
