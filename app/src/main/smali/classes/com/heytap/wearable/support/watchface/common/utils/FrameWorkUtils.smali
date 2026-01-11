.class public Lcom/heytap/wearable/support/watchface/common/utils/FrameWorkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EFFECT_SHORT_PARTICLES:I = 0x6

.field public static final EFFECT_SYSTEM_FEEDBACK:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FrameWorkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowInDisturbMode()V
    .locals 2

    const-string v0, "FrameWorkUtils"

    const-string v1, "allowInDisturbMode"

    invoke-static {v0, v1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sys.vibrate.allowInDisturbMode"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static vibrate(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "FrameWorkUtils"

    const-string v0, "vibrate context null, return"

    invoke-static {p0, v0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x32
        0xfa
    .end array-data
.end method

.method public static vibrateByLinearMotor(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "FrameWorkUtils"

    const-string p1, "vibrateByLinearMotor context null, return"

    invoke-static {p0, p1}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "linearmotor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/linearmotorvibrator/LinearmotorVibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/linearmotorvibrator/LinearmotorVibrator;->hasLinearMotorVibrator()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Landroid/os/linearmotorvibrator/WaveformEffect$Builder;

    invoke-direct {p0}, Landroid/os/linearmotorvibrator/WaveformEffect$Builder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/linearmotorvibrator/WaveformEffect$Builder;->setEffectType(I)Landroid/os/linearmotorvibrator/WaveformEffect$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/linearmotorvibrator/WaveformEffect$Builder;->setEffectLoop(Z)Landroid/os/linearmotorvibrator/WaveformEffect$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/linearmotorvibrator/WaveformEffect$Builder;->build()Landroid/os/linearmotorvibrator/WaveformEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/linearmotorvibrator/LinearmotorVibrator;->vibrate(Landroid/os/linearmotorvibrator/WaveformEffect;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/heytap/wearable/support/watchface/common/utils/FrameWorkUtils;->vibrate(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
