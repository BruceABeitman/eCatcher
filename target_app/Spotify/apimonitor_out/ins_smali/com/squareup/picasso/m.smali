.class final Lcom/squareup/picasso/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field private final a:Lcom/squareup/picasso/j;
.method constructor <init>(Lcom/squareup/picasso/j;)V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
iput-object p1, p0, Lcom/squareup/picasso/m;->a:Lcom/squareup/picasso/j;
return-void
.end method
.method final a()V
.registers 3
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "android.intent.action.AIRPLANE_MODE"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/squareup/picasso/m;->a:Lcom/squareup/picasso/j;
iget-boolean v1, v1, Lcom/squareup/picasso/j;->m:Z
if-eqz v1, :cond_15
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
:cond_15
iget-object v1, p0, Lcom/squareup/picasso/m;->a:Lcom/squareup/picasso/j;
iget-object v1, v1, Lcom/squareup/picasso/j;->b:Landroid/content/Context;
invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
const/4 v1, 0x0
if-nez p2, :cond_4
:goto_3
:cond_3
return-void
:cond_4
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v2, "android.intent.action.AIRPLANE_MODE"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_33
const-string v0, "state"
invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3
iget-object v0, p0, Lcom/squareup/picasso/m;->a:Lcom/squareup/picasso/j;
const-string v2, "state"
invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v2
iget-object v3, v0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
iget-object v4, v0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
const/16 v5, 0xa
if-eqz v2, :cond_31
const/4 v0, 0x1
:goto_29
invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_3
:cond_31
move v0, v1
goto :goto_29
:cond_33
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3
const-string v0, "connectivity"
invoke-static {p1, v0}, Lcom/squareup/picasso/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
iget-object v1, p0, Lcom/squareup/picasso/m;->a:Lcom/squareup/picasso/j;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
iget-object v2, v1, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
iget-object v1, v1, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
const/16 v3, 0x9
invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_3
.end method