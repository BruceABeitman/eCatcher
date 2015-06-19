.class final Lcom/bbm/ui/c/br;
.super Lcom/bbm/d/b/q;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/q",
        "<",
        "Lcom/bbm/ui/gp",
        "<",
        "Lcom/bbm/d/gp;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/bm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/bm;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V

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
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/gp;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bbm/ui/c/br;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->n(Lcom/bbm/ui/c/bm;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    const-string v2, "defaultCategory"

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v2, "value"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ea;

    iget-wide v7, v0, Lcom/bbm/d/ea;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcom/bbm/ui/gp;

    iget-wide v9, v0, Lcom/bbm/d/ea;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/bbm/d/a;->V(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/eb;

    iget-object v0, v0, Lcom/bbm/d/eb;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    :cond_8d
    iget-object v0, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->o(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/b/n;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;

    iget-object v1, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_b5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_b5
    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/gp;

    if-nez v1, :cond_c6

    const-string v0, "ContactsFragment: Missing section"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_9b

    :cond_c6
    iget-object v1, v1, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_cc
    move-object v0, v2

    goto/16 :goto_a
.end method

.method public final b()Z
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->P()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return v2

    :cond_12
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    const-string v4, "defaultCategory"

    invoke-virtual {v1, v4}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v4, :cond_59

    move v1, v2

    :goto_26
    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ea;

    iget-wide v4, v0, Lcom/bbm/d/ea;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/bbm/ui/c/br;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v4}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bbm/d/a;->V(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v2

    :goto_53
    move v1, v0

    goto :goto_30

    :cond_55
    move v2, v1

    goto :goto_11

    :cond_57
    move v0, v1

    goto :goto_53

    :cond_59
    move v1, v0

    goto :goto_26
.end method
