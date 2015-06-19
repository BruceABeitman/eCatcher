.class final Lcom/instagram/filterkit/c/g;
.super Ljava/lang/Object;
.source "SingleThreadRenderManager.java"

# interfaces
.implements Lcom/instagram/filterkit/c/d;


# instance fields
.field final synthetic a:Lcom/instagram/filterkit/c/e;


# direct methods
.method private constructor <init>(Lcom/instagram/filterkit/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/filterkit/c/e;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/filterkit/c/g;-><init>(Lcom/instagram/filterkit/c/e;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_24

    goto :goto_11

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->j(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/filterkit/a/b;->b()Lcom/instagram/filterkit/d/c;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v2}, Lcom/instagram/filterkit/c/e;->c(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/a;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v3}, Lcom/instagram/filterkit/c/e;->i(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/c;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->k(Lcom/instagram/filterkit/c/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_58
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->h(Lcom/instagram/filterkit/c/e;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->f()V

    :cond_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_58 .. :try_end_6a} :catchall_79

    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    invoke-interface {v0}, Lcom/instagram/filterkit/c/b;->b()V

    return-void

    :catchall_79
    move-exception v0

    monitor-exit v1

    throw v0
.end method
