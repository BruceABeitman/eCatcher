.class  Lcom/pinguo/lib/location/PGLocationManager$1;
.super Landroid/os/Handler;
.source "PGLocationManager.java"
.field final synthetic this$0:Lcom/pinguo/lib/location/PGLocationManager;
.method constructor <init>(Lcom/pinguo/lib/location/PGLocationManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/lib/location/PGLocationManager$1;->this$0:Lcom/pinguo/lib/location/PGLocationManager;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "handle msg="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_5e
:goto_1d
return-void
:pswitch_1e
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "request address out of time"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager$1;->this$0:Lcom/pinguo/lib/location/PGLocationManager;
const/4 v1, 0x2
#setter for: Lcom/pinguo/lib/location/PGLocationManager;->mErrorCode:I
invoke-static {v0, v1}, Lcom/pinguo/lib/location/PGLocationManager;->access$0(Lcom/pinguo/lib/location/PGLocationManager;I)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager$1;->this$0:Lcom/pinguo/lib/location/PGLocationManager;
const-string/jumbo v1, "request address out of time"
#setter for: Lcom/pinguo/lib/location/PGLocationManager;->mErrorMsg:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/lib/location/PGLocationManager;->access$1(Lcom/pinguo/lib/location/PGLocationManager;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager$1;->this$0:Lcom/pinguo/lib/location/PGLocationManager;
#getter for: Lcom/pinguo/lib/location/PGLocationManager;->mCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
invoke-static {v0}, Lcom/pinguo/lib/location/PGLocationManager;->access$2(Lcom/pinguo/lib/location/PGLocationManager;)Lcom/pinguo/lib/location/IPGLocationManager$Callback;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/lib/location/IPGLocationManager$Callback;->finallyExecute()V
goto :goto_1d
:pswitch_3e
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "get location fail"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager$1;->this$0:Lcom/pinguo/lib/location/PGLocationManager;
const/4 v1, 0x3
#setter for: Lcom/pinguo/lib/location/PGLocationManager;->mErrorCode:I
invoke-static {v0, v1}, Lcom/pinguo/lib/location/PGLocationManager;->access$0(Lcom/pinguo/lib/location/PGLocationManager;I)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager$1;->this$0:Lcom/pinguo/lib/location/PGLocationManager;
const-string/jumbo v1, "request address fail"
#setter for: Lcom/pinguo/lib/location/PGLocationManager;->mErrorMsg:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/lib/location/PGLocationManager;->access$1(Lcom/pinguo/lib/location/PGLocationManager;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/lib/location/PGLocationManager$1;->this$0:Lcom/pinguo/lib/location/PGLocationManager;
#getter for: Lcom/pinguo/lib/location/PGLocationManager;->mCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
invoke-static {v0}, Lcom/pinguo/lib/location/PGLocationManager;->access$2(Lcom/pinguo/lib/location/PGLocationManager;)Lcom/pinguo/lib/location/IPGLocationManager$Callback;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/lib/location/IPGLocationManager$Callback;->finallyExecute()V
goto :goto_1d
:pswitch_data_5e
.packed-switch 0x2
:pswitch_1e
:pswitch_3e
.end packed-switch
.end method