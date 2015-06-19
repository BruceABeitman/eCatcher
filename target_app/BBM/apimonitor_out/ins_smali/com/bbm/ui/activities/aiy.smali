.class final Lcom/bbm/ui/activities/aiy;
.super Lcom/bbm/j/k;
.source "ViewChannelPostActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/aiy;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
const/16 v3, 0x8
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/aiy;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->m(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/j/x;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/x;->b()Z
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/aiy;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->m(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/j/x;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/x;->d()Z
move-result v1
if-eqz v1, :cond_4c
iget-object v0, p0, Lcom/bbm/ui/activities/aiy;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/aiy;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->m(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/j/x;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/x;->e()Ljava/lang/String;
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->n:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->q:Landroid/widget/ProgressBar;
invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->p:Landroid/widget/ImageView;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->o:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f090158
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->o:Landroid/widget/TextView;
const v1, 0x7f0e01cd
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:goto_4b
return-void
:cond_4c
if-eqz v0, :cond_78
iget-object v0, p0, Lcom/bbm/ui/activities/aiy;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->n:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->q:Landroid/widget/ProgressBar;
invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->p:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->o:Landroid/widget/TextView;
const v2, 0x7f0e01c9
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->o:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f09000f
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_4b
:cond_78
iget-object v0, p0, Lcom/bbm/ui/activities/aiy;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->n:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_4b
.end method