.class final Lcom/bbm/setup/l;
.super Ljava/lang/Object;
.source "LoadingActivity.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic a:Lcom/bbm/setup/LoadingActivity;
.method constructor <init>(Lcom/bbm/setup/LoadingActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGlobalLayout()V
.registers 3
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->m(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->n(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->n(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I
move-result v1
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->n(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->n(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->o(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->o(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I
move-result v1
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->o(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->o(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->p(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->p(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I
move-result v1
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->p(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->p(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->k(Lcom/bbm/setup/LoadingActivity;)V
iget-object v0, p0, Lcom/bbm/setup/l;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->l(Lcom/bbm/setup/LoadingActivity;)V
return-void
.end method