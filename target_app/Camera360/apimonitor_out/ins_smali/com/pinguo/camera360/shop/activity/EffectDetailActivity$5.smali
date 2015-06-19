.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
const/4 v4, 0x0
#setter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mReuseData:Z
invoke-static {v3, v4}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$9(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Z)V
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/view/BannerView;->getCurrentItem()I
move-result v1
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "loading_picture_"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/shop/view/LoadingPictureView;
if-eqz v2, :cond_60
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$10(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
move-result-object v3
if-eqz v3, :cond_60
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$10(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
move-result-object v3
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getEffectIndex()I
move-result v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->smoothScrollTo(I)V
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$10(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->deselectAll()V
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-static {v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$10(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
move-result-object v3
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getEffectIndex()I
move-result v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getItemView(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_60
const/4 v3, 0x1
invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V
:cond_60
const-string v1, " - Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5; onItemSelected"
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
const-string v0, " + Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method