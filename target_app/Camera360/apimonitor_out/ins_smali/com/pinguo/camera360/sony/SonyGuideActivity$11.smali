.class  Lcom/pinguo/camera360/sony/SonyGuideActivity$11;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyGuideActivity$11; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
const/4 v2, 0x1
#setter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
invoke-static {v1, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$9(Lcom/pinguo/camera360/sony/SonyGuideActivity;Z)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
const/4 v2, 0x0
#setter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v1, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$15(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonits:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$16(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Ljava/util/List;
move-result-object v1
invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectSonyWifiAccessPoint(Lcom/pinguo/camera360/sony/wifi/AccessPoint;)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity$11; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method