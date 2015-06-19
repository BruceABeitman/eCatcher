.class  Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$2;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$2;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$2;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
return-void
.end method