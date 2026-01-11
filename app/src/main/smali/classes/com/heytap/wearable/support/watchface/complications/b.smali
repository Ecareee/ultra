.class public final synthetic Lcom/heytap/wearable/support/watchface/complications/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;I)V
    .locals 0

    iput p5, p0, Lcom/heytap/wearable/support/watchface/complications/b;->a:I

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/b;->b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    iput p2, p0, Lcom/heytap/wearable/support/watchface/complications/b;->c:I

    iput p3, p0, Lcom/heytap/wearable/support/watchface/complications/b;->d:I

    iput-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/b;->e:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/b;->b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/b;->c:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/b;->d:I

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/b;->e:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    invoke-static {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->e(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/b;->b:Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/b;->c:I

    iget v2, p0, Lcom/heytap/wearable/support/watchface/complications/b;->d:I

    iget-object v3, p0, Lcom/heytap/wearable/support/watchface/complications/b;->e:Lcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;

    invoke-static {v0, v1, v2, v3}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;->b(Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderService$ComplicationProvider;IILcom/heytap/wearable/support/watchface/complications/IComplicationManagerWrapper;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
