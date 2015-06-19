.class Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    iput-object p2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_3a

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$8(Lcom/pinguo/camera360/cloud/cropImage/CropImage;Landroid/graphics/Bitmap;)V

    :cond_3a
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;)Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/pinguo/camera360/ui/CropImageView;->center(ZZ)V

    :cond_5b
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
