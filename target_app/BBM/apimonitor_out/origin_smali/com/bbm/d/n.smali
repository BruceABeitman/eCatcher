.class final Lcom/bbm/d/n;
.super Lcom/bbm/j/a;
.source "BbmdsModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/d/a;


# direct methods
.method constructor <init>(Lcom/bbm/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/n;->a:Lcom/bbm/d/a;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/d/n;->a:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v3

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/es;

    iget-boolean v5, v1, Lcom/bbm/d/es;->k:Z

    if-nez v5, :cond_3b

    iget-boolean v5, v1, Lcom/bbm/d/es;->i:Z

    if-nez v5, :cond_3b

    iget-object v5, v1, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3b

    iget-object v5, v1, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v1, v1, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13

    :cond_3f
    return-object v4
.end method
