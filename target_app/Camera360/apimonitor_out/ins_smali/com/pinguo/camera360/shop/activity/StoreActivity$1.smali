.class  Lcom/pinguo/camera360/shop/activity/StoreActivity$1;
.super Ljava/lang/Object;
.source "StoreActivity.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)Lcom/pinguo/camera360/shop/activity/StoreActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
return-object v0
.end method
.method public onBackClick()V
.registers 10
const/4 v7, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->needInterrupt()Z
move-result v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$1(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Z
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f080237
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const v3, 0x7f080236
const v4, 0x7f080235
new-instance v5, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)V
new-instance v6, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$2;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$2;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)V
move v8, v7
invoke-static/range {v0 .. v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
:goto_39
return-void
:cond_3a
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;
move-result-object v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$1(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Z
move-result v0
if-nez v0, :cond_53
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->destroy()V
:cond_53
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->finish()V
goto :goto_39
.end method
.method public onRightBtnClick()V
.registers 1
return-void
.end method