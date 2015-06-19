.class Lcom/twidroid/c/j$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/j$6;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/j$6;


# direct methods
.method constructor <init>(Lcom/twidroid/c/j$6;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/j$6$1;->a:Lcom/twidroid/c/j$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/j$6$1;->a:Lcom/twidroid/c/j$6;

    iget-object v0, v0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;

    iget-object v0, v0, Lcom/twidroid/c/j;->n:Lcom/twidroid/net/c/k;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/c/j$6$1;->a:Lcom/twidroid/c/j$6;

    iget-object v0, v0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;

    iget-object v0, v0, Lcom/twidroid/c/j;->n:Lcom/twidroid/net/c/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/c/k;->b(Z)Z

    iget-object v0, p0, Lcom/twidroid/c/j$6$1;->a:Lcom/twidroid/c/j$6;

    iget-object v0, v0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twidroid/c/j;->n:Lcom/twidroid/net/c/k;

    iget-object v0, p0, Lcom/twidroid/c/j$6$1;->a:Lcom/twidroid/c/j$6;

    iget-object v0, v0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;

    iget-object v0, v0, Lcom/twidroid/c/j;->l:Landroid/widget/Button;

    const v1, 0x7f0c02c3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/twidroid/c/j$6$1;->a:Lcom/twidroid/c/j$6;

    iget-object v0, v0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;

    invoke-static {v0}, Lcom/twidroid/c/j;->a(Lcom/twidroid/c/j;)V

    iget-object v0, p0, Lcom/twidroid/c/j$6$1;->a:Lcom/twidroid/c/j$6;

    iget-object v0, v0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;

    iget-object v0, v0, Lcom/twidroid/c/j;->l:Landroid/widget/Button;

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_25
.end method
