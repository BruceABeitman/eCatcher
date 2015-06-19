.class  Lcom/twidroid/activity/UberSocialAccount$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount;
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccount$4; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f090090
const/16 v1, 0x8
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v0}, Lcom/twidroid/activity/UberSocialAccount;->g(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/Spinner;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
if-nez v0, :cond_4a
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v0, v2}, Lcom/twidroid/activity/UberSocialAccount;->a(Lcom/twidroid/activity/UberSocialAccount;Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v0}, Lcom/twidroid/activity/UberSocialAccount;->c(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->j:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v0, v3}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->i:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
:goto_41
const-string v1, " - Lcom/twidroid/activity/UberSocialAccount$4; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_42
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->i:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_41
:cond_4a
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v0, v3}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v0}, Lcom/twidroid/activity/UberSocialAccount;->c(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->j:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->i:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v0}, Lcom/twidroid/activity/UberSocialAccount;->g(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/Spinner;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_7e
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/activity/UberSocialAccount;->a(Lcom/twidroid/activity/UberSocialAccount;Z)V
goto :goto_41
:cond_7e
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$4;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v0, v2}, Lcom/twidroid/activity/UberSocialAccount;->a(Lcom/twidroid/activity/UberSocialAccount;Z)V
goto :goto_41
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccount$4; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccount$4; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method