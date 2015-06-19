.class final Lcom/bbm/ui/c/gs;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Landroid/view/View$OnLayoutChangeListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/gs;->b:Lcom/bbm/ui/c/fu;
iput-object p2, p0, Lcom/bbm/ui/c/gs;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
.registers 12
iget-object v0, p0, Lcom/bbm/ui/c/gs;->b:Lcom/bbm/ui/c/fu;
sub-int v1, p4, p2
invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;I)V
iget-object v0, p0, Lcom/bbm/ui/c/gs;->a:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
return-void
.end method