.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$6;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$6;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$6;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewRect:Landroid/graphics/Rect;
invoke-static {v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$14(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Landroid/graphics/Rect;
move-result-object v3
invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$6;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mLiveviewRect:Landroid/graphics/Rect;
invoke-static {v4}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$14(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Landroid/graphics/Rect;
move-result-object v4
invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
move-result v4
invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/lib/util/MathUtils;->scaleSizeToBound(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$6;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
invoke-static {v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
move-result-object v3
iget-object v3, v3, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
invoke-virtual {v3, v2, v1}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->setAllSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
return-void
.end method