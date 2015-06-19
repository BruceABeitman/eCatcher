.class final Lcom/bbm/util/a/i;
.super Lcom/bbm/j/k;
.source "GlympseTracker.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/a/g;


# direct methods
.method constructor <init>(Lcom/bbm/util/a/g;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v0, v0, Lcom/bbm/util/a/g;->g:Lcom/bbm/util/cs;

    invoke-virtual {v0}, Lcom/bbm/util/cs;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    :try_start_1f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_22} :catch_e6

    move-result-wide v1

    :goto_23
    iget-object v5, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v5, v5, Lcom/bbm/util/a/g;->a:Lcom/bbm/d/a;

    iget-object v6, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v6, v6, Lcom/bbm/util/a/g;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v2

    iget-object v1, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v5, :cond_39

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_39
    iget-object v1, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v5, Lcom/bbm/d/fk;->t:Lcom/bbm/d/fk;

    if-ne v1, v5, :cond_11

    iget-object v1, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v1, v1, Lcom/bbm/util/a/g;->a:Lcom/bbm/d/a;

    iget-object v5, v2, Lcom/bbm/d/fg;->r:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;

    move-result-object v1

    iget-object v5, v1, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v5, v6, :cond_53

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_53
    invoke-static {v1}, Lcom/bbm/util/a/j;->a(Lcom/bbm/d/gm;)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v5}, Lcom/bbm/util/a/d;->a(Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/a/f;

    iget-object v1, v1, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v6, :cond_73

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_73
    iget-object v0, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v0, v0, Lcom/bbm/util/a/g;->h:Ljava/util/Map;

    iget-object v1, v2, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-static {v5}, Lcom/bbm/util/a/d;->a(Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_81
    iget-object v0, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v0, v0, Lcom/bbm/util/a/g;->g:Lcom/bbm/util/cs;

    invoke-virtual {v0}, Lcom/bbm/util/cs;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v0, v0, Lcom/bbm/util/a/g;->g:Lcom/bbm/util/cs;

    invoke-static {v3}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/bbm/util/cs;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    iput-object v3, v0, Lcom/bbm/util/cs;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/bbm/util/cs;->c()V

    :cond_a3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v1, v1, Lcom/bbm/util/a/g;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_b1
    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v3, v3, Lcom/bbm/util/a/g;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/a/f;

    iget-object v3, v0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v3, v4, :cond_b1

    iget-boolean v0, v0, Lcom/bbm/util/a/f;->b:Z

    if-nez v0, :cond_e9

    const/4 v0, 0x1

    :goto_d8
    move v1, v0

    goto :goto_b1

    :cond_da
    iget-object v0, p0, Lcom/bbm/util/a/i;->a:Lcom/bbm/util/a/g;

    iget-object v0, v0, Lcom/bbm/util/a/g;->c:Lcom/bbm/util/cr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    return-void

    :catch_e6
    move-exception v5

    goto/16 :goto_23

    :cond_e9
    move v0, v1

    goto :goto_d8
.end method
