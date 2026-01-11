.class public final Lq0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/e$a;
    }
.end annotation


# static fields
.field public static volatile c:Lq0/e;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lq0/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq0/e;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq0/e;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lq0/e;
    .locals 2

    sget-object v0, Lq0/e;->c:Lq0/e;

    if-nez v0, :cond_1

    const-class v0, Lq0/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lq0/e;->c:Lq0/e;

    if-nez v1, :cond_0

    new-instance v1, Lq0/e;

    invoke-direct {v1}, Lq0/e;-><init>()V

    sput-object v1, Lq0/e;->c:Lq0/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lq0/e;->c:Lq0/e;

    return-object v0
.end method
