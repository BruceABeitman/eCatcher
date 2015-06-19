.class final Lcom/twidroid/fragments/base/e$3;
.super Lcom/twidroid/net/a/c/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/fragments/base/e;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/net/a/c/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    invoke-static {}, Lcom/twidroid/fragments/base/e;->I()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
    .registers 5

    invoke-static {}, Lcom/twidroid/fragments/base/e;->I()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1, p2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V
    .registers 5

    invoke-static {}, Lcom/twidroid/fragments/base/e;->I()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1, p2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/a/c/a/l;)V
    .registers 5

    invoke-static {}, Lcom/twidroid/fragments/base/e;->I()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1, p2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/a/c/a/l;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public b(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    invoke-static {}, Lcom/twidroid/fragments/base/e;->I()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1}, Lcom/twidroid/net/a/c/a/j;->b(Lcom/twidroid/model/twitter/c;)V

    goto :goto_8

    :cond_18
    return-void
.end method
