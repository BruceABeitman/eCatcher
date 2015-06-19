.class public final Lcom/millennialmedia/a/a/b/a/f;
.super Lcom/millennialmedia/a/a/d/d;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/millennialmedia/a/a/s;


# instance fields
.field private final c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Lcom/millennialmedia/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/millennialmedia/a/a/b/a/f$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/f$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/f;->a:Ljava/io/Writer;

    new-instance v0, Lcom/millennialmedia/a/a/s;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/f;->b:Lcom/millennialmedia/a/a/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/millennialmedia/a/a/b/a/f;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/d;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->e:Lcom/millennialmedia/a/a/m;

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/m;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->s()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_10
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/p;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/f;->e:Lcom/millennialmedia/a/a/m;

    goto :goto_1e

    :cond_2a
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    instance-of v1, v0, Lcom/millennialmedia/a/a/j;

    if-eqz v1, :cond_38

    check-cast v0, Lcom/millennialmedia/a/a/j;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/j;->a(Lcom/millennialmedia/a/a/m;)V

    goto :goto_1e

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private j()Lcom/millennialmedia/a/a/m;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/m;

    return-object v0
.end method


# virtual methods
.method public a(D)Lcom/millennialmedia/a/a/d/d;
    .registers 6

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    return-object p0
.end method

.method public a(J)Lcom/millennialmedia/a/a/d/d;
    .registers 5

    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/d;
    .registers 5

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->f()Lcom/millennialmedia/a/a/d/d;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/a/a/p;

    if-eqz v0, :cond_1d

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    return-object p0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Z)Lcom/millennialmedia/a/a/d/d;
    .registers 4

    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    return-object p0
.end method

.method public a()Lcom/millennialmedia/a/a/m;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->e:Lcom/millennialmedia/a/a/m;

    return-object v0
.end method

.method public b()Lcom/millennialmedia/a/a/d/d;
    .registers 3

    new-instance v0, Lcom/millennialmedia/a/a/j;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/j;-><init>()V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->f()Lcom/millennialmedia/a/a/d/d;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    goto :goto_6
.end method

.method public c()Lcom/millennialmedia/a/a/d/d;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/a/a/j;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    sget-object v1, Lcom/millennialmedia/a/a/b/a/f;->b:Lcom/millennialmedia/a/a/s;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Lcom/millennialmedia/a/a/d/d;
    .registers 3

    new-instance v0, Lcom/millennialmedia/a/a/p;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/p;-><init>()V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e()Lcom/millennialmedia/a/a/d/d;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/a/a/p;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Lcom/millennialmedia/a/a/d/d;
    .registers 2

    sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/m;)V

    return-object p0
.end method

.method public flush()V
    .registers 1

    return-void
.end method
