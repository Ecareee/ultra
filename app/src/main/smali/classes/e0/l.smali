.class public final Le0/l;
.super Le0/m$b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Lb0/v;

.field public final synthetic g:Lb0/h;

.field public final synthetic h:Li0/a;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLb0/v;Lb0/h;Li0/a;Z)V
    .locals 0

    iput-object p4, p0, Le0/l;->d:Ljava/lang/reflect/Field;

    iput-boolean p5, p0, Le0/l;->e:Z

    iput-object p6, p0, Le0/l;->f:Lb0/v;

    iput-object p7, p0, Le0/l;->g:Lb0/h;

    iput-object p8, p0, Le0/l;->h:Li0/a;

    iput-boolean p9, p0, Le0/l;->i:Z

    invoke-direct {p0, p1, p2, p3}, Le0/m$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final a(Lj0/a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le0/l;->f:Lb0/v;

    invoke-virtual {v0, p1}, Lb0/v;->a(Lj0/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Le0/l;->i:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Le0/l;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
