.class public final Lo/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/g;

.field public static final b:Lj/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Lo/f;

    invoke-direct {v0}, Lo/f;-><init>()V

    :goto_0
    sput-object v0, Lo/b;->a:Lo/g;

    goto :goto_2

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Lo/e;

    invoke-direct {v0}, Lo/e;-><init>()V

    goto :goto_0

    .line 1
    :cond_1
    sget-object v0, Lo/d;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Lo/d;

    invoke-direct {v0}, Lo/d;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lo/c;

    invoke-direct {v0}, Lo/c;-><init>()V

    goto :goto_0

    :goto_2
    new-instance v0, Lj/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lj/e;-><init>(I)V

    sput-object v0, Lo/b;->b:Lj/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Ln/a$a;Landroid/content/res/Resources;IILn/b;)Landroid/graphics/Typeface;
    .locals 6

    instance-of v0, p1, Ln/a$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Ln/a$d;

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1
    iget v3, p1, Ln/a$d;->c:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v2, -0x1

    .line 2
    iget v3, p1, Ln/a$d;->b:I

    .line 3
    iget-object p1, p1, Ln/a$d;->a:Lr/a;

    .line 4
    sget-object v4, Lr/e;->a:Lj/e;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v5, p1, Lr/a;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lr/e;->a:Lj/e;

    invoke-virtual {v5, v4}, Lj/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_1

    invoke-virtual {p5, v5}, Ln/b;->c(Landroid/graphics/Typeface;)V

    move-object v1, v5

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_3

    if-ne v3, v2, :cond_3

    invoke-static {p0, p1, p4}, Lr/e;->b(Landroid/content/Context;Lr/a;I)Lr/e$d;

    move-result-object p0

    iget p1, p0, Lr/e$d;->b:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lr/e$d;->a:Landroid/graphics/Typeface;

    invoke-virtual {p5, p1, v1}, Ln/b;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p5, p1, v1}, Ln/b;->a(ILandroid/os/Handler;)V

    :goto_1
    iget-object v1, p0, Lr/e$d;->a:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_3
    new-instance v2, Lr/b;

    invoke-direct {v2, p0, p1, p4, v4}, Lr/b;-><init>(Landroid/content/Context;Lr/a;ILjava/lang/String;)V

    if-eqz v0, :cond_4

    :try_start_0
    sget-object p0, Lr/e;->b:Lr/f;

    invoke-virtual {p0, v2, v3}, Lr/f;->b(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/e$d;

    iget-object v1, p0, Lr/e$d;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    new-instance p0, Lr/c;

    invoke-direct {p0, p5}, Lr/c;-><init>(Ln/b;)V

    sget-object v0, Lr/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object p1, Lr/e;->d:Lj/g;

    .line 8
    invoke-virtual {p1, v4, v1}, Lj/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 9
    check-cast p5, Ljava/util/ArrayList;

    if-eqz p5, :cond_5

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_3

    :cond_5
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4, p5}, Lj/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lr/e;->b:Lr/f;

    new-instance p1, Lr/d;

    invoke-direct {p1, v4}, Lr/d;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lr/g;

    invoke-direct {v0, v2, p5, p1}, Lr/g;-><init>(Ljava/util/concurrent/Callable;Landroid/os/Handler;Lr/f$c;)V

    invoke-virtual {p0, v0}, Lr/f;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 12
    :cond_6
    sget-object v0, Lo/b;->a:Lo/g;

    check-cast p1, Ln/a$b;

    invoke-virtual {v0, p0, p1, p2, p4}, Lo/g;->a(Landroid/content/Context;Ln/a$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p5, p0, v1}, Ln/b;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_7
    const/4 p1, -0x3

    invoke-virtual {p5, p1, v1}, Ln/b;->a(ILandroid/os/Handler;)V

    :goto_2
    move-object v1, p0

    :catch_0
    :goto_3
    if-eqz v1, :cond_8

    sget-object p0, Lo/b;->b:Lj/e;

    invoke-static {p2, p3, p4}, Lo/b;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lj/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v1
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, Lo/b;->a:Lo/g;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo/g;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p4}, Lo/b;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lo/b;->b:Lj/e;

    invoke-virtual {p2, p1, p0}, Lj/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
