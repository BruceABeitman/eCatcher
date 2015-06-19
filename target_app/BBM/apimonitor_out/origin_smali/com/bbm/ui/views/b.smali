.class final Lcom/bbm/ui/views/b;
.super Lcom/bbm/j/k;
.source "ChannelFeaturedPostsView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/views/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/views/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->a(Lcom/bbm/ui/views/a;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->b(Lcom/bbm/ui/views/a;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->a(Lcom/bbm/ui/views/a;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_57

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ew;

    iget-object v1, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v1}, Lcom/bbm/ui/views/a;->c(Lcom/bbm/ui/views/a;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/d/ew;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v2}, Lcom/bbm/ui/views/a;->c(Lcom/bbm/ui/views/a;)Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bbm/d/ew;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v0, v2, :cond_51

    iget-object v0, v1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_5d

    :cond_51
    iget-object v0, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->b(Lcom/bbm/ui/views/a;)V

    goto :goto_11

    :cond_57
    iget-object v0, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->b(Lcom/bbm/ui/views/a;)V

    goto :goto_11

    :cond_5d
    iget-object v0, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->d(Lcom/bbm/ui/views/a;)V

    iget-object v0, p0, Lcom/bbm/ui/views/b;->a:Lcom/bbm/ui/views/a;

    invoke-static {v0}, Lcom/bbm/ui/views/a;->e(Lcom/bbm/ui/views/a;)Lcom/bbm/ui/ef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/ef;->c()V

    goto :goto_11
.end method
