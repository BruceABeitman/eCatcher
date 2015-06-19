.class  Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "IdPhotoCamera.java"
.field private data:I
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;Landroid/widget/ImageView;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->data:I
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
.registers 4
const/4 v0, 0x0
aget-object v0, p1, v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->data:I
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->data:I
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
.registers 10
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;
if-eqz v4, :cond_42
if-eqz p1, :cond_42
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-eqz v0, :cond_13
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_13
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;
invoke-static {v4}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$5(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_43
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v1
int-to-double v4, v1
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
int-to-double v6, v6
div-double v2, v4, v6
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;
invoke-static {v4}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$5(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
int-to-double v5, v5
mul-double/2addr v5, v2
double-to-int v5, v5
iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
:goto_42
:cond_42
return-void
:cond_43
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;
invoke-static {v4}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$1(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_42
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
#setter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundBitmap:Landroid/graphics/Bitmap;
invoke-static {v4, p1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$6(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;Landroid/graphics/Bitmap;)V
goto :goto_42
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V
return-void
.end method