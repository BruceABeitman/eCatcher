.class final Lcom/bbm/ui/c/bg;
.super Lcom/bbm/d/b/f;
.source "ChatsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/ui/activities/eu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/bg;->a:Lcom/bbm/ui/c/at;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->p()Lcom/bbm/j/r;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v6

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v6}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Lcom/bbm/j/w;->b()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->b()Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_3f
    move-object v0, v5

    :goto_40
    return-object v0

    :cond_41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/bbm/ui/c/bg;->a:Lcom/bbm/ui/c/at;

    invoke-static {v1}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/n/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_58
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-eqz v1, :cond_c7

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c7

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    :goto_79
    if-eqz v4, :cond_cc

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "|"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bbm/d/a;->n(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v1

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v3, :cond_ca

    const/4 v1, 0x1

    :goto_a1
    iget-boolean v3, v0, Lcom/bbm/d/es;->i:Z

    if-eqz v3, :cond_ce

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    iget-object v4, v0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v4

    new-instance v3, Lcom/bbm/ui/activities/eu;

    invoke-direct {v3, v0, v4, v1}, Lcom/bbm/ui/activities/eu;-><init>(Lcom/bbm/d/es;Lcom/bbm/d/ec;Z)V

    move-object v0, v3

    :goto_b5
    invoke-virtual {v0}, Lcom/bbm/ui/activities/eu;->b()J

    move-result-wide v3

    move-wide v11, v3

    move-object v3, v0

    move-wide v0, v11

    :goto_bc
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_c7
    const/4 v1, 0x0

    move-object v4, v1

    goto :goto_79

    :cond_ca
    move v1, v2

    goto :goto_a1

    :cond_cc
    move v1, v2

    goto :goto_a1

    :cond_ce
    new-instance v3, Lcom/bbm/ui/activities/eu;

    invoke-direct {v3, v0, v1}, Lcom/bbm/ui/activities/eu;-><init>(Lcom/bbm/d/es;Z)V

    iget-boolean v0, v0, Lcom/bbm/d/es;->k:Z

    if-nez v0, :cond_180

    if-eqz v4, :cond_180

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_bc

    :cond_e5
    move v1, v2

    :goto_e6
    invoke-interface {v6}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_141

    invoke-interface {v6}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/q;

    iget-wide v3, v0, Lcom/bbm/g/q;->h:J

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-gtz v0, :cond_11e

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v3

    invoke-interface {v6}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/q;

    iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/g/am;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    :cond_11e
    new-instance v3, Lcom/bbm/ui/activities/eu;

    invoke-interface {v6}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/q;

    invoke-direct {v3, v0}, Lcom/bbm/ui/activities/eu;-><init>(Lcom/bbm/g/q;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/bbm/ui/activities/eu;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e6

    :cond_141
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    :goto_14b
    if-ge v0, v3, :cond_157

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14b

    :cond_157
    new-instance v0, Lcom/bbm/ui/c/bh;

    invoke-direct {v0, p0, v7}, Lcom/bbm/ui/c/bh;-><init>(Lcom/bbm/ui/c/bg;Ljava/util/ArrayList;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_167
    if-ge v2, v3, :cond_17d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_167

    :cond_17d
    move-object v0, v1

    goto/16 :goto_40

    :cond_180
    move-object v0, v3

    goto/16 :goto_b5
.end method
