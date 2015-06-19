.class Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$6(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Lcom/facebook/katana/UploadPhotoActivity;

    move-result-object v0

    #getter for: Lcom/facebook/katana/UploadPhotoActivity;->mStarted:Z
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity;->access$10(Lcom/facebook/katana/UploadPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOpex:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$0(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$6(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Lcom/facebook/katana/UploadPhotoActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/katana/UploadPhotoActivity;->showDialog(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mDeleteInputWhenDone:Z
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$1(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mPhotoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$2(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    :goto_2f
    new-instance v0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;

    iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
    invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$6(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Lcom/facebook/katana/UploadPhotoActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$3(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;-><init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/os/Handler;Landroid/graphics/Bitmap;ZLandroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->start()V

    goto :goto_1f

    :cond_4a
    move-object v5, v1

    goto :goto_2f

    :cond_4c
    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;

    #setter for: Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->access$5(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;Landroid/graphics/Bitmap;)V

    goto :goto_1f
.end method
