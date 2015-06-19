.class final Lcom/bbm/ui/c/ad;
.super Lcom/bbm/j/k;
.source "ChannelDetailsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/ad;->a:Lcom/bbm/ui/c/l;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/c/ad;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/bbm/ui/c/ad;->a:Lcom/bbm/ui/c/l;

    iget-object v1, p0, Lcom/bbm/ui/c/ad;->a:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->g(Lcom/bbm/ui/c/l;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/ad;->a:Lcom/bbm/ui/c/l;

    invoke-static {v2}, Lcom/bbm/ui/c/l;->f(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->Q(Ljava/lang/String;)Lcom/bbm/d/em;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;Lcom/bbm/d/em;)V

    :cond_25
    return-void
.end method
