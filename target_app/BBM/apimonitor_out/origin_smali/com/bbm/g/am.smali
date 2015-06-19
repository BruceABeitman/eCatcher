.class public final Lcom/bbm/g/am;
.super Lcom/bbm/g/ao;
.source "GroupsModel.java"


# instance fields
.field private final b:Lcom/bbm/util/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cu",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bbm/g/ao;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V

    new-instance v0, Lcom/bbm/util/cu;

    invoke-direct {v0}, Lcom/bbm/util/cu;-><init>()V

    iput-object v0, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/bbm/j/w;
    .registers 2

    invoke-super {p0}, Lcom/bbm/g/ao;->a()Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    iget-object v1, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    invoke-virtual {v1, p1}, Lcom/bbm/util/cu;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    invoke-virtual {v0, p1}, Lcom/bbm/util/cu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_12
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/bbm/g/ct;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->a(Lcom/bbm/g/ct;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    iget-object v1, v0, Lcom/bbm/util/cu;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1, p2}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    :cond_16
    invoke-virtual {v0}, Lcom/bbm/util/cu;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/util/cu;->a:Lcom/bbm/j/i;

    invoke-virtual {v0}, Lcom/bbm/j/i;->a()V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    invoke-virtual {v0, p1}, Lcom/bbm/util/cu;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    invoke-virtual {v0}, Lcom/bbm/util/cu;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/util/cu;->a:Lcom/bbm/j/i;

    invoke-virtual {v0}, Lcom/bbm/j/i;->a()V

    goto :goto_22
.end method

.method public final bridge synthetic b()Lcom/bbm/j/w;
    .registers 2

    invoke-super {p0}, Lcom/bbm/g/ao;->b()Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    invoke-virtual {v0, p1}, Lcom/bbm/util/cu;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/g/am;->b:Lcom/bbm/util/cu;

    invoke-virtual {v0, p1}, Lcom/bbm/util/cu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    move v0, v1

    goto :goto_18
.end method

.method public final bridge synthetic c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/af;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/af;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lcom/bbm/j/w;
    .registers 2

    invoke-super {p0}, Lcom/bbm/g/ao;->c()Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->c(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/ad;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/ad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/bbm/j/w;
    .registers 2

    invoke-super {p0}, Lcom/bbm/g/ao;->d()Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->d(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/y;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/y;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/bbm/j/w;
    .registers 2

    invoke-super {p0}, Lcom/bbm/g/ao;->e()Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->e(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->f(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/s;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/s;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->h(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->i(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/b;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/bbm/g/ao;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->j(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k(Ljava/lang/String;)Lcom/bbm/g/v;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->k(Ljava/lang/String;)Lcom/bbm/g/v;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l(Ljava/lang/String;)Lcom/bbm/g/t;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->l(Ljava/lang/String;)Lcom/bbm/g/t;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->m(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->n(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o(Ljava/lang/String;)Lcom/bbm/g/q;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->o(Ljava/lang/String;)Lcom/bbm/g/q;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->p(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q(Ljava/lang/String;)Lcom/bbm/g/o;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->r(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->s(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t(Ljava/lang/String;)Lcom/bbm/g/a;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u(Ljava/lang/String;)Lcom/bbm/util/bl;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/g/ao;->u(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    return-object v0
.end method
