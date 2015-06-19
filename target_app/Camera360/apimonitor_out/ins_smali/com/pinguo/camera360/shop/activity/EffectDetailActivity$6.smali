.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onGlobalLayout()V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getWidth()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getHeight()I
move-result v0
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
int-to-float v2, v1
int-to-float v4, v0
div-float/2addr v2, v4
const v4, 0x3f8ccccd
cmpl-float v2, v2, v4
if-lez v2, :cond_58
const/4 v2, 0x1
:goto_21
#setter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mShortPicFlag:Z
invoke-static {v3, v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$11(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Z)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mShortPicFlag:Z
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$12(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
move-result v2
if-eqz v2, :cond_5a
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v3
iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->imageList:[Ljava/lang/String;
invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->addAll(Ljava/util/Collection;)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->updateIndicator()V
:goto_4a
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
return-void
:cond_58
const/4 v2, 0x0
goto :goto_21
:cond_5a
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v3
iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->imageList2:[Ljava/lang/String;
invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->addAll(Ljava/util/Collection;)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->updateIndicator()V
goto :goto_4a
.end method