.class public final Lr0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/a$a;


# instance fields
.field public final synthetic a:Lr0/c;


# direct methods
.method public constructor <init>(Lr0/c;)V
    .locals 0

    iput-object p1, p0, Lr0/d;->a:Lr0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const-string v0, "[onAzimuthChange] mIsReliable = "

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr0/d;->a:Lr0/c;

    .line 3
    iget-boolean v1, v1, Lr0/c;->j1:Z

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", azimuth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutdoorMultifunctionWatchFaceEngine"

    invoke-static {v1, v0}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/d;->a:Lr0/c;

    .line 5
    iget-boolean v1, v0, Lr0/c;->j1:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 7
    iput p1, v0, Lr0/c;->O0:I

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3

    iget-object v0, p0, Lr0/d;->a:Lr0/c;

    .line 1
    iput-boolean p1, v0, Lr0/c;->j1:Z

    .line 2
    invoke-virtual {v0}, Lm0/d;->g()V

    iget-object v0, p0, Lr0/d;->a:Lr0/c;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lm0/d;->k(J)V

    goto :goto_0

    .line 4
    :cond_0
    sget-wide v1, Lm0/d;->F:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lm0/d;->k(J)V

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCalibrateReliable] isReliable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OutdoorMultifunctionWatchFaceEngine"

    invoke-static {v0, p1}, Lm0/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
