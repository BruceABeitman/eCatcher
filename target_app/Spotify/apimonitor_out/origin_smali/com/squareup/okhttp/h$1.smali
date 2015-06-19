.class final Lcom/squareup/okhttp/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/h;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/h;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v7, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    monitor-enter v3

    :try_start_a
    iget-object v0, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    invoke-static {v0}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/h;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    invoke-static {v4}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/h;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/g;->f()Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    invoke-static {v5}, Lcom/squareup/okhttp/h;->b(Lcom/squareup/okhttp/h;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/squareup/okhttp/g;->a(J)Z

    move-result v5

    if-eqz v5, :cond_80

    :cond_3c
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_a5

    :cond_48
    iget-object v0, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    invoke-static {v0}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/h;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    invoke-static {v4}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/h;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :goto_5c
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/squareup/okhttp/h$1;->a:Lcom/squareup/okhttp/h;

    invoke-static {v0}, Lcom/squareup/okhttp/h;->c(Lcom/squareup/okhttp/h;)I

    move-result v0

    if-le v1, v0, :cond_8a

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/g;->i()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v0, v1, -0x1

    :goto_7e
    move v1, v0

    goto :goto_5c

    :cond_80
    invoke-virtual {v0}, Lcom/squareup/okhttp/g;->i()Z

    move-result v0

    if-eqz v0, :cond_a5

    add-int/lit8 v0, v1, 0x1

    :goto_88
    move v1, v0

    goto :goto_1e

    :cond_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_a .. :try_end_8b} :catchall_9f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V

    goto :goto_8f

    :catchall_9f
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_a2
    return-void

    :cond_a3
    move v0, v1

    goto :goto_7e

    :cond_a5
    move v0, v1

    goto :goto_88
.end method
