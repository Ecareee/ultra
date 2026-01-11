.class public Landroidx/appcompat/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/x$c;,
        Landroidx/appcompat/widget/x$d;,
        Landroidx/appcompat/widget/x$e;,
        Landroidx/appcompat/widget/x$a;,
        Landroidx/appcompat/widget/x$b;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/reflect/Method;

.field public static B:Ljava/lang/reflect/Method;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/widget/ListAdapter;

.field public d:Landroidx/appcompat/widget/s;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Landroidx/appcompat/widget/x$b;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/AdapterView$OnItemClickListener;

.field public final r:Landroidx/appcompat/widget/x$e;

.field public final s:Landroidx/appcompat/widget/x$d;

.field public final t:Landroidx/appcompat/widget/x$c;

.field public final u:Landroidx/appcompat/widget/x$a;

.field public final v:Landroid/os/Handler;

.field public final w:Landroid/graphics/Rect;

.field public x:Landroid/graphics/Rect;

.field public y:Z

.field public z:Landroidx/appcompat/widget/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "ListPopupWindow"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/widget/x;->A:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setEpicenterBounds"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/x;->B:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroidx/appcompat/widget/x;->e:I

    iput v0, p0, Landroidx/appcompat/widget/x;->f:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/widget/x;->i:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/x;->m:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/appcompat/widget/x;->n:I

    new-instance v1, Landroidx/appcompat/widget/x$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/x$e;-><init>(Landroidx/appcompat/widget/x;)V

    iput-object v1, p0, Landroidx/appcompat/widget/x;->r:Landroidx/appcompat/widget/x$e;

    new-instance v1, Landroidx/appcompat/widget/x$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/x$d;-><init>(Landroidx/appcompat/widget/x;)V

    iput-object v1, p0, Landroidx/appcompat/widget/x;->s:Landroidx/appcompat/widget/x$d;

    new-instance v1, Landroidx/appcompat/widget/x$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/x$c;-><init>(Landroidx/appcompat/widget/x;)V

    iput-object v1, p0, Landroidx/appcompat/widget/x;->t:Landroidx/appcompat/widget/x$c;

    new-instance v1, Landroidx/appcompat/widget/x$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/x$a;-><init>(Landroidx/appcompat/widget/x;)V

    iput-object v1, p0, Landroidx/appcompat/widget/x;->u:Landroidx/appcompat/widget/x$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/appcompat/widget/x;->b:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/x;->v:Landroid/os/Handler;

    sget-object v1, Lb/j;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lb/j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/x;->g:I

    sget v2, Lb/j;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/x;->h:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroidx/appcompat/widget/x;->j:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/appcompat/widget/k;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;Z)Landroidx/appcompat/widget/s;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    return-object v0
.end method

