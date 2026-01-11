.class public final Lv/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lv/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lv/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lv/d$c;

    const-class v1, Lv/d$b;

    new-instance v2, Lv/b$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 2
    new-instance v2, Lv/b$a;

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 4
    new-instance v2, Lv/b$a;

    const/4 v4, 0x4

    .line 5
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 6
    new-instance v2, Lv/b$a;

    const/16 v4, 0x8

    .line 7
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 8
    new-instance v2, Lv/b$a;

    const/16 v4, 0x10

    .line 9
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 10
    new-instance v2, Lv/b$a;

    const/16 v4, 0x20

    .line 11
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 12
    new-instance v2, Lv/b$a;

    const/16 v4, 0x40

    .line 13
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 14
    new-instance v2, Lv/b$a;

    const/16 v4, 0x80

    .line 15
    invoke-direct {v2, v3, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 16
    new-instance v2, Lv/b$a;

    const/16 v4, 0x100

    .line 17
    invoke-direct {v2, v3, v4, v1}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 18
    new-instance v2, Lv/b$a;

    const/16 v4, 0x200

    .line 19
    invoke-direct {v2, v3, v4, v1}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 20
    new-instance v1, Lv/b$a;

    const/16 v2, 0x400

    .line 21
    invoke-direct {v1, v3, v2, v0}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 22
    new-instance v1, Lv/b$a;

    const/16 v2, 0x800

    .line 23
    invoke-direct {v1, v3, v2, v0}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 24
    new-instance v0, Lv/b$a;

    const/16 v1, 0x1000

    .line 25
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 26
    new-instance v0, Lv/b$a;

    const/16 v1, 0x2000

    .line 27
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 28
    new-instance v0, Lv/b$a;

    const/16 v1, 0x4000

    .line 29
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 30
    new-instance v0, Lv/b$a;

    const v1, 0x8000

    .line 31
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 32
    new-instance v0, Lv/b$a;

    const/high16 v1, 0x10000

    .line 33
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 34
    new-instance v0, Lv/b$a;

    const-class v1, Lv/d$g;

    const/high16 v2, 0x20000

    .line 35
    invoke-direct {v0, v3, v2, v1}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 36
    new-instance v0, Lv/b$a;

    const/high16 v1, 0x40000

    .line 37
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 38
    new-instance v0, Lv/b$a;

    const/high16 v1, 0x80000

    .line 39
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 40
    new-instance v0, Lv/b$a;

    const/high16 v1, 0x100000

    .line 41
    invoke-direct {v0, v3, v1, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 42
    new-instance v0, Lv/b$a;

    const-class v1, Lv/d$h;

    const/high16 v2, 0x200000

    .line 43
    invoke-direct {v0, v3, v2, v1}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    .line 44
    new-instance v0, Lv/b$a;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x1020036

    invoke-direct {v0, v2, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x1020037

    const-class v5, Lv/d$e;

    invoke-direct {v0, v2, v4, v5}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x1020038

    invoke-direct {v0, v2, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x1020039

    invoke-direct {v0, v2, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x102003a

    invoke-direct {v0, v2, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x102003b

    invoke-direct {v0, v2, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x102003c

    invoke-direct {v0, v2, v4, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x102003d

    const-class v5, Lv/d$f;

    invoke-direct {v0, v2, v4, v5}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const v4, 0x1020042

    const-class v5, Lv/d$d;

    invoke-direct {v0, v2, v4, v5}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const v5, 0x1020044

    invoke-direct {v0, v4, v5, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lv/b$a;

    if-lt v1, v2, :cond_2

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    const v2, 0x1020045

    invoke-direct {v0, v1, v2, v3}, Lv/b$a;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/CharSequence;",
            "Lv/d;",
            "Ljava/lang/Class<",
            "+",
            "Lv/d$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/b$a;->c:Lv/d;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Lv/b$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lv/b$a;->b:Ljava/lang/Class;

    return-void
.end method
