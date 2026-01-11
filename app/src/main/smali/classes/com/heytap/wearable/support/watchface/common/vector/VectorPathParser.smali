.class Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;,
        Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final COORDINATE_LENGTH_1:I = 0x1

.field private static final COORDINATE_LENGTH_2:I = 0x2

.field private static final COORDINATE_LENGTH_4:I = 0x4

.field private static final COORDINATE_LENGTH_6:I = 0x6

.field private static final COORDINATE_LENGTH_7:I = 0x7

.field private static final TAG:Ljava/lang/String; = "VectorPathParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000([FI)[F
    .locals 0

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->copyOfRange([FI)[F

    move-result-object p0

    return-object p0
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    new-instance v0, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canMorph([Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget-char v2, v2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    aget-object v3, p1, v1

    iget-char v3, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method private static copyOfRange([FI)[F
    .locals 2

    if-ltz p1, :cond_0

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p1, p1, [F

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-static {p0, v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->nextStart(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v4}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_3
    new-array p0, v2, [Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    return-object p0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->nodesToPath([Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "[createPathFromPathData] RuntimeException:"

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VectorPathParser"

    invoke-static {v1, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static deepCopyNodes([Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;)[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;-><init>(Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x45

    if-eq v5, v6, :cond_2

    const/16 v6, 0x65

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-nez v3, :cond_0

    move v2, v0

    move v3, v7

    goto :goto_4

    :cond_0
    :goto_1
    iput-boolean v7, p2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_3

    :pswitch_1
    if-eq v1, p1, :cond_1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    move v2, v0

    goto :goto_4

    :cond_2
    move v2, v7

    goto :goto_4

    :cond_3
    :goto_3
    :pswitch_2
    move v2, v0

    move v4, v7

    :goto_4
    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    iput v1, p2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;->mEndPosition:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    new-array p0, v0, [F

    return-object p0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    new-instance v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;

    invoke-direct {v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    invoke-static {p0, v2, v3}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->extract(Ljava/lang/String;ILcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;)V

    iget v5, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;->mEndPosition:I

    if-ge v2, v5, :cond_3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    move v0, v6

    :cond_3
    iget-boolean v2, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v1, v0}, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser;->copyOfRange([FI)[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error in parsing \""

    const-string v3, "\""

    .line 1
    invoke-static {v2, p0, v3}, Landroidx/appcompat/app/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v2, v1

    if-lez v2, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v2, v1

    if-gtz v2, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public static updateNodes([Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;[Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    iget-char v3, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    iput-char v3, v2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mChar:C

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/heytap/wearable/support/watchface/common/vector/VectorPathParser$PathDataNode;->mParams:[F

    array-length v4, v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
