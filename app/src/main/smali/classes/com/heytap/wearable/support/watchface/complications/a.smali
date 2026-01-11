.class public final synthetic Lcom/heytap/wearable/support/watchface/complications/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;II)V
    .locals 0

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/a;->a:I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/a;->b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/a;->b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/a;->c:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->c(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/a;->b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/a;->c:I

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->d(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
