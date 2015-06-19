.class Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Lcom/facebook/katana/UploadPhotoActivity;

    move-result-object v0

    #getter for: Lcom/facebook/katana/UploadPhotoActivity;->mStarted:Z
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity;->access$10(Lcom/facebook/katana/UploadPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutEx:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$0(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Lcom/facebook/katana/UploadPhotoActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/UploadPhotoActivity;->showDialog(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Lcom/facebook/katana/UploadPhotoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$1(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mInFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$2(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/facebook/katana/UploadPhotoActivity;->onBitmapReady(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/facebook/katana/UploadPhotoActivity;->access$11(Lcom/facebook/katana/UploadPhotoActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_1e

    :cond_35
    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$1(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$1(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$3(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;Landroid/graphics/Bitmap;)V

    :cond_4c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;

    #getter for: Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mInFilename:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->access$2(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1e
.end method
