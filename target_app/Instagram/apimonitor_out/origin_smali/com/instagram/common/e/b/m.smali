.class final Lcom/instagram/common/e/b/m;
.super Ljava/lang/Object;
.source "IgImageCache.java"

# interfaces
.implements Lcom/instagram/common/e/b/s;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/e/b/h;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/instagram/common/e/b/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private volatile f:I

.field private volatile g:Z

.field private volatile h:Z

.field private i:Lcom/instagram/common/e/b/d;


# direct methods
.method private constructor <init>(Lcom/instagram/common/e/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/b/m;->b:Ljava/util/Map;

    iput v1, p0, Lcom/instagram/common/e/b/m;->f:I

    iput-boolean v1, p0, Lcom/instagram/common/e/b/m;->g:Z

    iput-boolean v1, p0, Lcom/instagram/common/e/b/m;->h:Z

    iput-object p2, p0, Lcom/instagram/common/e/b/m;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/common/e/b/m;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/common/e/b/m;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/e/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/common/e/b/m;-><init>(Lcom/instagram/common/e/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/e/b/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/e/b/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/instagram/common/e/b/c;->d()Lcom/instagram/common/e/b/k;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/instagram/common/e/b/m;->i:Lcom/instagram/common/e/b/d;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/instagram/common/e/b/m;->i:Lcom/instagram/common/e/b/d;

    invoke-virtual {v3}, Lcom/instagram/common/e/b/d;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/instagram/common/e/b/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_b

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3a
    :try_start_3a
    invoke-interface {v1}, Lcom/instagram/common/e/b/k;->a()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_37

    goto :goto_b

    :cond_3e
    monitor-exit p0

    return-void
.end method

.method private a(Lcom/instagram/common/e/b/c;Lcom/instagram/common/e/a/g;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/instagram/common/e/b/m;->h:Z

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/instagram/common/e/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_c
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lcom/instagram/common/e/b/m;->h:Z

    iget-boolean v0, p0, Lcom/instagram/common/e/b/m;->g:Z

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lcom/instagram/common/e/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    move v1, v2

    :cond_1a
    iput-boolean v1, p0, Lcom/instagram/common/e/b/m;->g:Z

    invoke-virtual {p1}, Lcom/instagram/common/e/b/c;->d()Lcom/instagram/common/e/b/k;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, p2, Lcom/instagram/common/e/a/g;->c:Ljava/lang/String;

    iget v2, p0, Lcom/instagram/common/e/b/m;->f:I

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/e/b/k;->a(Ljava/lang/String;I)V

    :cond_29
    monitor-enter p0

    :try_start_2a
    iget-object v0, p0, Lcom/instagram/common/e/b/m;->b:Ljava/util/Map;

    iget-object v1, p2, Lcom/instagram/common/e/a/g;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_35

    return-void

    :cond_33
    move v0, v1

    goto :goto_d

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/instagram/common/e/b/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/common/e/b/m;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/e/b/m;Lcom/instagram/common/e/b/c;Lcom/instagram/common/e/a/g;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/e/b/m;->a(Lcom/instagram/common/e/b/c;Lcom/instagram/common/e/a/g;)V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/e/b/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/e/b/c;

    invoke-virtual {v1}, Lcom/instagram/common/e/b/c;->d()Lcom/instagram/common/e/b/k;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    iget v3, p0, Lcom/instagram/common/e/b/m;->f:I

    invoke-interface {v1, v0, v3}, Lcom/instagram/common/e/b/k;->a(Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_b

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_32
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/instagram/common/e/b/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/common/e/b/m;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iput p1, p0, Lcom/instagram/common/e/b/m;->f:I

    iget-object v0, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->f(Lcom/instagram/common/e/b/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v1}, Lcom/instagram/common/e/b/h;->f(Lcom/instagram/common/e/b/h;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final run()V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/common/e/b/m;->a(I)V

    new-instance v0, Lcom/instagram/common/e/b/r;

    iget-object v1, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v1}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/b/h;)Lcom/instagram/common/e/b/l;

    move-result-object v1

    iget-boolean v3, p0, Lcom/instagram/common/e/b/m;->h:Z

    iget-boolean v4, p0, Lcom/instagram/common/e/b/m;->g:Z

    iget-object v5, p0, Lcom/instagram/common/e/b/m;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/instagram/common/e/b/m;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/instagram/common/e/b/m;->c:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/instagram/common/e/b/r;-><init>(Lcom/instagram/common/e/b/t;Lcom/instagram/common/e/b/s;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/common/e/b/r;->a()Lcom/instagram/common/e/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/b/m;->i:Lcom/instagram/common/e/b/d;

    iget-object v0, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->b(Lcom/instagram/common/e/b/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_27
    iget-object v0, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->c(Lcom/instagram/common/e/b/h;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/e/b/m;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->d(Lcom/instagram/common/e/b/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->e(Lcom/instagram/common/e/b/h;)V

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_56

    iget-object v0, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->f(Lcom/instagram/common/e/b/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/e/b/m;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v1}, Lcom/instagram/common/e/b/h;->f(Lcom/instagram/common/e/b/h;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method
