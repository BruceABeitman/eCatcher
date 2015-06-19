.class  Lcom/baidu/location/LocationClient$1;
.super Ljava/lang/Object;
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/baidu/location/LocationClient;
.method constructor <init>(Lcom/baidu/location/LocationClient;)V
.registers 2
iput-object p1, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/baidu/location/LocationClient$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
new-instance v1, Landroid/os/Messenger;
invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-static {v0}, Lcom/baidu/location/LocationClient;->char(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
move-result-object v0
if-nez v0, :cond_1d
const-string/jumbo v0, "baidu_location_Client"
const-string/jumbo v1, "server not connected"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:goto_1c
:cond_1c
const-string v1, " - Lcom/baidu/location/LocationClient$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-static {v0, v2}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Z)Z
const-string/jumbo v0, "baidu_location_client"
const-string/jumbo v1, "baidu location connected ..."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
const/16 v1, 0xb
:try_start_2e
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-static {v1}, Lcom/baidu/location/LocationClient;->int(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
move-result-object v1
iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
iget-object v1, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-static {v1}, Lcom/baidu/location/LocationClient;->long(Lcom/baidu/location/LocationClient;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v1, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-static {v1}, Lcom/baidu/location/LocationClient;->char(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Z)Z
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->do(Lcom/baidu/location/LocationClient;Z)Z
const-string/jumbo v0, "baidu_location_Client"
const-string/jumbo v1, "bindService ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-static {v0}, Lcom/baidu/location/LocationClient;->byte(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
invoke-static {v0}, Lcom/baidu/location/LocationClient;->try(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$a;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:try_end_77
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_77} :catch_78
goto :goto_1c
:catch_78
move-exception v0
goto :goto_1c
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/baidu/location/LocationClient$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v0, p0, Lcom/baidu/location/LocationClient$1;->a:Lcom/baidu/location/LocationClient;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Z)Z
const-string/jumbo v0, "baidu_location_Client"
const-string/jumbo v1, "unbindservice..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/baidu/location/LocationClient$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method