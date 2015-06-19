.class final Lcom/bbm/ui/c/ib;
.super Lcom/bbm/j/k;
.source "UpdatesFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/ib;->a:Lcom/bbm/ui/c/hk;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/c/ib;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->g(Lcom/bbm/ui/c/hk;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/ew;

    iget-object v2, v0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v3, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;

    if-ne v2, v3, :cond_10

    iget-object v1, p0, Lcom/bbm/ui/c/ib;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/util/ew;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bbm/d/bd;

    invoke-direct {v2, v0}, Lcom/bbm/d/bd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_36
    return-void
.end method
