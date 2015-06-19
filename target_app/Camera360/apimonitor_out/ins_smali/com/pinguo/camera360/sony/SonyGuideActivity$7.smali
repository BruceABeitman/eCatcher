.class  Lcom/pinguo/camera360/sony/SonyGuideActivity$7;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
.field private final synthetic val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/login/EditTextWithLine;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyGuideActivity$7; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
const/4 v3, 0x1
#setter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
invoke-static {v2, v3}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$9(Lcom/pinguo/camera360/sony/SonyGuideActivity;Z)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
#calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->hideSoftInputMethod(Landroid/view/View;)V
invoke-static {v2, v3}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$10(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/view/View;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonit:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$11(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/AccessPoint;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->addNetworkAccessPonit(Lcom/pinguo/camera360/sony/wifi/AccessPoint;Landroid/widget/EditText;)I
move-result v0
const/4 v2, -0x1
if-ne v0, v2, :cond_2c
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->wifiConnectFail(Z)V
:goto_2b
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity$7; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2c
const/4 v2, 0x3
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setWifiState(I)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$12(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Landroid/os/Handler;
move-result-object v2
const/4 v3, 0x2
const-wide/16 v4, 0x7530
invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$7;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->showConnectingDialog()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setStartTime(J)V
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiNetwork(I)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
goto :goto_2b
.end method