.class  Lcom/gindin/zmanim/android/ZmanimActivity$1;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"
.implements Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$1;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public error(Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
.registers 4
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$1;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#calls: Lcom/gindin/zmanim/android/ZmanimActivity;->rebuildUI(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
invoke-static {v0, p2, p1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$100(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
return-void
.end method
.method public locationChanged(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
.registers 4
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$1;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
const/4 v1, 0x0
#calls: Lcom/gindin/zmanim/android/ZmanimActivity;->rebuildUI(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
invoke-static {v0, p1, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$100(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
return-void
.end method
.method public onProgress(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$1;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$1;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$1;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_1e
return-void
.end method