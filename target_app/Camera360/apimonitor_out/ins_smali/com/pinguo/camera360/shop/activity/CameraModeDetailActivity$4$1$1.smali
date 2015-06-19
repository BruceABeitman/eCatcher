.class  Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field final synthetic this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPostExecute(Z)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeModeMoreLayUninstall(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$3(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
move-result-object v0
#calls: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->setBackResult()V
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$8(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->finish()V
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->uninstall:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
invoke-virtual {v0, v1, v2, p0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
return-void
.end method
.method public onProgress(I)V
.registers 2
return-void
.end method