.class  Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "SkinController.java"
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
return-void
.end method
.method public rendererAction()V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;->getRendererPointer()I
move-result v2
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-direct {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;-><init>()V
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setRendererPointer(I)V
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getInitFaceLiftParams()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setInitFaceLiftParams(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getInitSkinParams()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setInitSkinParams(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getMadePicPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setPath(Ljava/lang/String;)V
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->makeSkinPhoto()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_42
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHandler:Landroid/os/Handler;
invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/os/Handler;
move-result-object v3
const/4 v4, 0x4
invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v3
invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
:goto_41
return-void
:cond_42
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHandler:Landroid/os/Handler;
invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/os/Handler;
move-result-object v3
const/4 v4, 0x6
invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_41
.end method