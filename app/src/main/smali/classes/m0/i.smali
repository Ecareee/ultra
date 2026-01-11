.class public final Lm0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/i$b;
    }
.end annotation


# instance fields
.field public a:Lm0/i$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/i$a;

    invoke-direct {v0}, Lm0/i$a;-><init>()V

    iput-object v0, p0, Lm0/i;->a:Lm0/i$a;

    return-void
.end method
