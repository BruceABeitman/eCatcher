.class  Lcom/instagram/realtimeclient/RealtimeClient$5;
.super Landroid/content/BroadcastReceiver;
.source "RealtimeClient.java"
.field final synthetic this$0:Lcom/instagram/realtimeclient/RealtimeClient;
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$5;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
const-string v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$5;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;
#calls: Lcom/instagram/realtimeclient/RealtimeClient;->connect()V
invoke-static {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->access$000(Lcom/instagram/realtimeclient/RealtimeClient;)V
goto :goto_e
:cond_1e
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
goto :goto_e
.end method