.class public Lcom/facebook/aq;
.super Ljava/util/AbstractList;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Ljava/util/List;

.field private d:I

.field private final e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/aq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/aq;->d:I

    sget-object v0, Lcom/facebook/aq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aq;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/aq;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/aq;->d:I

    sget-object v0, Lcom/facebook/aq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aq;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/aq;->b:Landroid/os/Handler;

    iput-object v0, p0, Lcom/facebook/aq;->b:Landroid/os/Handler;

    iget v0, p1, Lcom/facebook/aq;->d:I

    iput v0, p0, Lcom/facebook/aq;->d:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/aq;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/aq;->d:I

    sget-object v0, Lcom/facebook/aq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aq;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ai;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/aq;->d:I

    sget-object v0, Lcom/facebook/aq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aq;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/facebook/aq;->d:I

    return v0
.end method

.method public a(I)V
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument timeoutInMilliseconds must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput p1, p0, Lcom/facebook/aq;->d:I

    return-void
.end method

.method public final a(ILcom/facebook/ai;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method final a(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/aq;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Lcom/facebook/ar;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/aq;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/facebook/ai;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/facebook/ai;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/aq;->a(ILcom/facebook/ai;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/facebook/ai;

    invoke-virtual {p0, p1}, Lcom/facebook/aq;->a(Lcom/facebook/ai;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/facebook/ai;
    .registers 3

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ai;

    return-object v0
.end method

.method public final b(ILcom/facebook/ai;)Lcom/facebook/ai;
    .registers 4

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ai;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aq;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/facebook/ar;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final c()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aq;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public final c(I)Lcom/facebook/ai;
    .registers 3

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ai;

    return-object v0
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    return-object v0
.end method

.method final e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aq;->f:Ljava/util/List;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aq;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/aq;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/aq;->b(I)Lcom/facebook/ai;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/facebook/ap;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/aq;->j()Lcom/facebook/ap;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/util/List;
    .registers 2

    invoke-static {p0}, Lcom/facebook/ai;->b(Lcom/facebook/aq;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method j()Lcom/facebook/ap;
    .registers 2

    invoke-static {p0}, Lcom/facebook/ai;->c(Lcom/facebook/aq;)Lcom/facebook/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/aq;->c(I)Lcom/facebook/ai;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lcom/facebook/ai;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/aq;->b(ILcom/facebook/ai;)Lcom/facebook/ai;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/aq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
