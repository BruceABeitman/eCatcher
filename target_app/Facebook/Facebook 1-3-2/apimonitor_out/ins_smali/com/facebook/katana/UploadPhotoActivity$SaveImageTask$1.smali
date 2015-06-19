.class  Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
.method constructor <init>(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mRecyleBitmapWhenDone:Z
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$0(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Z
move-result v1
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mInBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$1(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mInBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$1(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:cond_19
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$7(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Lcom/facebook/katana/UploadPhotoActivity;
move-result-object v1
#getter for: Lcom/facebook/katana/UploadPhotoActivity;->mStarted:Z
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity;->access$10(Lcom/facebook/katana/UploadPhotoActivity;)Z
move-result v1
if-eqz v1, :cond_7a
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutEx:Ljava/lang/Exception;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$2(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Ljava/lang/Exception;
move-result-object v1
if-eqz v1, :cond_38
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$7(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Lcom/facebook/katana/UploadPhotoActivity;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v1, v2}, Lcom/facebook/katana/UploadPhotoActivity;->showDialog(I)V
:cond_37
:goto_37
return-void
:cond_38
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$7(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Lcom/facebook/katana/UploadPhotoActivity;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$3(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Ljava/lang/String;
move-result-object v3
#calls: Lcom/facebook/katana/UploadPhotoActivity;->onBitmapReady(Landroid/graphics/Bitmap;Ljava/lang/String;)V
invoke-static {v1, v2, v3}, Lcom/facebook/katana/UploadPhotoActivity;->access$11(Lcom/facebook/katana/UploadPhotoActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mUriToDeleteWhenDone:Landroid/net/Uri;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$5(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/net/Uri;
move-result-object v1
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mUriToDeleteWhenDone:Landroid/net/Uri;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$5(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Deleting original photo at "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
#calls: Lcom/facebook/katana/UploadPhotoActivity;->D(Ljava/lang/String;)V
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity;->access$12(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->delete()Z
goto :goto_37
:cond_7a
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$3(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_91
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$3(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
const/4 v2, 0x0
#setter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
invoke-static {v1, v2}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$6(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;Landroid/graphics/Bitmap;)V
:cond_91
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
invoke-static {v1}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_37
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;->this$1:Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
#getter for: Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->access$4(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->delete()Z
goto :goto_37
.end method