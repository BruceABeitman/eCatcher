.class final Lcom/bbm/ui/c/k;
.super Lcom/bbm/d/b/f;
.source "BlockedUpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/d/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/j;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/j;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/k;->a:Lcom/bbm/ui/c/j;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/a/a;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/c/k;->a:Lcom/bbm/ui/c/j;

    iget-object v0, v0, Lcom/bbm/ui/c/j;->a:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->x()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v4

    if-eqz v4, :cond_2c

    move v1, v2

    :cond_16
    iget-object v0, p0, Lcom/bbm/ui/c/k;->a:Lcom/bbm/ui/c/j;

    iget-object v0, v0, Lcom/bbm/ui/c/j;->d:Lcom/bbm/g/am;

    invoke-virtual {v0}, Lcom/bbm/g/am;->e()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v4

    if-eqz v4, :cond_4c

    :goto_24
    if-eqz v2, :cond_6a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2b
    return-object v0

    :cond_2c
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gs;

    iget-object v5, v0, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;

    sget-object v6, Lcom/bbm/d/gt;->b:Lcom/bbm/d/gt;

    if-eq v5, v6, :cond_36

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4c
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_56
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/a;

    iget-boolean v4, v0, Lcom/bbm/g/a;->i:Z

    if-eqz v4, :cond_56

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_6a
    move-object v0, v3

    goto :goto_2b

    :cond_6c
    move v2, v1

    goto :goto_24
.end method
