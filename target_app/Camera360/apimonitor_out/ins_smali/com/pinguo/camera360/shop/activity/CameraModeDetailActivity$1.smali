.class  Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPostExecute(Z)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_3c
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_27
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$3(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V
:cond_27
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstalledText:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$4(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeModeMoreLayInstall(Ljava/lang/String;)V
:goto_3b
return-void
:cond_3c
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
const/4 v1, 0x4
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
const-string/jumbo v1, "\u5b89\u88c5\u5931\u8d25"
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/ProgressButton;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$3(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstalledText:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$4(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/widget/TextView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_3b
.end method
.method public onProgress(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/ProgressButton;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V
return-void
.end method