.class public final Le0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/m$a;,
        Le0/m$b;
    }
.end annotation


# instance fields
.field public final a:Ld0/f;

.field public final b:Lb0/c;

.field public final c:Ld0/n;

.field public final d:Le0/e;

.field public final e:Lg0/b;


# direct methods
.method public constructor <init>(Ld0/f;Ld0/n;Le0/e;)V
    .locals 2

    sget-object v0, Lb0/b;->a:Lb0/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v1, Lg0/b;->a:Lg0/b;

    .line 2
    iput-object v1, p0, Le0/m;->e:Lg0/b;

    iput-object p1, p0, Le0/m;->a:Ld0/f;

    iput-object v0, p0, Le0/m;->b:Lb0/c;

    iput-object p2, p0, Le0/m;->c:Ld0/n;

    iput-object p3, p0, Le0/m;->d:Le0/e;

    return-void
.end method


# virtual methods
.method public final a(Lb0/h;Li0/a;)Lb0/v;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb0/h;",
            "Li0/a<",
            "TT;>;)",
            "Lb0/v<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    .line 1
    const-class v12, Ljava/lang/Object;

    iget-object v2, v1, Li0/a;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v13, 0x0

    if-nez v3, :cond_0

    return-object v13

    :cond_0
    iget-object v3, v0, Le0/m;->a:Ld0/f;

    invoke-virtual {v3, v1}, Ld0/f;->a(Li0/a;)Ld0/r;

    move-result-object v14

    new-instance v15, Le0/m$a;

    .line 3
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object/from16 v28, v14

    move-object/from16 v21, v15

    move-object v15, v10

    goto/16 :goto_b

    .line 4
    :cond_2
    iget-object v9, v1, Li0/a;->b:Ljava/lang/reflect/Type;

    move-object v8, v1

    move-object v7, v2

    :goto_0
    if-eq v7, v12, :cond_1

    .line 5
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_f

    aget-object v2, v6, v3

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Le0/m;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    invoke-virtual {v0, v2, v4}, Le0/m;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    if-nez v16, :cond_3

    if-nez v17, :cond_3

    move/from16 v19, v3

    move/from16 v29, v4

    move/from16 v20, v5

    move-object/from16 v31, v6

    move-object/from16 p2, v7

    move-object v13, v8

    move-object/from16 v22, v12

    move-object/from16 v28, v14

    move-object/from16 v21, v15

    move-object v14, v9

    move-object v15, v10

    goto/16 :goto_a

    :cond_3
    iget-object v4, v0, Le0/m;->e:Lg0/b;

    invoke-virtual {v4, v2}, Lg0/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 6
    iget-object v4, v8, Li0/a;->b:Ljava/lang/reflect/Type;

    .line 7
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static {v4, v7, v13}, Ld0/a;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 8
    const-class v4, Lc0/b;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lc0/b;

    if-nez v4, :cond_4

    iget-object v4, v0, Le0/m;->b:Lb0/c;

    invoke-interface {v4, v2}, Lb0/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move/from16 v19, v3

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Lc0/b;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lc0/b;->alternate()[Ljava/lang/String;

    move-result-object v4

    move/from16 v19, v3

    array-length v3, v4

    if-nez v3, :cond_5

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_2
    move/from16 v20, v5

    const/16 v18, 0x1

    move-object v5, v4

    goto :goto_4

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v20, v5

    array-length v5, v4

    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    move/from16 v21, v1

    aget-object v1, v4, v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v21

    goto :goto_3

    :cond_6
    move-object v5, v3

    .line 9
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_d

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v12

    move-object/from16 v12, v21

    check-cast v12, Ljava/lang/String;

    move-object/from16 v21, v9

    if-eqz v3, :cond_7

    const/16 v16, 0x0

    .line 10
    :cond_7
    new-instance v9, Li0/a;

    invoke-direct {v9, v13}, Li0/a;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v23, v1

    .line 11
    iget-object v1, v9, Li0/a;->a:Ljava/lang/Class;

    move/from16 v24, v3

    .line 12
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v25, v18

    goto :goto_6

    :cond_8
    const/16 v25, 0x0

    .line 13
    :goto_6
    const-class v1, Lc0/a;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lc0/a;

    if-eqz v1, :cond_9

    iget-object v3, v0, Le0/m;->d:Le0/e;

    move-object/from16 v26, v2

    iget-object v2, v0, Le0/m;->a:Ld0/f;

    invoke-virtual {v3, v2, v11, v9, v1}, Le0/e;->b(Ld0/f;Lb0/h;Li0/a;Lc0/a;)Lb0/v;

    move-result-object v1

    goto :goto_7

    :cond_9
    move-object/from16 v26, v2

    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_a

    move/from16 v27, v18

    goto :goto_8

    :cond_a
    const/16 v27, 0x0

    :goto_8
    if-nez v1, :cond_b

    invoke-virtual {v11, v9}, Lb0/h;->b(Li0/a;)Lb0/v;

    move-result-object v1

    :cond_b
    move-object/from16 v28, v1

    new-instance v3, Le0/l;

    move-object/from16 v2, v23

    move-object v1, v3

    move-object v0, v2

    move-object/from16 v23, v26

    move-object v2, v12

    move-object v11, v3

    move/from16 v3, v16

    move/from16 v26, v4

    const/16 v29, 0x0

    move/from16 v4, v17

    move-object/from16 v30, v5

    move-object/from16 v5, v23

    move-object/from16 v31, v6

    move/from16 v6, v27

    move-object/from16 p2, v7

    move-object/from16 v7, v28

    move-object/from16 v27, v13

    move-object v13, v8

    move-object/from16 v8, p1

    move-object/from16 v28, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v15

    move-object v15, v10

    move/from16 v10, v25

    invoke-direct/range {v1 .. v10}, Le0/l;-><init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLb0/v;Lb0/h;Li0/a;Z)V

    .line 14
    invoke-interface {v15, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/m$b;

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    move-object v1, v0

    :goto_9
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v7, p2

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move/from16 v4, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    goto/16 :goto_5

    :cond_d
    move-object v0, v1

    move-object/from16 v31, v6

    move-object/from16 p2, v7

    move-object v13, v8

    move-object/from16 v22, v12

    move-object/from16 v28, v14

    move-object/from16 v21, v15

    const/16 v29, 0x0

    move-object v14, v9

    move-object v15, v10

    if-nez v0, :cond_e

    :goto_a
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v7, p2

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move/from16 v5, v20

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v28

    move/from16 v4, v29

    move-object/from16 v6, v31

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Le0/m$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object/from16 p2, v7

    move-object v13, v8

    move-object/from16 v22, v12

    move-object/from16 v28, v14

    move-object/from16 v21, v15

    move-object v14, v9

    move-object v15, v10

    .line 15
    iget-object v0, v13, Li0/a;->b:Ljava/lang/reflect/Type;

    .line 16
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Ld0/a;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 17
    new-instance v8, Li0/a;

    invoke-direct {v8, v0}, Li0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 18
    iget-object v7, v8, Li0/a;->a:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v15, v21

    move-object/from16 v14, v28

    const/4 v13, 0x0

    goto/16 :goto_0

    :goto_b
    move-object/from16 v1, v21

    move-object/from16 v0, v28

    .line 19
    invoke-direct {v1, v0, v15}, Le0/m$a;-><init>(Ld0/r;Ljava/util/Map;)V

    return-object v1
.end method

.method public final b(Ljava/lang/reflect/Field;Z)Z
    .locals 5

    iget-object v0, p0, Le0/m;->c:Ld0/n;

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ld0/n;->c(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v0, v1, p2}, Ld0/n;->b(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_8

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x88

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld0/n;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    iget-object p2, v0, Ld0/n;->a:Ljava/util/List;

    goto :goto_2

    :cond_5
    iget-object p2, v0, Ld0/n;->b:Ljava/util/List;

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb0/a;

    invoke-interface {p2}, Lb0/a;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    :goto_3
    move p1, v4

    goto :goto_4

    :cond_7
    move p1, v3

    :goto_4
    if-nez p1, :cond_8

    move v3, v4

    :cond_8
    return v3
.end method
