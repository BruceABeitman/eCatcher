.class  Lcom/gindin/zmanim/android/ZmanimActivity$7;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$7;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/gindin/zmanim/android/ZmanimActivity$7; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$7;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/gindin/zmanim/android/Activities;->ENABLE_LOCATION_SERVICES:Lcom/gindin/zmanim/android/Activities;
invoke-virtual {v2}, Lcom/gindin/zmanim/android/Activities;->ordinal()I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimActivity$7; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method