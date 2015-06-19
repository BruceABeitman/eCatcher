.class final Lcom/bbm/ui/c/co;
.super Lcom/bbm/d/b/f;
.source "GroupMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/ui/c/cx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ck;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/c/cx;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v2, v2, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    return-object v0

    :cond_1f
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ac;

    new-instance v3, Lcom/bbm/ui/c/cx;

    iget-object v4, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v4, v4, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;

    iget-object v4, v4, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v5, v0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/g/o;->c:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/bbm/ui/c/cx;-><init>(Lcom/bbm/g/ac;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4c
    iget-object v0, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v2, v2, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/g/a;->j:Z

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v2, v2, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->p(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v2

    if-eqz v2, :cond_78

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1e

    :cond_78
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/p;

    new-instance v3, Lcom/bbm/ui/c/cx;

    iget-object v4, p0, Lcom/bbm/ui/c/co;->a:Lcom/bbm/ui/c/ck;

    iget-object v4, v4, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;

    iget-object v4, v4, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v5, v0, Lcom/bbm/g/p;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/g/o;->c:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/bbm/ui/c/cx;-><init>(Lcom/bbm/g/p;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_a5
    new-instance v0, Lcom/bbm/ui/c/cp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/cp;-><init>(Lcom/bbm/ui/c/co;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    goto/16 :goto_1e
.end method
