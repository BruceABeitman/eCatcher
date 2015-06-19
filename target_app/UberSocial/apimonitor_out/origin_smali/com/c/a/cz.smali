.class Lcom/c/a/cz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:J

.field private final c:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/a/cz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/a/cz;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/c/a/cz;->b:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method a(Lcom/c/ba;)I
    .registers 9

    sget-boolean v2, Lcom/c/a/d;->h_:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ap;

    invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/c/a/cz;->b:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    if-eqz v2, :cond_2d

    move v1, v0

    :cond_2c
    return v1

    :cond_2d
    move v1, v0

    goto :goto_4
.end method

.method a(Lcom/c/ba;J)I
    .registers 8

    sget-boolean v2, Lcom/c/a/d;->h_:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/c/a/cz;->c(Lcom/c/ba;J)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ap;

    add-int/lit8 v0, v1, 0x1

    if-eqz v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    move v1, v0

    goto :goto_c

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method a(Lcom/c/ap;)V
    .registers 4

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/c/a/cz;->a:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    sget-object v1, Lcom/c/ap;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    return-void
.end method

.method a(Ljava/util/Collection;)V
    .registers 6

    sget-boolean v1, Lcom/c/a/d;->h_:Z

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ap;

    iget-object v3, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    :cond_19
    sget-boolean v0, Lcom/c/a/cz;->a:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    sget-object v1, Lcom/c/ap;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2d
    return-void
.end method

.method b(Lcom/c/ba;J)Lcom/c/ap;
    .registers 7

    invoke-virtual {p0}, Lcom/c/a/cz;->c()Lcom/c/ap;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    return-object v0
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method c()Lcom/c/ap;
    .registers 2

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ap;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method c(Lcom/c/ba;J)Ljava/lang/Iterable;
    .registers 6

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    new-instance v1, Lcom/c/a/dd;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/c/a/dd;-><init>(Lcom/c/a/cz;Lcom/c/ba;J)V

    invoke-static {v0, v1}, Lcom/c/br;->b(Ljava/lang/Iterable;Lcom/c/y;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/c/a/cz;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
