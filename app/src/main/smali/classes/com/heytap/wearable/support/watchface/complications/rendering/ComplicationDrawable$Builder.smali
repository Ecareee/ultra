.class public final Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundEnabled:Z

.field private mChangeProviderEnabled:Z

.field private mChangeStyleEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mFixedColor:I

.field private mIsStub:Z

.field private mMode:I

.field private mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;
    .locals 0

    iget-object p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mChangeStyleEnabled:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)I
    .locals 0

    iget p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mFixedColor:I

    return p0
.end method

.method public static synthetic access$400(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mChangeProviderEnabled:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mBackgroundEnabled:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mIsStub:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;)I
    .locals 0

    iget p0, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mMode:I

    return p0
.end method


# virtual methods
.method public build()Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;
    .locals 2

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable;-><init>(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$1;)V

    return-object v0
.end method

.method public setBackgroundEnabled(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mBackgroundEnabled:Z

    return-object p0
.end method

.method public setChangeProviderEnabled(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mChangeProviderEnabled:Z

    return-object p0
.end method

.method public setChangeStyleEnabled(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mChangeStyleEnabled:Z

    return-object p0
.end method

.method public setFixedColor(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mFixedColor:I

    return-object p0
.end method

.method public setIsStub(Z)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mIsStub:Z

    return-object p0
.end method

.method public setMode(I)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    .locals 0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mMode:I

    return-object p0
.end method

.method public setRender(Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;)Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;
    .locals 0

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationDrawable$Builder;->mRender:Lcom/heytap/wearable/support/watchface/complications/rendering/ComplicationRender;

    return-object p0
.end method
