.class public final Lr0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr0/c;


# direct methods
.method public constructor <init>(Lr0/c;)V
    .locals 0

    iput-object p1, p0, Lr0/c$a;->a:Lr0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object p1, p0, Lr0/c$a;->a:Lr0/c;

    .line 1
    iget-boolean v0, p1, Lr0/c;->i1:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Lr0/c;->M0:Lr0/a;

    .line 3
    iget-boolean v0, p1, Lr0/a;->f:Z

    if-nez v0, :cond_0

    const-string v0, "Compass"

    const-string v1, "[startListener]"

    .line 4
    invoke-static {v0, v1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lr0/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p1, Lr0/a;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p1, Lr0/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p1, Lr0/a;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v2, p1, Lr0/a;->f:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
