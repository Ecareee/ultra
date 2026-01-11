.class public final Landroidx/fragment/app/i$a;
.super Landroidx/activity/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/fragment/app/i;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/i$a;->c:Landroidx/fragment/app/i;

    invoke-direct {p0}, Landroidx/activity/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/i$a;->c:Landroidx/fragment/app/i;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/i;->K()V

    iget-object v1, v0, Landroidx/fragment/app/i;->k:Landroidx/fragment/app/i$a;

    .line 2
    iget-boolean v1, v1, Landroidx/activity/b;->a:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/i;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_0
    return-void
.end method
