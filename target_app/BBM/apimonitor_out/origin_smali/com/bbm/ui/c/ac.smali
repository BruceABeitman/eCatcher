.class final Lcom/bbm/ui/c/ac;
.super Lcom/bbm/j/k;
.source "ChannelDetailsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->d(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_3f

    :cond_3a
    iget-object v0, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->e(Lcom/bbm/ui/c/l;)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/bbm/ui/c/ac;->a:Lcom/bbm/ui/c/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;Z)V

    goto :goto_3f
.end method
