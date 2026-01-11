.class public Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;
.super Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
.source "SourceFile"


# instance fields
.field private mCurveLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;",
            ">;"
        }
    .end annotation
.end field

.field private mExtend:F

.field private mIndexCount:I

.field private mMinX:F

.field private mVertexCount:I


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mCurveLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mVertexCount:I

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mIndexCount:I

    iput p1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mMinX:F

    iput p2, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mExtend:F

    return-void
.end method


# virtual methods
.method public addCurveLine(Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mCurveLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->getVertexCount()I

    move-result v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mVertexCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mVertexCount:I

    invoke-virtual {p1}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->getIndexCount()I

    move-result p1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mIndexCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mIndexCount:I

    return-void
.end method

.method public create()V
    .locals 5

    invoke-static {}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->getVertexElementsNum()I

    move-result v0

    iget v1, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mVertexCount:I

    invoke-virtual {p0, v1, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateVertex(II)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mIndexCount:I

    invoke-virtual {p0, v0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->beginUpdateIndex(I)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mCurveLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;

    invoke-virtual {v3, p0, v1, v2}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->createCombined(Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;II)V

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->getVertexCount()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v3}, Lcom/heytap/wearable/support/watchface/gl/shape/CurveLine;->getIndexCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateVertex()V

    invoke-virtual {p0}, Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;->endUpdateIndex()V

    return-void
.end method

.method public getExtendX()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mExtend:F

    return v0
.end method

.method public getMinX()F
    .locals 1

    iget v0, p0, Lcom/heytap/wearable/support/watchface/gl/shape/CombinedMesh;->mMinX:F

    return v0
.end method
