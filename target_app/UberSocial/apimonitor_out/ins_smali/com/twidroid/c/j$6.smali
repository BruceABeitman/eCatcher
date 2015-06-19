.class  Lcom/twidroid/c/j$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/c/a/f;
.field  a:Landroid/app/ProgressDialog;
.field final synthetic b:Lcom/twidroid/c/j;
.method constructor <init>(Lcom/twidroid/c/j;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(IILjava/lang/String;)V
.registers 4
return-void
.end method
.method public a(ILjava/lang/String;)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->i:Landroid/widget/FrameLayout;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->m:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->k:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V
return-void
.end method
.method public b(ILjava/lang/String;)V
.registers 3
return-void
.end method
.method public c(ILjava/lang/String;)V
.registers 3
return-void
.end method
.method public d(I)V
.registers 5
const-string v0, "AutoCompleteDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Progess "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->j:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "%"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public e(I)Ljava/lang/CharSequence;
.registers 3
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->c:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public o()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->i:Landroid/widget/FrameLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->m:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->k:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iput-boolean v2, v0, Lcom/twidroid/c/j;->e:Z
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->l:Landroid/widget/Button;
const v1, 0x7f0c02c3
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->l:Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/j$6$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/j$6$1;-><init>(Lcom/twidroid/c/j$6;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/c/j$6;->b:Lcom/twidroid/c/j;
iget-object v0, v0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V
return-void
.end method
.method public p()V
.registers 1
return-void
.end method
.method public q()V
.registers 1
return-void
.end method
.method public r()V
.registers 1
return-void
.end method