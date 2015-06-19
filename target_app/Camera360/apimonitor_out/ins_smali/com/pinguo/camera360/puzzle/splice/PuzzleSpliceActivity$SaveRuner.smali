.class  Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;
.super Lcom/pinguo/camera360/base/MaxSpeedRuner;
.source "PuzzleSpliceActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
.method private constructor <init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-direct {p0}, Lcom/pinguo/camera360/base/MaxSpeedRuner;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;-><init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
return-void
.end method
.method private isOrgPicMaked()Z
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->doOrgPic()V
invoke-static {v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$11(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_TEMP_PATH:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_14
const/4 v1, 0x1
:goto_13
return v1
:cond_14
const/4 v1, 0x0
goto :goto_13
.end method
.method public maxRun()V
.registers 12
const/16 v10, 0x64
const/4 v9, 0x1
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->isOrgPicMaked()Z
move-result v0
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "setp 6 ------------> isOrgPicMaked ? "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$5(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_ce
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;
invoke-static {v5}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$6(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->gallerySpliceSavePicSum(I)V
:try_start_2f
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "setp 7 ------------> obtanEmptyForImport "
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$5(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->obtainEmptyForImport()Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v4
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v5, 0x1
iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
sget-object v5, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_TEMP_PATH:Ljava/lang/String;
invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setWidth(I)V
iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setHeight(I)V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "setp 8 ------------> project.set.... "
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$5(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->clearBitmaps()V
invoke-static {v5}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$7(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
const-wide/16 v5, 0x64
invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "-----  >> 8. insert project"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v5, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_TEMP_PATH:Ljava/lang/String;
const/4 v6, 0x0
invoke-static {v5, v6}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createForPuzzle(Ljava/lang/String;Z)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v3
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v5
const/4 v6, 0x0
const/4 v7, 0x0
new-instance v8, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner$1;
invoke-direct {v8, p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner$1;-><init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;)V
invoke-virtual {v5, v3, v6, v7, v8}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->save(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
monitor-enter p0
:try_end_8c
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8c} :catch_c0
:try_start_8c
invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "-----  >> 8.1 insert project, waiting"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
monitor-exit p0
:try_end_9a
.catchall {:try_start_8c .. :try_end_9a} :catchall_bd
:try_start_9a
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "setp 9 ------------> insertProject get thumbjpg  "
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$5(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->deleteSpliceFile()V
invoke-static {v5}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$8(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
const/16 v6, 0x7d1
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setResult(I)V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->finish()V
:try_end_b7
.catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b7} :catch_c0
:goto_b7
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#setter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mCanCancelDialog:Z
invoke-static {v5, v9}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$10(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Z)V
return-void
:catchall_bd
move-exception v5
:try_start_be
monitor-exit p0
:try_end_bf
.catchall {:try_start_be .. :try_end_bf} :catchall_bd
:try_start_bf
throw v5
:try_end_c0
.catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c0} :catch_c0
:catch_c0
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHandler:Landroid/os/Handler;
invoke-static {v5}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$9(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/os/Handler;
move-result-object v5
invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_b7
:cond_ce
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#setter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mCanCancelDialog:Z
invoke-static {v5, v9}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$10(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Z)V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHandler:Landroid/os/Handler;
invoke-static {v5}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$9(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/os/Handler;
move-result-object v5
invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHandler:Landroid/os/Handler;
invoke-static {v5}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$9(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/os/Handler;
move-result-object v5
const/16 v6, 0x66
invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_b7
.end method