.method public final f()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroid/content/Context;

    iget-boolean v2, p0, Landroidx/appcompat/widget/x;->y:Z

    xor-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/x;->d(Landroid/content/Context;Z)Landroidx/appcompat/widget/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    iget-object v2, p0, Landroidx/appcompat/widget/x;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    iget-object v2, p0, Landroidx/appcompat/widget/x;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    new-instance v2, Landroidx/appcompat/widget/w;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/w;-><init>(Landroidx/appcompat/widget/x;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    iget-object v2, p0, Landroidx/appcompat/widget/x;->t:Landroidx/appcompat/widget/x$c;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    iget-object v2, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iget-boolean v4, p0, Landroidx/appcompat/widget/x;->j:Z

    if-nez v4, :cond_2

    neg-int v3, v3

    iput v3, p0, Landroidx/appcompat/widget/x;->h:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v0, v2

    :cond_2
    :goto_1
    iget-object v3, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 2
    :goto_2
    iget-object v5, p0, Landroidx/appcompat/widget/x;->p:Landroid/view/View;

    .line 3
    iget v6, p0, Landroidx/appcompat/widget/x;->h:I

    .line 4
    iget-object v7, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v7, v5, v6, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    .line 5
    iget v5, p0, Landroidx/appcompat/widget/x;->e:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    add-int/2addr v3, v0

    goto :goto_5

    :cond_4
    iget v5, p0, Landroidx/appcompat/widget/x;->f:I

    if-eq v5, v6, :cond_6

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Landroidx/appcompat/widget/x;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v9

    sub-int/2addr v5, v10

    goto :goto_3

    :cond_6
    iget-object v5, p0, Landroidx/appcompat/widget/x;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    sub-int/2addr v5, v9

    const/high16 v8, -0x80000000

    :goto_3
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v8, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    add-int/2addr v3, v2

    invoke-virtual {v8, v5, v3}, Landroidx/appcompat/widget/s;->a(II)I

    move-result v3

    if-lez v3, :cond_7

    iget-object v5, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v8, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v0

    add-int/2addr v8, v2

    goto :goto_4

    :cond_7
    move v8, v2

    :goto_4
    add-int/2addr v3, v8

    .line 6
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    if-ne v0, v4, :cond_8

    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v2

    .line 7
    :goto_6
    iget-object v4, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    iget v5, p0, Landroidx/appcompat/widget/x;->i:I

    .line 8
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9
    iget-object v4, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 10
    iget-object v4, p0, Landroidx/appcompat/widget/x;->p:Landroid/view/View;

    .line 11
    sget-object v5, Lu/j;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_9

    return-void

    .line 13
    :cond_9
    iget v4, p0, Landroidx/appcompat/widget/x;->f:I

    if-ne v4, v7, :cond_a

    move v4, v7

    goto :goto_7

    :cond_a
    if-ne v4, v6, :cond_b

    .line 14
    iget-object v4, p0, Landroidx/appcompat/widget/x;->p:Landroid/view/View;

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    :cond_b
    :goto_7
    iget v5, p0, Landroidx/appcompat/widget/x;->e:I

    if-ne v5, v7, :cond_10

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    move v3, v7

    :goto_8
    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    iget v5, p0, Landroidx/appcompat/widget/x;->f:I

    if-ne v5, v7, :cond_d

    move v5, v7

    goto :goto_9

    :cond_d
    move v5, v2

    :goto_9
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    iget v5, p0, Landroidx/appcompat/widget/x;->f:I

    if-ne v5, v7, :cond_f

    move v2, v7

    :cond_f
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_10
    if-ne v5, v6, :cond_11

    goto :goto_a

    :cond_11
    move v3, v5

    :goto_a
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    .line 16
    iget-object v9, p0, Landroidx/appcompat/widget/x;->p:Landroid/view/View;

    .line 17
    iget v10, p0, Landroidx/appcompat/widget/x;->g:I

    iget v11, p0, Landroidx/appcompat/widget/x;->h:I

    if-gez v4, :cond_12

    move v12, v7

    goto :goto_b

    :cond_12
    move v12, v4

    :goto_b
    if-gez v3, :cond_13

    move v13, v7

    goto :goto_c

    :cond_13
    move v13, v3

    :goto_c
    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/k;->update(Landroid/view/View;IIII)V

    goto/16 :goto_10

    :cond_14
    iget v0, p0, Landroidx/appcompat/widget/x;->f:I

    if-ne v0, v7, :cond_15

    move v0, v7

    goto :goto_d

    :cond_15
    if-ne v0, v6, :cond_16

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/x;->p:Landroid/view/View;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_16
    :goto_d
    iget v4, p0, Landroidx/appcompat/widget/x;->e:I

    if-ne v4, v7, :cond_17

    move v3, v7

    goto :goto_e

    :cond_17
    if-ne v4, v6, :cond_18

    goto :goto_e

    :cond_18
    move v3, v4

    :goto_e
    iget-object v4, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/x;->m()V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    iget-object v3, p0, Landroidx/appcompat/widget/x;->s:Landroidx/appcompat/widget/x$d;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->l:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    iget-boolean v3, p0, Landroidx/appcompat/widget/x;->k:Z

    .line 20
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 21
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_1a

    sget-object v0, Landroidx/appcompat/widget/x;->B:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/appcompat/widget/x;->x:Landroid/graphics/Rect;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    const-string v2, "ListPopupWindow"

    const-string v3, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    iget-object v2, p0, Landroidx/appcompat/widget/x;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    :cond_1b
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    .line 22
    iget-object v2, p0, Landroidx/appcompat/widget/x;->p:Landroid/view/View;

    .line 23
    iget v3, p0, Landroidx/appcompat/widget/x;->g:I

    iget v4, p0, Landroidx/appcompat/widget/x;->h:I

    iget v5, p0, Landroidx/appcompat/widget/x;->m:I

    .line 24
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/appcompat/widget/k;->showAsDropDown(Landroid/view/View;III)V

    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->y:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    invoke-virtual {v0}, Landroidx/appcompat/widget/s;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 26
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/s;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 27
    :cond_1d
    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->y:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroidx/appcompat/widget/x;->v:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/x;->u:Landroidx/appcompat/widget/x$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    :goto_10
    return-void
.end method

.method public g(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/x;->o:Landroidx/appcompat/widget/x$b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/x$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/x$b;-><init>(Landroidx/appcompat/widget/x;)V

    iput-object v0, p0, Landroidx/appcompat/widget/x;->o:Landroidx/appcompat/widget/x$b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/x;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/x;->o:Landroidx/appcompat/widget/x$b;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/x;->w:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/widget/x;->f:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/x;->f:I

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/x;->y:Z

    iget-object v1, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/s;

    iget-object v0, p0, Landroidx/appcompat/widget/x;->v:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/x;->r:Landroidx/appcompat/widget/x$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final m()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    sget-object v0, Landroidx/appcompat/widget/x;->A:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/x;->z:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/x;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/x;->j:Z

    return-void
.end method
