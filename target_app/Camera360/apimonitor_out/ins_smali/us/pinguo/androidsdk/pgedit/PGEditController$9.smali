.class  Lus/pinguo/androidsdk/pgedit/PGEditController$9;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "PGEditController.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
.field private final synthetic val$oldPhotoPath:Ljava/lang/String;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditController;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->val$oldPhotoPath:Ljava/lang/String;
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
return-void
.end method
.method public rendererAction()V
.registers 7
const/4 v3, 0x0
const/4 v5, 0x3
sget-object v2, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {p0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
invoke-virtual {p0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->clearImage(I)Z
const-string/jumbo v2, "Effect=Normal"
invoke-virtual {p0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->setEffect(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1b
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:goto_1a
return-void
:cond_1b
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->val$oldPhotoPath:Ljava/lang/String;
invoke-virtual {p0, v3, v2}, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->setImageFromPath(ILjava/lang/String;)Z
move-result v2
if-nez v2, :cond_2b
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_1a
:cond_2b
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->make()Z
move-result v2
if-nez v2, :cond_39
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_1a
:cond_39
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->val$oldPhotoPath:Ljava/lang/String;
const-string/jumbo v3, ".jpg"
const-string/jumbo v4, "_save.jpg"
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x5f
invoke-virtual {p0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->getMakedImage2JpegFile(Ljava/lang/String;I)Z
move-result v2
if-nez v2, :cond_55
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_1a
:cond_55
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRotatedDegree(Ljava/lang/String;)I
move-result v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$9;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual {v2, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->savePhotoInThread(Ljava/lang/String;I)V
goto :goto_1a
.end method