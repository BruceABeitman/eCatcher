.class  Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;
.super Ljava/lang/Object;
.source "DetailPicAdapter.java"
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
.field private final synthetic val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;Lcom/pinguo/camera360/shop/view/LoadingPictureView;I)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
iput p3, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->onLoadingFail()V
return-void
.end method
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.registers 7
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->getTag()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_53
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->getTag()Ljava/lang/Object;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_53
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->getTag()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v1, p3, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setEffectBitmap(Landroid/graphics/Bitmap;I)V
:goto_3a
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->onLoadingComplete()V
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
#getter for: Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;
invoke-static {v1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->access$0(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;
move-result-object v1
if-eqz v1, :cond_52
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
#getter for: Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;
invoke-static {v1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->access$0(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$position:I
invoke-interface {v1, v2, p1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;->onLoadingFinish(ILjava/lang/String;)V
:cond_52
return-void
:cond_53
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v1, p3}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setOriBitmap(Landroid/graphics/Bitmap;)V
goto :goto_3a
.end method
.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
iget v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$position:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string/jumbo v1, "always_loading"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->onLoadingFail()V
:cond_18
return-void
.end method
.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->loading()V
return-void
.end method