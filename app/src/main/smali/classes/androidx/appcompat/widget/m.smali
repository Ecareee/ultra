.class public final Landroidx/appcompat/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/m$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/h0;

.field public c:Landroidx/appcompat/widget/h0;

.field public d:Landroidx/appcompat/widget/h0;

.field public e:Landroidx/appcompat/widget/h0;

.field public f:Landroidx/appcompat/widget/h0;

.field public g:Landroidx/appcompat/widget/h0;

.field public h:Landroidx/appcompat/widget/h0;

.field public final i:Landroidx/appcompat/widget/o;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/m;->j:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/m;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    new-instance v0, Landroidx/appcompat/widget/o;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/o;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    return-void
.end method

.method public static d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/h0;
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/e;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroidx/appcompat/widget/h0;

    invoke-direct {p1}, Landroidx/appcompat/widget/h0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/widget/h0;->d:Z

    iput-object p0, p1, Landroidx/appcompat/widget/h0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/e;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/h0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m;->d:Landroidx/appcompat/widget/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m;->e:Landroidx/appcompat/widget/h0;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;)V

    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/m;->d:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/m;->e:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->f:Landroidx/appcompat/widget/h0;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/m;->g:Landroidx/appcompat/widget/h0;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/m;->f:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/m;->g:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/h0;)V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->a()V

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/appcompat/widget/o;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroidx/appcompat/widget/e;

    move-result-object v4

    sget-object v5, Lb/j;->AppCompatTextHelper:[I

    invoke-static {v3, v1, v5, v2}, Landroidx/appcompat/widget/j0;->n(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/j0;

    move-result-object v5

    sget v6, Lb/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v6

    sget v8, Lb/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v5, v8, v10}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v8

    invoke-static {v3, v4, v8}, Landroidx/appcompat/widget/m;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/h0;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/h0;

    :cond_0
    sget v8, Lb/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5, v8, v10}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v8

    invoke-static {v3, v4, v8}, Landroidx/appcompat/widget/m;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/h0;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/h0;

    :cond_1
    sget v8, Lb/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5, v8, v10}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v8

    invoke-static {v3, v4, v8}, Landroidx/appcompat/widget/m;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/h0;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/m;->d:Landroidx/appcompat/widget/h0;

    :cond_2
    sget v8, Lb/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5, v8, v10}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v8

    invoke-static {v3, v4, v8}, Landroidx/appcompat/widget/m;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/h0;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/m;->e:Landroidx/appcompat/widget/h0;

    :cond_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v9, Lb/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v5, v9, v10}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/m;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/h0;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/m;->f:Landroidx/appcompat/widget/h0;

    :cond_4
    sget v9, Lb/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v5, v9, v10}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/m;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/h0;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/m;->g:Landroidx/appcompat/widget/h0;

    :cond_5
    invoke-virtual {v5}, Landroidx/appcompat/widget/j0;->o()V

    iget-object v5, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    const/16 v9, 0x1a

    if-eq v6, v7, :cond_9

    sget-object v13, Lb/j;->TextAppearance:[I

    .line 1
    new-instance v14, Landroidx/appcompat/widget/j0;

    invoke-virtual {v3, v6, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v14, v3, v6}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v5, :cond_6

    .line 2
    sget v6, Lb/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v14, v6}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v14, v6, v10}, Landroidx/appcompat/widget/j0;->a(IZ)Z

    move-result v6

    const/4 v13, 0x1

    goto :goto_0

    :cond_6
    move v6, v10

    move v13, v6

    :goto_0
    invoke-virtual {v0, v3, v14}, Landroidx/appcompat/widget/m;->l(Landroid/content/Context;Landroidx/appcompat/widget/j0;)V

    sget v15, Lb/j;->TextAppearance_textLocale:I

    invoke-virtual {v14, v15}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v14, v15}, Landroidx/appcompat/widget/j0;->j(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    :goto_1
    if-lt v8, v9, :cond_8

    sget v12, Lb/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v14, v12}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v14, v12}, Landroidx/appcompat/widget/j0;->j(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v14}, Landroidx/appcompat/widget/j0;->o()V

    goto :goto_3

    :cond_9
    move v6, v10

    move v13, v6

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_3
    sget-object v14, Lb/j;->TextAppearance:[I

    .line 3
    new-instance v11, Landroidx/appcompat/widget/j0;

    invoke-virtual {v3, v1, v14, v2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    invoke-direct {v11, v3, v14}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v5, :cond_a

    .line 4
    sget v14, Lb/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v11, v14}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v11, v14, v10}, Landroidx/appcompat/widget/j0;->a(IZ)Z

    move-result v6

    const/4 v13, 0x1

    :cond_a
    sget v14, Lb/j;->TextAppearance_textLocale:I

    invoke-virtual {v11, v14}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v11, v14}, Landroidx/appcompat/widget/j0;->j(I)Ljava/lang/String;

    move-result-object v15

    :cond_b
    if-lt v8, v9, :cond_c

    sget v9, Lb/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v11, v9}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v11, v9}, Landroidx/appcompat/widget/j0;->j(I)Ljava/lang/String;

    move-result-object v12

    :cond_c
    const/16 v9, 0x1c

    if-lt v8, v9, :cond_d

    sget v8, Lb/j;->TextAppearance_android_textSize:I

    invoke-virtual {v11, v8}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v11, v8, v7}, Landroidx/appcompat/widget/j0;->d(II)I

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-virtual {v0, v3, v11}, Landroidx/appcompat/widget/m;->l(Landroid/content/Context;Landroidx/appcompat/widget/j0;)V

    invoke-virtual {v11}, Landroidx/appcompat/widget/j0;->o()V

    if-nez v5, :cond_e

    if-eqz v13, :cond_e

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/m;->h(Z)V

    :cond_e
    iget-object v5, v0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    if-eqz v5, :cond_10

    iget v6, v0, Landroidx/appcompat/widget/m;->k:I

    if-ne v6, v7, :cond_f

    iget-object v6, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    iget v8, v0, Landroidx/appcompat/widget/m;->j:I

    invoke-virtual {v6, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :cond_f
    iget-object v6, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_4
    if-eqz v12, :cond_11

    iget-object v5, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    if-eqz v15, :cond_12

    iget-object v5, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v15}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_12
    iget-object v5, v0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    .line 5
    iget-object v6, v5, Landroidx/appcompat/widget/o;->j:Landroid/content/Context;

    sget-object v8, Lb/j;->AppCompatTextView:[I

    invoke-virtual {v6, v1, v8, v2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v6, Lb/j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/o;->a:I

    :cond_13
    sget v6, Lb/j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v8, :cond_14

    invoke-virtual {v2, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_5

    :cond_14
    move v6, v9

    :goto_5
    sget v8, Lb/j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    goto :goto_6

    :cond_15
    move v8, v9

    :goto_6
    sget v11, Lb/j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v2, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    goto :goto_7

    :cond_16
    move v11, v9

    :goto_7
    sget v12, Lb/j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-lez v12, :cond_19

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 6
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    new-array v14, v13, [I

    if-lez v13, :cond_18

    move v15, v10

    :goto_8
    if-ge v15, v13, :cond_17

    invoke-virtual {v12, v15, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    aput v18, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_17
    invoke-virtual {v5, v14}, Landroidx/appcompat/widget/o;->b([I)[I

    move-result-object v13

    iput-object v13, v5, Landroidx/appcompat/widget/o;->f:[I

    invoke-virtual {v5}, Landroidx/appcompat/widget/o;->i()Z

    .line 7
    :cond_18
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroidx/appcompat/widget/o;->j()Z

    move-result v2

    const/4 v12, 0x2

    if-eqz v2, :cond_1e

    iget v2, v5, Landroidx/appcompat/widget/o;->a:I

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1f

    iget-boolean v2, v5, Landroidx/appcompat/widget/o;->g:Z

    if-nez v2, :cond_1d

    iget-object v2, v5, Landroidx/appcompat/widget/o;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    cmpl-float v13, v8, v9

    if-nez v13, :cond_1a

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v12, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    :cond_1a
    cmpl-float v13, v11, v9

    if-nez v13, :cond_1b

    const/high16 v11, 0x42e00000    # 112.0f

    invoke-static {v12, v11, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    :cond_1b
    cmpl-float v2, v6, v9

    if-nez v2, :cond_1c

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_1c
    invoke-virtual {v5, v8, v11, v6}, Landroidx/appcompat/widget/o;->k(FFF)V

    :cond_1d
    invoke-virtual {v5}, Landroidx/appcompat/widget/o;->h()Z

    goto :goto_9

    :cond_1e
    iput v10, v5, Landroidx/appcompat/widget/o;->a:I

    .line 8
    :cond_1f
    :goto_9
    sget-boolean v2, Landroidx/core/widget/b;->a:Z

    if-eqz v2, :cond_21

    iget-object v2, v0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    .line 9
    iget v5, v2, Landroidx/appcompat/widget/o;->a:I

    if-eqz v5, :cond_21

    .line 10
    iget-object v2, v2, Landroidx/appcompat/widget/o;->f:[I

    .line 11
    array-length v5, v2

    if-lez v5, :cond_21

    iget-object v5, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_20

    iget-object v2, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    iget-object v5, v0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    .line 12
    iget v5, v5, Landroidx/appcompat/widget/o;->d:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 13
    iget-object v6, v0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    .line 14
    iget v6, v6, Landroidx/appcompat/widget/o;->e:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 15
    iget-object v8, v0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    .line 16
    iget v8, v8, Landroidx/appcompat/widget/o;->c:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 17
    invoke-virtual {v2, v5, v6, v8, v10}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_a

    :cond_20
    iget-object v5, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v10}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_21
    :goto_a
    sget-object v2, Lb/j;->AppCompatTextView:[I

    .line 18
    new-instance v5, Landroidx/appcompat/widget/j0;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v5, v3, v1}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 19
    sget v1, Lb/j;->AppCompatTextView_drawableLeftCompat:I

    invoke-virtual {v5, v1, v7}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v1

    if-eq v1, v7, :cond_22

    invoke-virtual {v4, v3, v1}, Landroidx/appcompat/widget/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_b

    :cond_22
    const/4 v1, 0x0

    :goto_b
    sget v2, Lb/j;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v5, v2, v7}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v2

    if-eq v2, v7, :cond_23

    invoke-virtual {v4, v3, v2}, Landroidx/appcompat/widget/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_c

    :cond_23
    const/4 v2, 0x0

    :goto_c
    sget v6, Lb/j;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v6

    if-eq v6, v7, :cond_24

    invoke-virtual {v4, v3, v6}, Landroidx/appcompat/widget/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_d

    :cond_24
    const/4 v6, 0x0

    :goto_d
    sget v8, Lb/j;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v5, v8, v7}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v8

    if-eq v8, v7, :cond_25

    invoke-virtual {v4, v3, v8}, Landroidx/appcompat/widget/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_e

    :cond_25
    const/4 v8, 0x0

    :goto_e
    sget v9, Lb/j;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v5, v9, v7}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v9

    if-eq v9, v7, :cond_26

    invoke-virtual {v4, v3, v9}, Landroidx/appcompat/widget/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_f

    :cond_26
    const/4 v9, 0x0

    :goto_f
    sget v11, Lb/j;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v5, v11, v7}, Landroidx/appcompat/widget/j0;->i(II)I

    move-result v11

    if-eq v11, v7, :cond_27

    invoke-virtual {v4, v3, v11}, Landroidx/appcompat/widget/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_10

    :cond_27
    const/4 v3, 0x0

    :goto_10
    const/4 v4, 0x3

    if-nez v9, :cond_32

    if-eqz v3, :cond_28

    goto :goto_18

    :cond_28
    if-nez v1, :cond_29

    if-nez v2, :cond_29

    if-nez v6, :cond_29

    if-eqz v8, :cond_37

    .line 20
    :cond_29
    iget-object v3, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v9, v3, v10

    if-nez v9, :cond_2f

    aget-object v9, v3, v12

    if-eqz v9, :cond_2a

    goto :goto_15

    :cond_2a
    iget-object v3, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v9, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_2b

    goto :goto_11

    :cond_2b
    aget-object v1, v3, v10

    :goto_11
    if-eqz v2, :cond_2c

    goto :goto_12

    :cond_2c
    const/4 v2, 0x1

    aget-object v2, v3, v2

    :goto_12
    if-eqz v6, :cond_2d

    goto :goto_13

    :cond_2d
    aget-object v6, v3, v12

    :goto_13
    if-eqz v8, :cond_2e

    goto :goto_14

    :cond_2e
    aget-object v8, v3, v4

    :goto_14
    invoke-virtual {v9, v1, v2, v6, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_2f
    :goto_15
    iget-object v1, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    aget-object v6, v3, v10

    if-eqz v2, :cond_30

    goto :goto_16

    :cond_30
    const/4 v2, 0x1

    aget-object v2, v3, v2

    :goto_16
    aget-object v9, v3, v12

    if-eqz v8, :cond_31

    goto :goto_17

    :cond_31
    aget-object v8, v3, v4

    :goto_17
    invoke-virtual {v1, v6, v2, v9, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_32
    :goto_18
    iget-object v1, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    if-eqz v9, :cond_33

    goto :goto_19

    :cond_33
    aget-object v9, v1, v10

    :goto_19
    if-eqz v2, :cond_34

    goto :goto_1a

    :cond_34
    const/4 v2, 0x1

    aget-object v2, v1, v2

    :goto_1a
    if-eqz v3, :cond_35

    goto :goto_1b

    :cond_35
    aget-object v3, v1, v12

    :goto_1b
    if-eqz v8, :cond_36

    goto :goto_1c

    :cond_36
    aget-object v8, v1, v4

    :goto_1c
    invoke-virtual {v6, v9, v2, v3, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_37
    :goto_1d
    sget v1, Lb/j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/j0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    :cond_38
    sget v1, Lb/j;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v5, v1, v7}, Landroidx/appcompat/widget/j0;->g(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/appcompat/widget/r;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    .line 25
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 27
    :cond_39
    sget v1, Lb/j;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v5, v1, v7}, Landroidx/appcompat/widget/j0;->d(II)I

    move-result v1

    sget v2, Lb/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v5, v2, v7}, Landroidx/appcompat/widget/j0;->d(II)I

    move-result v2

    sget v3, Lb/j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v5, v3, v7}, Landroidx/appcompat/widget/j0;->d(II)I

    move-result v3

    invoke-virtual {v5}, Landroidx/appcompat/widget/j0;->o()V

    if-eq v1, v7, :cond_3a

    iget-object v4, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v4, v1}, Landroidx/core/widget/d;->b(Landroid/widget/TextView;I)V

    :cond_3a
    if-eq v2, v7, :cond_3b

    iget-object v1, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroidx/core/widget/d;->c(Landroid/widget/TextView;I)V

    :cond_3b
    if-eq v3, v7, :cond_3c

    iget-object v1, v0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroidx/core/widget/d;->d(Landroid/widget/TextView;I)V

    :cond_3c
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 4

    sget-object v0, Lb/j;->TextAppearance:[I

    .line 1
    new-instance v1, Landroidx/appcompat/widget/j0;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 2
    sget p2, Lb/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/widget/j0;->a(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/m;->h(Z)V

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Lb/j;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/j0;->d(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/m;->l(Landroid/content/Context;Landroidx/appcompat/widget/j0;)V

    const/16 p1, 0x1a

    if-lt p2, p1, :cond_2

    sget p1, Lb/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/j0;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/j0;->o()V

    iget-object p1, p0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/m;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final h(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method public final i(IIII)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/widget/o;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/o;->k(FFF)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->a()V

    :cond_0
    return-void
.end method

.method public final j([II)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    .line 1
    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    new-array v3, v1, [I

    if-nez p2, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/appcompat/widget/o;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/o;->b([I)[I

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/widget/o;->f:[I

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    .line 2
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/o;->g:Z

    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->a()V

    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/o;

    .line 1
    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Landroidx/appcompat/widget/o;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/o;->k(FFF)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 2
    iput p1, v0, Landroidx/appcompat/widget/o;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/appcompat/widget/o;->d:F

    iput v1, v0, Landroidx/appcompat/widget/o;->e:F

    iput v1, v0, Landroidx/appcompat/widget/o;->c:F

    new-array v1, p1, [I

    iput-object v1, v0, Landroidx/appcompat/widget/o;->f:[I

    iput-boolean p1, v0, Landroidx/appcompat/widget/o;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Landroid/content/Context;Landroidx/appcompat/widget/j0;)V
    .locals 9

    sget v0, Lb/j;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/m;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/j0;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/m;->j:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    sget v5, Lb/j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v5, v3}, Landroidx/appcompat/widget/j0;->g(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m;->k:I

    if-eq v5, v3, :cond_0

    iget v5, p0, Landroidx/appcompat/widget/m;->j:I

    and-int/2addr v5, v2

    or-int/2addr v5, v4

    iput v5, p0, Landroidx/appcompat/widget/m;->j:I

    :cond_0
    sget v5, Lb/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    sget v6, Lb/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    sget p1, Lb/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Landroidx/appcompat/widget/m;->m:Z

    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/j0;->g(II)I

    move-result p1

    if-eq p1, v7, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    sget v6, Lb/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/j0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v5, v6

    :cond_7
    iget v6, p0, Landroidx/appcompat/widget/m;->k:I

    iget v8, p0, Landroidx/appcompat/widget/m;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Landroidx/appcompat/widget/m$a;

    invoke-direct {p1, p0, v6, v8}, Landroidx/appcompat/widget/m$a;-><init>(Landroidx/appcompat/widget/m;II)V

    :try_start_0
    iget v6, p0, Landroidx/appcompat/widget/m;->j:I

    invoke-virtual {p2, v5, v6, p1}, Landroidx/appcompat/widget/j0;->f(IILn/b;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroidx/appcompat/widget/m;->k:I

    if-eq v0, v3, :cond_9

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/widget/m;->k:I

    iget v6, p0, Landroidx/appcompat/widget/m;->j:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_3

    :cond_8
    move v6, v4

    :goto_3
    invoke-static {p1, v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v7

    goto :goto_4

    :cond_b
    move p1, v4

    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/m;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/j0;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_e

    iget p2, p0, Landroidx/appcompat/widget/m;->k:I

    if-eq p2, v3, :cond_e

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/m;->k:I

    iget v0, p0, Landroidx/appcompat/widget/m;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v4, v7

    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_5

    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/m;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Landroidx/appcompat/widget/m;->l:Landroid/graphics/Typeface;

    :cond_f
    return-void
.end method
