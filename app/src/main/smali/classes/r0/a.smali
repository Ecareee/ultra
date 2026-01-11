.class public final Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/a$a;
    }
.end annotation


# static fields
.field public static final g:[F

.field public static final h:[F

.field public static final i:[F

.field public static final j:[F

.field public static final k:[F


# instance fields
.field public a:Lr0/a$a;

.field public b:Landroid/hardware/SensorManager;

.field public c:Landroid/hardware/Sensor;

.field public d:Landroid/hardware/Sensor;

.field public e:I

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [F

    sput-object v1, Lr0/a;->g:[F

    new-array v1, v0, [F

    sput-object v1, Lr0/a;->h:[F

    const/16 v1, 0x9

    new-array v2, v1, [F

    sput-object v2, Lr0/a;->i:[F

    new-array v1, v1, [F

    sput-object v1, Lr0/a;->j:[F

    new-array v0, v0, [F

    sput-object v0, Lr0/a;->k:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    iput v0, p0, Lr0/a;->e:I

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lr0/a;->b:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lr0/a;->c:Landroid/hardware/Sensor;

    iget-object p1, p0, Lr0/a;->b:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lr0/a;->d:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/Sensor;I)V
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Lr0/a$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget p1, p0, Lr0/a;->e:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput p2, p0, Lr0/a;->e:I

    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lr0/a;->a:Lr0/a$a;

    check-cast p2, Lr0/d;

    invoke-virtual {p2, p1}, Lr0/d;->b(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lr0/a;->a:Lr0/a$a;

    const/4 p2, 0x0

    check-cast p1, Lr0/d;

    invoke-virtual {p1, p2}, Lr0/d;->b(Z)V

    const-string p1, "Compass"

    const-string p2, "reliable false"

    invoke-static {p1, p2}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "Compass"

    const-string v1, "[stopListener]"

    invoke-static {v0, v1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lr0/a;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lr0/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lr0/a;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/a;->f:Z

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    const-string v0, "onAccuracyChanged: "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Compass"

    .line 3
    invoke-static {v1, v0}, Lm0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1, p2}, Lr0/a;->a(Landroid/hardware/Sensor;I)V

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {p0, v0, v1}, Lr0/a;->a(Landroid/hardware/Sensor;I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x3cf5c280    # 0.029999971f

    const v2, 0x3f7851ec    # 0.97f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    sget-object v0, Lr0/a;->g:[F

    aget v6, v0, v4

    mul-float/2addr v6, v2

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v7, v4

    mul-float/2addr v8, v1

    add-float/2addr v8, v6

    aput v8, v0, v4

    aget v6, v0, v5

    mul-float/2addr v6, v2

    aget v8, v7, v5

    mul-float/2addr v8, v1

    add-float/2addr v8, v6

    aput v8, v0, v5

    aget v6, v0, v3

    mul-float/2addr v6, v2

    aget v7, v7, v3

    mul-float/2addr v7, v1

    add-float/2addr v7, v6

    aput v7, v0, v3

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lr0/a;->h:[F

    aget v6, v0, v4

    mul-float/2addr v6, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, p1, v4

    mul-float/2addr v7, v1

    add-float/2addr v7, v6

    aput v7, v0, v4

    aget v6, v0, v5

    mul-float/2addr v6, v2

    aget v7, p1, v5

    mul-float/2addr v7, v1

    add-float/2addr v7, v6

    aput v7, v0, v5

    aget v5, v0, v3

    mul-float/2addr v5, v2

    aget p1, p1, v3

    mul-float/2addr p1, v1

    add-float/2addr p1, v5

    aput p1, v0, v3

    :cond_1
    sget-object p1, Lr0/a;->i:[F

    sget-object v0, Lr0/a;->j:[F

    sget-object v1, Lr0/a;->g:[F

    sget-object v2, Lr0/a;->h:[F

    invoke-static {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lr0/a;->k:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget p1, v0, v4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    iget-object v0, p0, Lr0/a;->a:Lr0/a$a;

    if-eqz v0, :cond_2

    check-cast v0, Lr0/d;

    invoke-virtual {v0, p1}, Lr0/d;->a(F)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
