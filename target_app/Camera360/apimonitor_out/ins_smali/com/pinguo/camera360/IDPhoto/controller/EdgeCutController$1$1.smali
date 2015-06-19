.class  Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;
.super Ljava/lang/Object;
.source "EdgeCutController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->val$bitmap:Landroid/graphics/Bitmap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const-string/jumbo v0, "EdgeCutController"
const-string/jumbo v1, "5_compose_success callback"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->isEdgeCutMode()Z
move-result v0
if-nez v0, :cond_af
const-string/jumbo v0, "EdgeCutController"
const-string/jumbo v1, "5_compose_success:mUpdateCenterImageCallback:first_in"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->val$bitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->val$bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_35
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v1
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$2(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->getVisibility()I
move-result v0
if-nez v0, :cond_ad
const/4 v0, 0x1
:goto_4c
#setter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsLastClothesViewVisible:Z
invoke-static {v1, v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$3(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$2(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v1
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$4(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v2
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$2(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->getCurTextureBitmap()Landroid/graphics/Bitmap;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v3
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$2(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->getCurTextureMatrix()Landroid/graphics/Matrix;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->enterEdgeCutMode(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#calls: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->actionErase()V
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$5(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialogInCenter()V
:goto_ac
return-void
:cond_ad
const/4 v0, 0x0
goto :goto_4c
:cond_af
const-string/jumbo v0, "EdgeCutController"
const-string/jumbo v1, "5_compose_success:mUpdateCenterImageCallback:update"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->val$bitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_cb
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->val$bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->updateBitmap(Landroid/graphics/Bitmap;)V
:cond_cb
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialogInCenter()V
goto :goto_ac
.end method