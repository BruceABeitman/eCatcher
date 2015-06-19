.class final Lcom/bbm/ui/c/hc;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Lcom/bbm/l/c/i;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gz;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gz;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/l/b/j;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->b(Lcom/bbm/ui/c/gz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_8f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->e(Lcom/bbm/ui/c/gz;)I

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->f(Lcom/bbm/ui/c/gz;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->c(Lcom/bbm/ui/c/gz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    iget-object v0, v0, Lcom/bbm/ui/c/gz;->a:Ljava/util/List;

    if-eqz v0, :cond_78

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    iget-object v0, v0, Lcom/bbm/ui/c/gz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3e
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/b/j;

    invoke-virtual {v0}, Lcom/bbm/l/b/j;->b()Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v0, v0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_56
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/b/j;

    iget-object v3, v0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual {v0}, Lcom/bbm/l/b/j;->c()V

    goto :goto_60

    :cond_78
    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    iput-object p1, v0, Lcom/bbm/ui/c/gz;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    iget-object v0, v0, Lcom/bbm/ui/c/gz;->b:Lcom/bbm/d/b/f;

    iget-object v0, v0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->f(Lcom/bbm/ui/c/gz;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->smoothScrollToPosition(I)V

    :goto_8e
    return-void

    :cond_8f
    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->f(Lcom/bbm/ui/c/gz;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->c(Lcom/bbm/ui/c/gz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->g(Lcom/bbm/ui/c/gz;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_bd

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->h(Lcom/bbm/ui/c/gz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->i(Lcom/bbm/ui/c/gz;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8e

    :cond_bd
    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->h(Lcom/bbm/ui/c/gz;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hc;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->i(Lcom/bbm/ui/c/gz;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8e
.end method
