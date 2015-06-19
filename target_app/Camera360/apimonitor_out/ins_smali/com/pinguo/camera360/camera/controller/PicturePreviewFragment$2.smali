.class  Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;
.super Ljava/lang/Object;
.source "PicturePreviewFragment.java"
.implements Lcom/pinguo/camera360/photoedit/callback/PreCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
return-object v0
.end method
.method public previewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 9
const/4 v4, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$1()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "previewMaked done! preBitmap = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " oriBitmap = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I
move-result v0
const/4 v1, 0x1
if-eq v0, v1, :cond_59
if-eqz p3, :cond_31
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1, p3}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$2(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Landroid/graphics/Bitmap;)V
:goto_31
:cond_31
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1, p2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$3(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_5f
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_5f
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;-><init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)V
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
:goto_58
:cond_58
return-void
:cond_59
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1, v4}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$2(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Landroid/graphics/Bitmap;)V
goto :goto_31
:cond_5f
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_75
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1, v4}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$2(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Landroid/graphics/Bitmap;)V
:cond_75
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$7(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_58
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$7(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-static {v1, v4}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$3(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Landroid/graphics/Bitmap;)V
goto :goto_58
.end method