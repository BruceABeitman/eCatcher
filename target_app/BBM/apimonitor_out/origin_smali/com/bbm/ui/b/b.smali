.class final Lcom/bbm/ui/b/b;
.super Lcom/bbm/j/k;
.source "BBChannelDateOfBirthDialog.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/b/b;->a:Lcom/bbm/ui/b/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/b/b;->a:Lcom/bbm/ui/b/a;

    invoke-static {v0}, Lcom/bbm/ui/b/a;->a(Lcom/bbm/ui/b/a;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->f:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/ay;

    sget-object v1, Lcom/bbm/util/ay;->b:Lcom/bbm/util/ay;

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/bbm/ui/b/b;->a:Lcom/bbm/ui/b/a;

    invoke-static {v0}, Lcom/bbm/ui/b/a;->b(Lcom/bbm/ui/b/a;)Lcom/bbm/ui/b/f;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bbm/ui/b/b;->a:Lcom/bbm/ui/b/a;

    invoke-static {v0}, Lcom/bbm/ui/b/a;->b(Lcom/bbm/ui/b/a;)Lcom/bbm/ui/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/ui/b/f;->a()V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/bbm/ui/b/b;->a:Lcom/bbm/ui/b/a;

    invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V

    goto :goto_23
.end method
