.class  Lcom/twidroid/c/m$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/m;
.method constructor <init>(Lcom/twidroid/c/m;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/m$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v0}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v0
if-eqz v0, :cond_c6
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.SEND"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "android.intent.extra.SUBJECT"
iget-object v2, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-virtual {v2}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v2
const v3, 0x7f0c00d4
invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
const-string v1, "android.intent.extra.TEXT"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v3}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v3
iget-object v3, v3, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v3}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/DirectMessage;->p()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-virtual {v3}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v3
const v4, 0x7f0c00d3
invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "direct_message"
iget-object v2, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v2}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "direct_message_id"
iget-object v2, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v2}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "name"
iget-object v2, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v2}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v2
iget-object v2, v2, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "screenname"
iget-object v2, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v2}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v2
iget-object v2, v2, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "avatar"
iget-object v2, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-static {v2}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "text/plain"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-virtual {v1}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_c6
iget-object v0, p0, Lcom/twidroid/c/m$5;->a:Lcom/twidroid/c/m;
invoke-virtual {v0}, Lcom/twidroid/c/m;->dismiss()V
const-string v1, " - Lcom/twidroid/c/m$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method