.class final Lcom/bbm/ui/c/ia;
.super Lcom/bbm/j/k;
.source "UpdatesFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/ia;->a:Lcom/bbm/ui/c/hk;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/c/ia;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->F()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_44

    iget-object v0, p0, Lcom/bbm/ui/c/ia;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->F()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fz;

    iget-object v0, v0, Lcom/bbm/d/fz;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/c/ia;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    new-instance v2, Lcom/bbm/d/ca;

    invoke-direct {v2, v0}, Lcom/bbm/d/ca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_44
    return-void
.end method
