.class  Lcom/blackberry/ids/LoginActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"
.field final synthetic a:Lcom/blackberry/ids/LoginActivity;
.method constructor <init>(Lcom/blackberry/ids/LoginActivity;)V
.registers 2
iput-object p1, p0, Lcom/blackberry/ids/LoginActivity$1;->a:Lcom/blackberry/ids/LoginActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.blackberry.ids.CANCEL_CHALLENGE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
const-string v1, "LoginActivity request_id=%s received CANCEL_CHALLENGE"
new-array v2, v5, [Ljava/lang/Object;
iget-object v3, p0, Lcom/blackberry/ids/LoginActivity$1;->a:Lcom/blackberry/ids/LoginActivity;
iget-object v3, v3, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/blackberry/ids/LoginActivity$1;->a:Lcom/blackberry/ids/LoginActivity;
invoke-static {v1}, Lcom/blackberry/ids/LoginActivity;->a(Lcom/blackberry/ids/LoginActivity;)V
:cond_20
const-string v1, "com.blackberry.ids.CALLBACK_COMPLETED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3a
const-string v0, "LoginActivity request_id=%s received CALLBACK_COMPLETED"
new-array v1, v5, [Ljava/lang/Object;
iget-object v2, p0, Lcom/blackberry/ids/LoginActivity$1;->a:Lcom/blackberry/ids/LoginActivity;
iget-object v2, v2, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$1;->a:Lcom/blackberry/ids/LoginActivity;
invoke-virtual {v0}, Lcom/blackberry/ids/LoginActivity;->finish()V
:cond_3a
return-void
.end method