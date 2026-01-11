.class public final Lm0/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lm0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0/i;

    invoke-direct {v0}, Lm0/i;-><init>()V

    sput-object v0, Lm0/i$b;->a:Lm0/i;

    return-void
.end method
