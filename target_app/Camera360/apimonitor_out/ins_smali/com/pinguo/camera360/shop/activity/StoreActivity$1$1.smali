.class  Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;
.super Ljava/lang/Object;
.source "StoreActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)Lcom/pinguo/camera360/shop/activity/StoreActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->destroy()V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)Lcom/pinguo/camera360/shop/activity/StoreActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->finish()V
const-string v1, " - Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method