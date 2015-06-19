.class  Lcom/pinguo/camera360/shop/activity/StoreActivity$2;
.super Ljava/lang/Object;
.source "StoreActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/StoreActivity$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$2(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
move-result-object v3
invoke-virtual {v3, p3}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
move-result-object v2
iget-object v3, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;
iget-object v4, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;
invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectBannerClick(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/Interaction;->isInValidEffect(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1f
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#calls: Lcom/pinguo/camera360/shop/activity/StoreActivity;->setPullRefreshing()V
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$3(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
:goto_1e
const-string v1, " - Lcom/pinguo/camera360/shop/activity/StoreActivity$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1f
new-instance v0, Lcom/pinguo/camera360/shop/activity/InteractionFactory;
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-direct {v0, v3}, Lcom/pinguo/camera360/shop/activity/InteractionFactory;-><init>(Landroid/app/Activity;)V
iget-object v3, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/shop/activity/InteractionFactory;->create(Ljava/lang/String;)Lcom/pinguo/camera360/shop/activity/Interaction;
move-result-object v1
iget-object v3, v2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mEffectShopUseType:I
invoke-static {v4}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$4(Lcom/pinguo/camera360/shop/activity/StoreActivity;)I
move-result v4
invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/shop/activity/Interaction;->onClick(Ljava/lang/String;I)V
goto :goto_1e
.end method