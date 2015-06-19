.class  Lcom/pinguo/camera360/sony/SonyGuideActivity$13;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$13;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyGuideActivity$13; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$13;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->reset(Z)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity$13; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method