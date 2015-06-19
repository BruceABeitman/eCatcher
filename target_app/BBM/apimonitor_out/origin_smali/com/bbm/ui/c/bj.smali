.class final Lcom/bbm/ui/c/bj;
.super Lcom/bbm/j/k;
.source "ChatsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/bj;->a:Lcom/bbm/ui/c/at;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/bj;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->j(Lcom/bbm/ui/c/at;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bbm/ui/c/bj;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->k(Lcom/bbm/ui/c/at;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bj;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->l(Lcom/bbm/ui/c/at;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/bbm/ui/c/bj;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->k(Lcom/bbm/ui/c/at;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bj;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->l(Lcom/bbm/ui/c/at;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_28
.end method
