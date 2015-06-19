.class  Lcom/gindin/zmanim/android/ZmanimActivity$2;
.super Landroid/os/AsyncTask;
.source "ZmanimActivity.java"
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 5
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#calls: Lcom/gindin/zmanim/android/ZmanimActivity;->setupViewListeners()V
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$200(Lcom/gindin/zmanim/android/ZmanimActivity;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-virtual {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/ICUAndroidBridge;->create(Landroid/content/res/AssetManager;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
new-instance v1, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-direct {v1, v2}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;-><init>(Landroid/app/Activity;)V
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-static {v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$302(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$300(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
move-result-object v0
invoke-static {v0}, Lcom/gindin/util/LogUtils;->setLocationHandler(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V
const/4 v0, 0x0
return-object v0
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity$2;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 8
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
new-instance v1, Landroid/view/GestureDetector;
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
new-instance v3, Lcom/gindin/zmanim/android/ZmanimActivity$ZmanimGestureListener;
iget-object v4, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
const/4 v5, 0x0
invoke-direct {v3, v4, v5}, Lcom/gindin/zmanim/android/ZmanimActivity$ZmanimGestureListener;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/ZmanimActivity$1;)V
invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->gestureDetector:Landroid/view/GestureDetector;
invoke-static {v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$402(Lcom/gindin/zmanim/android/ZmanimActivity;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$300(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
move-result-object v0
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$2;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->locationListener:Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$600(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->addListener(Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;)V
return-void
.end method