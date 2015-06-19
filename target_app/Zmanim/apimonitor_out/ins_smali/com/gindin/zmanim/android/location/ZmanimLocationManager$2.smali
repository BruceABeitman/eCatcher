.class  Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;
.super Ljava/lang/Object;
.source "ZmanimLocationManager.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.method constructor <init>(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
#calls: Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->showLocationDetails()V
invoke-static {v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->access$000(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method