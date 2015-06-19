.class public Lcom/facebook/bl;
.super Ljava/util/AbstractList;
.source "RequestBatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/facebook/bc;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bc;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bm;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/bl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/bl;->d:I

    sget-object v0, Lcom/facebook/bl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bl;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bl;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/bc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/bl;->d:I

    sget-object v0, Lcom/facebook/bl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bl;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bl;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/bc;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/bl;->d:I

    sget-object v0, Lcom/facebook/bl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bl;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bl;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    return-void
.end method

.method private a(ILcom/facebook/bc;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/facebook/bc;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(I)Lcom/facebook/bc;
    .registers 3

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    return-object v0
.end method

.method private b(ILcom/facebook/bc;)Lcom/facebook/bc;
    .registers 4

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    return-object v0
.end method

.method private i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/bc;->a(Lcom/facebook/bl;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/facebook/bk;
    .registers 2

    invoke-static {p0}, Lcom/facebook/bc;->b(Lcom/facebook/bl;)Lcom/facebook/bk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/facebook/bl;->d:I

    return v0
.end method

.method public final a(I)Lcom/facebook/bc;
    .registers 3

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    return-object v0
.end method

.method final a(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/bl;->b:Landroid/os/Handler;

    return-void
.end method

.method public final a(Lcom/facebook/bm;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/bl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/facebook/bl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/bl;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/facebook/bc;

    invoke-direct {p0, p1, p2}, Lcom/facebook/bl;->a(ILcom/facebook/bc;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/facebook/bc;

    invoke-direct {p0, p1}, Lcom/facebook/bl;->a(Lcom/facebook/bc;)Z

    move-result v0

    return v0
.end method

.method final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bl;->e:Ljava/lang/String;

    return-object v0
.end method

.method final c()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bl;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    return-object v0
.end method

.method final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/bl;->f:Ljava/util/List;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/bl;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/bl;->a(I)Lcom/facebook/bc;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/facebook/bk;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/bl;->j()Lcom/facebook/bk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/bl;->b(I)Lcom/facebook/bc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lcom/facebook/bc;

    invoke-direct {p0, p1, p2}, Lcom/facebook/bl;->b(ILcom/facebook/bc;)Lcom/facebook/bc;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/bl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
