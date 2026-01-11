.class public final Lm0/d$b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lm0/d$b;->b:Lm0/d;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    iget-object v0, v0, Lm0/d;->f:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    .line 1
    iget-boolean v1, v0, Lm0/d;->t:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lm0/d;->b(Lm0/d;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    aget v1, v0, v3

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-virtual {v0, p1}, Lm0/d;->i(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    check-cast v0, Lo0/a;

    .line 3
    invoke-virtual {v0, p1}, Lm0/g;->A(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-virtual {v0, p1}, Lm0/d;->i(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    check-cast v0, Lo0/a;

    .line 7
    invoke-virtual {v0, p1}, Lm0/g;->A(Landroid/graphics/Canvas;)V

    .line 8
    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 10
    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-static {v0}, Lm0/d;->b(Lm0/d;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    aget v1, v0, v3

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v0, p0, Lm0/d$b;->b:Lm0/d;

    invoke-virtual {v0, p1}, Lm0/d;->j(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method
