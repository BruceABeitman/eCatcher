.class  Lus/pinguo/androidsdk/pgedit/PGEditController$10;
.super Ljava/lang/Object;
.source "PGEditController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 14
:try_start_0
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-string/jumbo v4, "image/jpeg"
const/4 v5, 0x0
new-instance v6, Ljava/io/File;
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v7, v7, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v7, 0x0
invoke-static/range {v0 .. v7}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;ILjava/io/File;Landroid/location/Location;)Landroid/net/Uri;
move-result-object v12
if-nez v12, :cond_55
new-instance v11, Landroid/content/Intent;
const-string/jumbo v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v10, Ljava/io/File;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v9, 0x0
invoke-virtual {v10}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_55
invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v9
invoke-virtual {v11, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
:cond_55
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:goto_5d
:try_end_5d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e
return-void
:catch_5e
move-exception v8
invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$10;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_5d
.end method