.class final Lcom/bbm/ui/c/ge;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Lcom/bbm/l/d;


# instance fields
.field final synthetic a:Lcom/bbm/l/d/b/x;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;Ljava/lang/Boolean;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/c/ge;->c:Lcom/bbm/ui/c/fu;

    iput-object p2, p0, Lcom/bbm/ui/c/ge;->a:Lcom/bbm/l/d/b/x;

    iput-object p3, p0, Lcom/bbm/ui/c/ge;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/l/d/b/x;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/ge;->c:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->k(Lcom/bbm/ui/c/fu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ge;->c:Lcom/bbm/ui/c/fu;

    invoke-static {v1}, Lcom/bbm/ui/c/fu;->j(Lcom/bbm/ui/c/fu;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ge;->c:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/ge;->a:Lcom/bbm/l/d/b/x;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bbm/ui/c/ge;->c:Lcom/bbm/ui/c/fu;

    iget-object v1, p0, Lcom/bbm/ui/c/ge;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Ljava/lang/Boolean;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/bbm/ui/c/ge;->c:Lcom/bbm/ui/c/fu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Z)V

    const v0, 0x7f0e06db

    invoke-static {v0}, Lcom/bbm/util/fb;->b(I)V

    goto :goto_29
.end method
