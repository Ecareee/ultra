.class public final Lh0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Lh0/a$a;

.field public static final c:Lh0/b$a;

.field public static final d:Lh0/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lh0/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lh0/d$a;

    const-class v0, Ljava/sql/Date;

    new-instance v0, Lh0/d$b;

    const-class v0, Ljava/sql/Timestamp;

    sget-object v0, Lh0/a;->b:Lh0/a$a;

    sput-object v0, Lh0/d;->b:Lh0/a$a;

    sget-object v0, Lh0/b;->b:Lh0/b$a;

    sput-object v0, Lh0/d;->c:Lh0/b$a;

    sget-object v0, Lh0/c;->b:Lh0/c$a;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lh0/d;->b:Lh0/a$a;

    sput-object v0, Lh0/d;->c:Lh0/b$a;

    :goto_1
    sput-object v0, Lh0/d;->d:Lh0/c$a;

    return-void
.end method
