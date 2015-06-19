.class Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;
.super Lcom/pinguo/camera360/base/MaxSpeedRuner;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/PuzzleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveRuner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    invoke-direct {p0}, Lcom/pinguo/camera360/base/MaxSpeedRuner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V

    return-void
.end method

.method private drawPhoto()Landroid/graphics/Bitmap;
    .registers 6

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 1.getDrawingCache"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;
    invoke-static {v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$9(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->drawTempPhoto()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_PREV:Ljava/lang/String;

    const/16 v4, 0x58

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->compress(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 2.save cache file"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    :try_start_24
    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 3.draw puzzle photo "

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;
    invoke-static {v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$9(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->drawOutputPhoto()Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_40

    move-result-object v2

    :goto_36
    return-object v2

    :cond_37
    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 2.save cache file fail !!"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 3.draw puzzle photo fail, ready get cache file !!"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4c
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_PREV:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_60

    sget-object v3, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_PREV:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_36

    :cond_60
    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> the cache file not exists !!"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_68} :catch_69

    goto :goto_36

    :catch_69
    move-exception v0

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 3.get cache file fail !!"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_36
.end method


# virtual methods
.method public deleteCacheFile()V
    .registers 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_PREV:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-----  >> **. delete the cache file : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "-----  >> **. the cache file not exists"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public maxRun()V
    .registers 8

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  start save photo :"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->drawPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_c
    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 5. save bitmap to file"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_SAVED:Ljava/lang/String;

    const/16 v4, 0x5f

    invoke-static {v1, v3, v4}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->compress(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 6. insert project"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_SAVED:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createForPuzzle(Ljava/lang/String;Z)Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner$1;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner$1;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;)V

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->save(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    monitor-enter p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_39} :catch_80

    :try_start_39
    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 6.1 insert project, waiting"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_7d

    :try_start_45
    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 7. cleaSystem.gc() method"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->deleteCacheFile()V

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  >> 9. perpare project for jump"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$7(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryTemplateSavePicSum(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    const/16 v4, 0x7d1

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->setResult(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;
    invoke-static {v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$8(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->finish()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_7c} :catch_80

    :goto_7c
    return-void

    :catchall_7d
    move-exception v3

    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v3
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_80} :catch_80

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->deleteCacheFile()V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;
    invoke-static {v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$8(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->sendEmptyMessage(I)Z

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "-----  save photo err , see the stop logs to know more details."

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c
.end method
