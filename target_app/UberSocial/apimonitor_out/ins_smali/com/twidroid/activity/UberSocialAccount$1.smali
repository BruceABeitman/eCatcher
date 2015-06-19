.class  Lcom/twidroid/activity/UberSocialAccount$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount;
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccount$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->a(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->b(Lcom/twidroid/activity/UberSocialAccount;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_31
:cond_31
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v0}, Lcom/twidroid/activity/UberSocialAccount;->a(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->c(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->d(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->a(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->d(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/CheckBox;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->d(Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->e(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/CheckBox;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->b(Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->b(Lcom/twidroid/activity/UberSocialAccount;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
if-lez v0, :cond_aa
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_aa
new-instance v0, Lcom/twidroid/activity/x;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/x;-><init>(Lcom/twidroid/activity/UberSocialAccount;Lcom/twidroid/activity/UberSocialAccount$1;)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/twidroid/model/twitter/c;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialAccount$1;->a:Lcom/twidroid/activity/UberSocialAccount;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/twidroid/activity/x;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v1, " - Lcom/twidroid/activity/UberSocialAccount$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method