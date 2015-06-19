.class public final Lcom/instagram/f/d/a;
.super Ljava/lang/Object;
.source "DirectShareRecipientsStore.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/f/d/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/f/d/a;
    .registers 1

    sget-object v0, Lcom/instagram/f/d/c;->a:Lcom/instagram/f/d/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    return-void
.end method

.method public final b(Lcom/instagram/user/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    return-void
.end method

.method public final c(Lcom/instagram/user/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/instagram/user/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/user/c/a;

    new-instance v1, Lcom/instagram/f/d/b;

    invoke-direct {v1, p0}, Lcom/instagram/f/d/b;-><init>(Lcom/instagram/f/d/a;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    return-void
.end method

.method public final h()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/f/d/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/f/d/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/f/d/a;->d:Z

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/f/d/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
