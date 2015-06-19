.class final Lcom/bbm/d/b/v;
.super Ljava/lang/Object;
.source "TransformingList.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/d/b/r;


# direct methods
.method constructor <init>(Lcom/bbm/d/b/r;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v3, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iget-object v0, v0, Lcom/bbm/d/b/r;->f:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_15
    if-ge v2, v5, :cond_43

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v1, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iget-object v1, v1, Lcom/bbm/d/b/r;->e:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/j/r;

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    invoke-virtual {v1, v6}, Lcom/bbm/d/b/r;->a(Ljava/lang/Object;)Lcom/bbm/j/r;

    move-result-object v1

    iget-object v7, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iget-object v7, v7, Lcom/bbm/d/b/r;->d:Lcom/bbm/j/h;

    invoke-interface {v1, v7}, Lcom/bbm/j/r;->a(Lcom/bbm/j/h;)V

    :goto_34
    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_15

    :cond_3b
    iget-object v7, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iget-object v7, v7, Lcom/bbm/d/b/r;->e:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_43
    iget-object v0, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iget-object v0, v0, Lcom/bbm/d/b/r;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    iget-object v2, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iget-object v2, v2, Lcom/bbm/d/b/r;->d:Lcom/bbm/j/h;

    invoke-interface {v0, v2}, Lcom/bbm/j/r;->b(Lcom/bbm/j/h;)V

    goto :goto_4f

    :cond_63
    iget-object v0, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iput-object v4, v0, Lcom/bbm/d/b/r;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/bbm/d/b/v;->a:Lcom/bbm/d/b/r;

    iput-boolean v3, v0, Lcom/bbm/d/b/r;->h:Z

    return-void
.end method
