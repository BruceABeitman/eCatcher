.class final Lcom/bbm/iceberg/l;
.super Lcom/bbm/d/b/f;
.source "LocalContactEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/iceberg/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/iceberg/k;


# direct methods
.method constructor <init>(Lcom/bbm/iceberg/k;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/iceberg/l;->a:Lcom/bbm/iceberg/k;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/bbm/iceberg/l;->a:Lcom/bbm/iceberg/k;

    invoke-static {v0}, Lcom/bbm/iceberg/k;->a(Lcom/bbm/iceberg/k;)Lcom/bbm/iceberg/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/iceberg/n;->a()Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/af;->p()Z

    move-result v1

    if-nez v1, :cond_1c

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v1, p0, Lcom/bbm/iceberg/l;->a:Lcom/bbm/iceberg/k;

    invoke-static {v1}, Lcom/bbm/iceberg/k;->b(Lcom/bbm/iceberg/k;)Lcom/bbm/iceberg/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/iceberg/a;->c()Lcom/bbm/iceberg/i;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/iceberg/j;

    iget-object v1, v0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    if-eqz v1, :cond_8b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/iceberg/i;->a(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v7

    invoke-virtual {v3, v0}, Lcom/bbm/iceberg/i;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    sget-object v9, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v7, v9, :cond_6f

    invoke-static {}, Lcom/bbm/iceberg/k;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_6f
    sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v7, v0, :cond_bc

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/bbm/iceberg/j;

    invoke-direct {v0, v1}, Lcom/bbm/iceberg/j;-><init>(Lcom/bbm/iceberg/j;)V

    iput-boolean v10, v0, Lcom/bbm/iceberg/j;->g:Z

    iput-object v7, v0, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    :goto_89
    move-object v1, v0

    goto :goto_4f

    :cond_8b
    new-instance v1, Lcom/bbm/iceberg/j;

    invoke-direct {v1, v0}, Lcom/bbm/iceberg/j;-><init>(Lcom/bbm/iceberg/j;)V

    iput-boolean v10, v1, Lcom/bbm/iceberg/j;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    :cond_99
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_9d
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/bbm/iceberg/l;->a:Lcom/bbm/iceberg/k;

    invoke-static {v0}, Lcom/bbm/iceberg/k;->b(Lcom/bbm/iceberg/k;)Lcom/bbm/iceberg/a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/bbm/iceberg/a;->a(Ljava/util/List;)V

    :cond_b9
    move-object v0, v2

    goto/16 :goto_1b

    :cond_bc
    move-object v0, v1

    goto :goto_89
.end method
