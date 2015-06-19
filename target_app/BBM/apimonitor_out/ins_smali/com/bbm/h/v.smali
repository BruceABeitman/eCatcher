.class final Lcom/bbm/h/v;
.super Lcom/bbm/j/k;
.source "AddContactsFragment.java"
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/bbm/h/m;
.method constructor <init>(Lcom/bbm/h/m;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lcom/bbm/h/v;->b:Lcom/bbm/h/m;
iput-object p2, p0, Lcom/bbm/h/v;->a:Landroid/view/View;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/h/v;->b:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->h(Lcom/bbm/h/m;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_40
iget-object v0, p0, Lcom/bbm/h/v;->b:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->i(Lcom/bbm/h/m;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/h/v;->b:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->j(Lcom/bbm/h/m;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V
:goto_27
iget-object v0, p0, Lcom/bbm/h/v;->b:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->a(Lcom/bbm/h/m;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/bbm/h/v;->a:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_3f
return-void
:cond_40
iget-object v0, p0, Lcom/bbm/h/v;->b:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->i(Lcom/bbm/h/m;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/h/v;->b:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->j(Lcom/bbm/h/m;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V
goto :goto_27
:cond_53
iget-object v0, p0, Lcom/bbm/h/v;->a:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_3f
.end method