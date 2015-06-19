.class public Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
.super Landroid/os/AsyncTask;
.source "AbstractLocationService.java"
.field final synthetic this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;
.method protected constructor <init>(Lcom/pinguo/lib/location/service/AbstractLocationService;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/location/Location;
invoke-virtual {p0, p1}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->doInBackground([Landroid/location/Location;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Landroid/location/Location;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected onCancelled()V
.registers 3
invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V
invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "this reverse geocode task is canceled"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->onPostExecute(Ljava/lang/String;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/String;)V
.registers 4
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
if-eqz p1, :cond_13
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_13
iget-object v1, p0, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;
iget-object v1, v1, Lcom/pinguo/lib/location/service/AbstractLocationService;->mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
invoke-interface {v1, p1}, Lcom/pinguo/lib/location/IPGLocationManager$Callback;->postLocExecute(Ljava/lang/Object;)V
:goto_12
return-void
:cond_13
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, 0x3
iput v1, v0, Landroid/os/Message;->what:I
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/lib/location/PGLocationManager;->getHandler()Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_12
.end method
.method protected onPreExecute()V
.registers 2
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
iget-object v0, p0, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;
iget-object v0, v0, Lcom/pinguo/lib/location/service/AbstractLocationService;->mAddressCallback:Lcom/pinguo/lib/location/IPGLocationManager$Callback;
invoke-interface {v0}, Lcom/pinguo/lib/location/IPGLocationManager$Callback;->preLocExecute()V
return-void
.end method