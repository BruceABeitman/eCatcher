.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;
.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;
.field private final synthetic val$currentItem:I
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;ILandroid/graphics/Bitmap;I)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;
iput p2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$currentItem:I
iput-object p3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$bitmap:Landroid/graphics/Bitmap;
iput p4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "loading_picture_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$currentItem:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;
if-eqz v0, :cond_42
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$bitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_42
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$bitmap:Landroid/graphics/Bitmap;
iget v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$position:I
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setEffectBitmap(Landroid/graphics/Bitmap;I)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->val$bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setTag(Ljava/lang/Object;)V
:cond_42
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mEffectProgress:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$22(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_64
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mEffectProgress:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$22(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/view/View;
move-result-object v1
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:cond_64
return-void
.end method