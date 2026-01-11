.class public final Lr/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lr/g;


# direct methods
.method public constructor <init>(Lr/g;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lr/g$a;->b:Lr/g;

    iput-object p2, p0, Lr/g$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr/g$a;->b:Lr/g;

    iget-object v0, v0, Lr/g;->c:Lr/f$c;

    iget-object v1, p0, Lr/g$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lr/f$c;->a(Ljava/lang/Object;)V

    return-void
.end method
