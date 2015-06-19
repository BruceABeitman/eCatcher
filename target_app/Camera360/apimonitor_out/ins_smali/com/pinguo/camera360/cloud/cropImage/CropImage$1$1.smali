.class  Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
.method constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
move-result-object v5
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
iget v2, v2, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mNumFaces:I
if-le v2, v3, :cond_79
move v2, v3
:goto_f
iput-boolean v2, v5, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mWaitingToPick:Z
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
iget v2, v2, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mNumFaces:I
if-lez v2, :cond_89
const/4 v0, 0x0
:goto_18
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
iget v2, v2, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mNumFaces:I
if-lt v0, v2, :cond_7b
:goto_1e
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
move-result-object v2
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/CropImageView;->invalidate()V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
move-result-object v2
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ne v2, v3, :cond_62
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
move-result-object v5
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
move-result-object v2
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/ui/HighlightView;
iput-object v2, v5, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCrop:Lcom/pinguo/camera360/ui/HighlightView;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCrop:Lcom/pinguo/camera360/ui/HighlightView;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/ui/HighlightView;->setFocus(Z)V
:cond_62
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
iget v2, v2, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mNumFaces:I
if-le v2, v3, :cond_78
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
move-result-object v2
const v3, 0x7f080275
invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:cond_78
return-void
:cond_79
move v2, v4
goto :goto_f
:cond_7b
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
iget-object v5, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
iget-object v5, v5, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;
aget-object v5, v5, v0
#calls: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V
invoke-static {v2, v5}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;Landroid/media/FaceDetector$Face;)V
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_89
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;
#calls: Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->makeDefault()V
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;)V
goto :goto_1e
.end method