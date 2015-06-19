.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "SonyCameraFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
.registers 9
const/4 v1, 0x0
:try_start_1
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getLastPhotoTakenTime()J
move-result-wide v3
const-wide/16 v5, 0x0
cmp-long v5, v3, v5
if-lez v5, :cond_19
sget-object v5, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v5, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
:try_end_18
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1a
move-result-object v1
:goto_19
:cond_19
return-object v1
:catch_1a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_19
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->setThumbNail(Landroid/graphics/Bitmap;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$LoadThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V
return-void
.end method