.class  Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2;
.super Ljava/lang/Object;
.source "ModePickerFragment.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->access$1(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)Lcom/pinguo/camera360/camera/view/ModePickerView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getVisibility()I
move-result v1
if-nez v1, :cond_1d
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->access$0(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
move-result-object v1
invoke-virtual {v1, p3}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
move-result-object v0
iget-object v1, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;
iget-object v2, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeCameraBannerShow(Ljava/lang/String;Ljava/lang/String;)V
:cond_1d
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method