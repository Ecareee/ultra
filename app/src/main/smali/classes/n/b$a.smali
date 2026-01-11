.class public final Ln/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln/b;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Typeface;

.field public final synthetic b:Ln/b;


# direct methods
.method public constructor <init>(Ln/b;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Ln/b$a;->b:Ln/b;

    iput-object p2, p0, Ln/b$a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln/b$a;->b:Ln/b;

    iget-object v1, p0, Ln/b$a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ln/b;->c(Landroid/graphics/Typeface;)V

    return-void
.end method
