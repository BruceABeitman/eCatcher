.class final Lcom/bbm/ui/c/gq;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Lcom/bbm/l/c/d;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gp;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gp;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    packed-switch p1, :pswitch_data_34

    iget-object v0, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    iget-object v0, v0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->w(Lcom/bbm/ui/c/fu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_f
    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    iget-object v0, v0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->l(Lcom/bbm/ui/c/fu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    iget-object v1, v1, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    const v2, 0x7f0e06dd

    invoke-virtual {v1, v2}, Lcom/bbm/ui/c/fu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    iget-object v0, v0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-virtual {v0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_f

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method public final a(Lcom/bbm/l/b/m;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    iget-object v0, v0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->v(Lcom/bbm/ui/c/fu;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    iget-object v0, v0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->w(Lcom/bbm/ui/c/fu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/bbm/ui/c/gq;->a:Lcom/bbm/ui/c/gp;

    iget-object v0, v0, Lcom/bbm/ui/c/gp;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0, p1}, Lcom/bbm/ui/c/fu;->b(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/m;)V

    goto :goto_1b
.end method
