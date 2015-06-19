.class  Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1;
.super Ljava/lang/Object;
.source "ModePickerFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->access$0(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
move-result-object v3
invoke-virtual {v3, p3}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
move-result-object v2
iget-object v3, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;
iget-object v4, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;
invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeCameraBannerClick(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->createInteractionFactory(Landroid/app/Activity;)Lcom/pinguo/camera360/shop/activity/InteractionFactory;
move-result-object v0
iget-object v3, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/shop/activity/InteractionFactory;->create(Ljava/lang/String;)Lcom/pinguo/camera360/shop/activity/Interaction;
move-result-object v1
iget-object v3, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/shop/activity/Interaction;->onClick(Ljava/lang/String;I)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method