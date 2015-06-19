.class final Lcom/bbm/ui/c/gp;
.super Lcom/bbm/j/k;
.source "StickerDetailsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/ui/c/fu;->b()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->A()Lcom/bbm/j/w;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->m(Lcom/bbm/ui/c/fu;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/b/m;

    invoke-interface {v3}, Lcom/bbm/j/w;->b()Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v4}, Lcom/bbm/ui/c/fu;->q(Lcom/bbm/ui/c/fu;)Lcom/bbm/ui/c/gy;

    move-result-object v4

    sget-object v5, Lcom/bbm/ui/c/gy;->d:Lcom/bbm/ui/c/gy;

    if-ne v4, v5, :cond_27

    :cond_26
    :goto_26
    return-void

    :cond_27
    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->r(Lcom/bbm/ui/c/fu;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->s(Lcom/bbm/ui/c/fu;)Z

    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gj;

    iget-object v4, v0, Lcom/bbm/d/gj;->g:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_40

    iget-object v4, v0, Lcom/bbm/d/gj;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v5}, Lcom/bbm/ui/c/fu;->t(Lcom/bbm/ui/c/fu;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-boolean v0, v0, Lcom/bbm/d/gj;->d:Z

    if-eqz v0, :cond_109

    move v0, v1

    :goto_65
    iget-object v3, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v3}, Lcom/bbm/ui/c/fu;->u(Lcom/bbm/ui/c/fu;)Lcom/bbm/util/bo;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v4}, Lcom/bbm/ui/c/fu;->t(Lcom/bbm/ui/c/fu;)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_7c

    :goto_73
    new-instance v0, Lcom/bbm/ui/c/gq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/gq;-><init>(Lcom/bbm/ui/c/gp;)V

    invoke-static {v3, v4, v1, v0}, Lcom/bbm/l/c/b;->a(Lcom/bbm/util/bo;Ljava/lang/String;ZLcom/bbm/l/c/d;)V

    goto :goto_26

    :cond_7c
    move v1, v2

    goto :goto_73

    :cond_7e
    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/gj;

    iget-object v3, v1, Lcom/bbm/d/gj;->g:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v3, v4, :cond_88

    iget-object v3, v0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/bbm/d/gj;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->d:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->k(Lcom/bbm/ui/c/fu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v1}, Lcom/bbm/ui/c/fu;->j(Lcom/bbm/ui/c/fu;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_26

    :cond_c7
    iget-object v1, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v1}, Lcom/bbm/ui/c/fu;->q(Lcom/bbm/ui/c/fu;)Lcom/bbm/ui/c/gy;

    move-result-object v1

    sget-object v2, Lcom/bbm/ui/c/gy;->a:Lcom/bbm/ui/c/gy;

    if-ne v1, v2, :cond_26

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/l/b/m;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    sget-object v2, Lcom/bbm/ui/c/gy;->g:Lcom/bbm/ui/c/gy;

    invoke-static {v1, v2}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    iget-object v1, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    iget-object v0, v0, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bbm/ui/c/fu;->d(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_ed
    iget-object v1, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    const-string v1, "lANjs2j"

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/l/b/m;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->f:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    goto/16 :goto_26

    :cond_100
    iget-object v0, p0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->e:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    goto/16 :goto_26

    :cond_109
    move v0, v2

    goto/16 :goto_65
.end method
