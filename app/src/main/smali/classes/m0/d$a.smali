.class public final Lm0/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;)V
    .locals 0

    iput-object p1, p0, Lm0/d$a;->a:Lm0/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lm0/d$a;->a:Lm0/d;

    invoke-virtual {p1}, Lm0/d;->g()V

    :cond_1
    iget-object p1, p0, Lm0/d$a;->a:Lm0/d;

    invoke-virtual {p1}, Lm0/d;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lm0/d$a;->a:Lm0/d;

    .line 1
    iget-wide v2, p1, Lm0/d;->i:J

    .line 2
    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    .line 3
    iget-object p1, p1, Lm0/d;->E:Lm0/d$a;

    const/16 v0, 0x101

    .line 4
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
