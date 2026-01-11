.class public final Le0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/w;


# instance fields
.field public final a:Ld0/f;


# direct methods
.method public constructor <init>(Ld0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/e;->a:Ld0/f;

    return-void
.end method


# virtual methods
.method public final a(Lb0/h;Li0/a;)Lb0/v;
    .locals 2
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

    .line 1
    iget-object v0, p2, Li0/a;->a:Ljava/lang/Class;

    .line 2
    const-class v1, Lc0/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc0/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Le0/e;->a:Ld0/f;

    invoke-virtual {p0, v1, p1, p2, v0}, Le0/e;->b(Ld0/f;Lb0/h;Li0/a;Lc0/a;)Lb0/v;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ld0/f;Lb0/h;Li0/a;Lc0/a;)Lb0/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/f;",
            "Lb0/h;",
            "Li0/a<",
            "*>;",
            "Lc0/a;",
            ")",
            "Lb0/v<",
            "*>;"
        }
    .end annotation

    invoke-interface {p4}, Lc0/a;->value()Ljava/lang/Class;

    move-result-object v0

    .line 1
    new-instance v1, Li0/a;

    invoke-direct {v1, v0}, Li0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 2
    invoke-virtual {p1, v1}, Ld0/f;->a(Li0/a;)Ld0/r;

    move-result-object p1

    invoke-interface {p1}, Ld0/r;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lb0/v;

    if-eqz v0, :cond_0

    check-cast p1, Lb0/v;

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lb0/w;

    if-eqz v0, :cond_1

    check-cast p1, Lb0/w;

    invoke-interface {p1, p2, p3}, Lb0/w;->a(Lb0/h;Li0/a;)Lb0/v;

    move-result-object p1

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lb0/r;

    if-nez v0, :cond_3

    instance-of v1, p1, Lb0/k;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid attempt to bind an instance of "

    .line 3
    invoke-static {p4}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Li0/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lb0/r;

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    instance-of v2, p1, Lb0/k;

    if-eqz v2, :cond_5

    move-object v1, p1

    check-cast v1, Lb0/k;

    :cond_5
    new-instance p1, Le0/n;

    invoke-direct {p1, v0, v1, p2, p3}, Le0/n;-><init>(Lb0/r;Lb0/k;Lb0/h;Li0/a;)V

    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p4}, Lc0/a;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5
    new-instance p2, Lb0/u;

    invoke-direct {p2, p1}, Lb0/u;-><init>(Lb0/v;)V

    move-object p1, p2

    :cond_6
    return-object p1
.end method
