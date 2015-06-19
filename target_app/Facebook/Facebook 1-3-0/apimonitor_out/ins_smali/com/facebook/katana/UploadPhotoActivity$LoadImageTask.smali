.class  Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;
.super Ljava/lang/Thread;
.source "UploadPhotoActivity.java"
.field private final mHandler:Landroid/os/Handler;
.field private final mInFilename:Ljava/lang/String;
.field private mOutBitmap:Landroid/graphics/Bitmap;
.field private mOutEx:Ljava/lang/Exception;
.field final synthetic this$0:Lcom/facebook/katana/UploadPhotoActivity;
.method public constructor <init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/os/Handler;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p2, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mHandler:Landroid/os/Handler;
iput-object p3, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mInFilename:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Ljava/lang/Exception;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutEx:Ljava/lang/Exception;
return-object v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mInFilename:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$4(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)Lcom/facebook/katana/UploadPhotoActivity;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
return-object v0
.end method
.method public run()V
.registers 6
:try_start_0
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mInFilename:Ljava/lang/String;
const/16 v2, 0x12c
const/16 v3, 0xc8
const/4 v4, 0x1
invoke-static {v1, v2, v3, v4}, Lcom/facebook/katana/util/ImageUtils;->resizeBitmapAndFrame(Ljava/lang/String;III)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_2f
new-instance v1, Ljava/io/FileNotFoundException;
const-string v2, "Cannot load bitmap"
invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v1
:catch_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_17
move-exception v1
move-object v0, v1
const-string v1, "LoadImageTask.run"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Exception: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iput-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mOutEx:Ljava/lang/Exception;
:cond_2f
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->mHandler:Landroid/os/Handler;
new-instance v2, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;
invoke-direct {v2, p0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask$1;-><init>(Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method