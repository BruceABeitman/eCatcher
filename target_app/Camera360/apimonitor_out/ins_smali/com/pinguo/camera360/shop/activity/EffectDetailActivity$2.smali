.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPostExecute(Z)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$4(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$5(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectMoreLayInstall(Ljava/lang/String;)V
:goto_21
return-void
:cond_22
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
const/4 v1, 0x4
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
const v1, 0x7f080261
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$4(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$3(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/ProgressButton;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$5(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V
goto :goto_21
.end method
.method public onProgress(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$3(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/ProgressButton;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V
return-void
.end method