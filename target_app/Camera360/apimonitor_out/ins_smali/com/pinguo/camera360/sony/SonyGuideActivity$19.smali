.class  Lcom/pinguo/camera360/sony/SonyGuideActivity$19;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissRetryDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$18(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissScanDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$1(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissWifiDialogList()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$6(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissWifiDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$5(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissConnectingDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$7(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$19;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissNoDevice()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$19(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
return-void
.end method