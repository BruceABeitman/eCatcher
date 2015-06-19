.class final Lcom/bbm/ui/ft;
.super Lcom/bbm/j/k;
.source "SelfHeaderView.java"
.field final synthetic a:Lcom/bbm/ui/SelfHeaderView;
.method constructor <init>(Lcom/bbm/ui/SelfHeaderView;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/ft;->a:Lcom/bbm/ui/SelfHeaderView;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ft;->a:Lcom/bbm/ui/SelfHeaderView;
invoke-static {v0}, Lcom/bbm/ui/SelfHeaderView;->a(Lcom/bbm/ui/SelfHeaderView;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_47
iget-object v1, p0, Lcom/bbm/ui/ft;->a:Lcom/bbm/ui/SelfHeaderView;
invoke-static {v1}, Lcom/bbm/ui/SelfHeaderView;->a(Lcom/bbm/ui/SelfHeaderView;)Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/ft;->a:Lcom/bbm/ui/SelfHeaderView;
invoke-static {v1}, Lcom/bbm/ui/SelfHeaderView;->b(Lcom/bbm/ui/SelfHeaderView;)Lcom/bbm/ui/ObservingImageView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/ft;->a:Lcom/bbm/ui/SelfHeaderView;
invoke-static {v2}, Lcom/bbm/ui/SelfHeaderView;->a(Lcom/bbm/ui/SelfHeaderView;)Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v1, p0, Lcom/bbm/ui/ft;->a:Lcom/bbm/ui/SelfHeaderView;
invoke-static {v1}, Lcom/bbm/ui/SelfHeaderView;->c(Lcom/bbm/ui/SelfHeaderView;)Landroid/widget/TextView;
move-result-object v1
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/ft;->a:Lcom/bbm/ui/SelfHeaderView;
invoke-static {v1}, Lcom/bbm/ui/SelfHeaderView;->d(Lcom/bbm/ui/SelfHeaderView;)Landroid/widget/TextView;
move-result-object v1
iget-object v0, v0, Lcom/bbm/d/gp;->o:Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_47
return-void
.end method