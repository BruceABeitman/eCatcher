.class  Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;
.super Ljava/lang/Object;
.source "DetailPicAdapter.java"
.implements Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
.field private final synthetic val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;Lcom/pinguo/camera360/shop/view/LoadingPictureView;I)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;->this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
iput p3, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onReloadClick()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;->this$0:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
iget v2, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;->val$position:I
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setImageUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;->val$loadingPictureView:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->loading()V
return-void
.end method