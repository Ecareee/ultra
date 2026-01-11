.class public Lcom/android/calendar/CalendarFeast;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "calendar_feast"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native getLunarFeast(III)I
.end method

.method public static native getOtherSolarFeast(III)I
.end method

.method public static native getSolarFeast(III)I
.end method

.method public static native getSolarTerm(III)I
.end method
