.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$1;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPostExecute(Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->fillHoriScrollEffects()V
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V
return-void
.end method
.method public onProgress(I)V
.registers 2
return-void
.end method