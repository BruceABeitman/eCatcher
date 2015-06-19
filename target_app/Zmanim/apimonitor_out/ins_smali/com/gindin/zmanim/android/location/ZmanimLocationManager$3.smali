.class  Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;
.super Ljava/lang/Object;
.source "ZmanimLocationManager.java"
.implements Lcom/gindin/zmanim/android/location/LocationProvider$Listener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.method constructor <init>(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onError(Lcom/gindin/zmanim/android/location/LocationError;Landroid/location/Location;Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
#calls: Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->updateLastKnownLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/gindin/zmanim/android/location/ZmanimLocation;
invoke-static {v1, p2, p3}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->access$200(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Landroid/location/Location;Ljava/lang/String;)Lcom/gindin/zmanim/android/location/ZmanimLocation;
move-result-object v0
iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
#calls: Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->fireError(Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
invoke-static {v1, p1, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->access$400(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
return-void
.end method
.method public onLocationChanged(Landroid/location/Location;Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
#calls: Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->updateLastKnownLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/gindin/zmanim/android/location/ZmanimLocation;
invoke-static {v1, p1, p2}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->access$200(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Landroid/location/Location;Ljava/lang/String;)Lcom/gindin/zmanim/android/location/ZmanimLocation;
move-result-object v0
iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
#calls: Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->fireLocationChanged(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
invoke-static {v1, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->access$300(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
return-void
.end method
.method public onProgress(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
#calls: Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->fireProgress(Ljava/lang/String;)V
invoke-static {v0, p1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->access$100(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Ljava/lang/String;)V
return-void
.end method