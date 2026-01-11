.class public final Lo0/a$a;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lo0/a;


# direct methods
.method public constructor <init>(Lo0/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo0/a$a;->b:Lo0/a;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lo0/a$a;->b:Lo0/a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-object v1, v0

    check-cast v1, Lr0/c;

    .line 3
    invoke-virtual {v1, p1}, Lr0/c;->C(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {v0, p1}, Lm0/g;->A(Landroid/graphics/Canvas;)V

    return-void
.end method
