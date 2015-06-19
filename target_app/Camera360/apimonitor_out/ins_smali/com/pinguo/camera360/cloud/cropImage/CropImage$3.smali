.class  Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
.method constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
return-object v0
.end method
.method public run()V
.registers 6
new-instance v2, Ljava/util/concurrent/CountDownLatch;
const/4 v3, 0x1
invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
invoke-static {v3}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v3, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mHandler:Landroid/os/Handler;
invoke-static {v3}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$6(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/os/Handler;
move-result-object v3
new-instance v4, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;
invoke-direct {v4, p0, v0, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;-><init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_start_1a
invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
:try_end_1d
.catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25
iget-object v3, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
iget-object v3, v3, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;
invoke-interface {v3}, Ljava/lang/Runnable;->run()V
return-void
:catch_25
move-exception v1
new-instance v3, Ljava/lang/RuntimeException;
invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v3
.end method