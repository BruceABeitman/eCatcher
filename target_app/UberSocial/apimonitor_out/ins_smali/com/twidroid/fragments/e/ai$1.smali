.class  Lcom/twidroid/fragments/e/ai$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/ai;
.method constructor <init>(Lcom/twidroid/fragments/e/ai;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/ai$1;->a:Lcom/twidroid/fragments/e/ai;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "BROADCAST_LIST_USERS_MODIFIED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_47
const-string v0, "SingleListFragment"
const-string v1, "List users modified"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, ""
const-string v1, "EXTRA_LIST_URI"
invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_23
const-string v0, "EXTRA_LIST_URI"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_23
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_47
iget-object v1, p0, Lcom/twidroid/fragments/e/ai$1;->a:Lcom/twidroid/fragments/e/ai;
invoke-static {v1}, Lcom/twidroid/fragments/e/ai;->a(Lcom/twidroid/fragments/e/ai;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_47
iget-object v1, p0, Lcom/twidroid/fragments/e/ai$1;->a:Lcom/twidroid/fragments/e/ai;
invoke-static {v1}, Lcom/twidroid/fragments/e/ai;->a(Lcom/twidroid/fragments/e/ai;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/twidroid/fragments/e/ai$1;->a:Lcom/twidroid/fragments/e/ai;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/ai;->a(Lcom/twidroid/fragments/e/ai;Z)Z
:cond_47
return-void
.end method