.class public final Lcom/millennialmedia/a/a/b/a/e;
.super Lcom/millennialmedia/a/a/d/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/Reader;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/millennialmedia/a/a/b/a/e$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/e;->a:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/a/a/m;)V
    .registers 3

    sget-object v0, Lcom/millennialmedia/a/a/b/a/e;->a:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/d/c;)V
    .registers 5

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    if-eq v0, p1, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method

.method private q()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/j;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/j;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 2

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .registers 3

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->c:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/p;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/p;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    sget-object v1, Lcom/millennialmedia/a/a/b/a/e;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .registers 2

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->d:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    return-void
.end method

.method public e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->d:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->b:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public f()Lcom/millennialmedia/a/a/d/c;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->j:Lcom/millennialmedia/a/a/d/c;

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/millennialmedia/a/a/p;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_30

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->e:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_30
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    goto :goto_a

    :cond_3e
    if-eqz v1, :cond_43

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->d:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_43
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_46
    instance-of v1, v0, Lcom/millennialmedia/a/a/p;

    if-eqz v1, :cond_4d

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->c:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_4d
    instance-of v1, v0, Lcom/millennialmedia/a/a/j;

    if-eqz v1, :cond_54

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_54
    instance-of v1, v0, Lcom/millennialmedia/a/a/s;

    if-eqz v1, :cond_7b

    check-cast v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->z()Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_63
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->b()Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->h:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_6c
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->y()Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_75
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7b
    instance-of v1, v0, Lcom/millennialmedia/a/a/o;

    if-eqz v1, :cond_82

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;

    goto :goto_a

    :cond_82
    sget-object v1, Lcom/millennialmedia/a/a/b/a/e;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_8e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->e:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 2

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->h:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->n()Z

    move-result v0

    return v0
.end method

.method public j()V
    .registers 2

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    return-void
.end method

.method public k()D
    .registers 6

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->e()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->p()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_4d
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_66
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    return-wide v0
.end method

.method public l()J
    .registers 5

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->i()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    return-wide v0
.end method

.method public m()I
    .registers 5

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_31

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/c;->g:Lcom/millennialmedia/a/a/d/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->j()I

    move-result v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    return v0
.end method

.method public n()V
    .registers 3

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->e:Lcom/millennialmedia/a/a/d/c;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->g()Ljava/lang/String;

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    goto :goto_b
.end method

.method public o()V
    .registers 4

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->e:Lcom/millennialmedia/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/c;)V

    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    new-instance v2, Lcom/millennialmedia/a/a/s;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
