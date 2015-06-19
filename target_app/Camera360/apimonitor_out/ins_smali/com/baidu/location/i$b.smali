.class public Lcom/baidu/location/i$b;
.super Landroid/content/BroadcastReceiver;
.field final synthetic a:Lcom/baidu/location/i;
.method public constructor <init>(Lcom/baidu/location/i;)V
.registers 2
iput-object p1, p0, Lcom/baidu/location/i$b;->a:Lcom/baidu/location/i;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/baidu/location/i$b;->a:Lcom/baidu/location/i;
invoke-static {v0}, Lcom/baidu/location/i;->a(Lcom/baidu/location/i;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "timer expire,request location..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/i$b;->a:Lcom/baidu/location/i;
invoke-static {v0}, Lcom/baidu/location/i;->do(Lcom/baidu/location/i;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/baidu/location/i$b;->a:Lcom/baidu/location/i;
invoke-static {v0}, Lcom/baidu/location/i;->do(Lcom/baidu/location/i;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_21
:cond_20
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/baidu/location/i$b;->a:Lcom/baidu/location/i;
invoke-static {v0}, Lcom/baidu/location/i;->if(Lcom/baidu/location/i;)Lcom/baidu/location/LocationClient;
move-result-object v0
invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestNotifyLocation()V
goto :goto_20
.end method