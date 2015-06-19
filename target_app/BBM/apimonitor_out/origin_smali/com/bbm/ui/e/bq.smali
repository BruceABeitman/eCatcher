.class final Lcom/bbm/ui/e/bq;
.super Lcom/bbm/j/u;
.source "ReinviteHolder.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/bp;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/bp;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 6

    const/16 v4, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v1}, Lcom/bbm/ui/e/bp;->b(Lcom/bbm/ui/e/bp;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v2}, Lcom/bbm/ui/e/bp;->a(Lcom/bbm/ui/e/bp;)Lcom/bbm/d/fg;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    if-eqz v1, :cond_88

    iget-object v2, v1, Lcom/bbm/d/gp;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_88

    iget-object v2, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v2}, Lcom/bbm/ui/e/bp;->b(Lcom/bbm/ui/e/bp;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v3}, Lcom/bbm/ui/e/bp;->a(Lcom/bbm/ui/e/bp;)Lcom/bbm/d/fg;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/bbm/d/z;->c(Ljava/lang/String;)Lcom/bbm/d/bj;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v2, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v2}, Lcom/bbm/ui/e/bp;->b(Lcom/bbm/ui/e/bp;)Lcom/bbm/d/a;

    move-result-object v2

    new-instance v3, Lcom/bbm/d/bg;

    invoke-direct {v3}, Lcom/bbm/d/bg;-><init>()V

    iget-object v1, v1, Lcom/bbm/d/gp;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/d/bg;->c(Ljava/lang/String;)Lcom/bbm/d/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v1}, Lcom/bbm/ui/e/bp;->c(Lcom/bbm/ui/e/bp;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0e04a5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/bg;->a(Ljava/lang/String;)Lcom/bbm/d/bg;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v0}, Lcom/bbm/ui/e/bp;->d(Lcom/bbm/ui/e/bp;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v0}, Lcom/bbm/ui/e/bp;->e(Lcom/bbm/ui/e/bp;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v0}, Lcom/bbm/ui/e/bp;->f(Lcom/bbm/ui/e/bp;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/bq;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v1}, Lcom/bbm/ui/e/bp;->c(Lcom/bbm/ui/e/bp;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e028d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :cond_88
    return v0
.end method
