.class final Lcom/bbm/ui/c/fg;
.super Lcom/bbm/j/k;
.source "ProfileDetailsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/ff;
.method constructor <init>(Lcom/bbm/ui/c/ff;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v0}, Lcom/bbm/ui/c/ff;->isAdded()Z
move-result v0
if-eqz v0, :cond_72
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-static {v0}, Lcom/bbm/ui/c/ff;->a(Lcom/bbm/ui/c/ff;)Landroid/widget/TextView;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v0}, Lcom/bbm/ui/c/ff;->a()Lcom/bbm/d/gp;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/gp;->o:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v0}, Lcom/bbm/ui/c/ff;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e05d5
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_29
sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-static {v0}, Lcom/bbm/ui/c/ff;->b(Lcom/bbm/ui/c/ff;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v1}, Lcom/bbm/ui/c/ff;->getActivity()Landroid/app/Activity;
move-result-object v1
const-string v2, ""
iget-object v3, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v3}, Lcom/bbm/ui/c/ff;->a()Lcom/bbm/d/gp;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/gp;->b:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v0}, Lcom/bbm/ui/c/ff;->a()Lcom/bbm/d/gp;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/d/gp;->x:Z
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-static {v0}, Lcom/bbm/ui/c/ff;->c(Lcom/bbm/ui/c/ff;)Lcom/bbm/ui/LocationTimezoneContainer;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/LocationTimezoneContainer;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-static {v0}, Lcom/bbm/ui/c/ff;->c(Lcom/bbm/ui/c/ff;)Lcom/bbm/ui/LocationTimezoneContainer;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v1}, Lcom/bbm/ui/c/ff;->a()Lcom/bbm/d/gp;
move-result-object v1
invoke-static {v1}, Lcom/bbm/d/b/a;->c(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/LocationTimezoneContainer;->setLocation(Ljava/lang/String;)V
:cond_72
:goto_72
return-void
:cond_73
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-virtual {v0}, Lcom/bbm/ui/c/ff;->a()Lcom/bbm/d/gp;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/gp;->o:Ljava/lang/String;
goto :goto_29
:cond_7c
iget-object v0, p0, Lcom/bbm/ui/c/fg;->a:Lcom/bbm/ui/c/ff;
invoke-static {v0}, Lcom/bbm/ui/c/ff;->c(Lcom/bbm/ui/c/ff;)Lcom/bbm/ui/LocationTimezoneContainer;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/bbm/ui/LocationTimezoneContainer;->setVisibility(I)V
goto :goto_72
.end method