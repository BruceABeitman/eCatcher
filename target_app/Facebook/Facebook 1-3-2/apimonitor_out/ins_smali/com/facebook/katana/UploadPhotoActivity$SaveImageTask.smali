.class  Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
.super Ljava/lang/Thread;
.source "UploadPhotoActivity.java"
.field private final mHandler:Landroid/os/Handler;
.field private final mInBitmap:Landroid/graphics/Bitmap;
.field private mOutBitmap:Landroid/graphics/Bitmap;
.field private mOutEx:Ljava/lang/Exception;
.field private mOutFilename:Ljava/lang/String;
.field private final mRecyleBitmapWhenDone:Z
.field private final mUriToDeleteWhenDone:Landroid/net/Uri;
.field final synthetic this$0:Lcom/facebook/katana/UploadPhotoActivity;
.method public constructor <init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/os/Handler;Landroid/graphics/Bitmap;ZLandroid/net/Uri;)V
.registers 6
iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mHandler:Landroid/os/Handler;
iput-object p3, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mInBitmap:Landroid/graphics/Bitmap;
iput-boolean p4, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mRecyleBitmapWhenDone:Z
iput-object p5, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mUriToDeleteWhenDone:Landroid/net/Uri;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mRecyleBitmapWhenDone:Z
return v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mInBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Ljava/lang/Exception;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutEx:Ljava/lang/Exception;
return-object v0
.end method
.method static synthetic access$3(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$4(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$5(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mUriToDeleteWhenDone:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic access$6(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$7(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)Lcom/facebook/katana/UploadPhotoActivity;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
return-object v0
.end method
.method public run()V
.registers 7
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "upload_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v3, 0x4
invoke-static {v3}, Lcom/facebook/katana/util/StringUtils;->randomString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
:try_start_16
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
iget-object v3, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/UploadPhotoActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mInBitmap:Landroid/graphics/Bitmap;
sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x64
invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-virtual {v3}, Lcom/facebook/katana/UploadPhotoActivity;->getFilesDir()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutFilename:Ljava/lang/String;
const/16 v3, 0x12c
const/16 v4, 0xc8
const/4 v5, 0x1
invoke-static {v2, v3, v4, v5}, Lcom/facebook/katana/util/ImageUtils;->resizeBitmapAndFrame(Ljava/lang/String;III)Landroid/graphics/Bitmap;
move-result-object v2
iput-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
if-nez v2, :cond_82
new-instance v2, Ljava/io/FileNotFoundException;
const-string v3, "Cannot load bitmap"
invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v2
:try_end_6a
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6a} :catch_6a
:catch_6a
move-exception v2
move-object v0, v2
const-string v2, "SaveImageTask.run"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Exception: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iput-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mOutEx:Ljava/lang/Exception;
:cond_82
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->mHandler:Landroid/os/Handler;
new-instance v3, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask$1;-><init>(Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method