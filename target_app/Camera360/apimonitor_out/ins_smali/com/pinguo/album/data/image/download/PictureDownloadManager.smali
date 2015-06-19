.class public Lcom/pinguo/album/data/image/download/PictureDownloadManager;
.super Ljava/lang/Object;
.source "PictureDownloadManager.java"
.implements Ljava/lang/Runnable;
.field public static final DOWNLOAD_PICTURE_SAVE_PATH:Ljava/lang/String; = null
.field private static final READ_STEP_LENGTH:I = 0x800
.field private static final TAG:Ljava/lang/String;
.field private mCancel:Z
.field private mContext:Landroid/content/Context;
.field private mDownloadListener:Ljava/util/List;
.field private mReqests:Ljava/util/List;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->TAG:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/DCIM/Camera360Cloud/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->DOWNLOAD_PICTURE_SAVE_PATH:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mCancel:Z
iput-object p1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mReqests:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mDownloadListener:Ljava/util/List;
return-void
.end method
.method private completedNotify(I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mDownloadListener:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;
invoke-interface {v0, p1}, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;->dwonloadCompleted(I)V
goto :goto_6
.end method
.method private download(Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;)Z
.registers 16
new-instance v2, Ljava/io/File;
iget-object v11, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;
invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v11
if-eqz v11, :cond_f
const/4 v0, 0x1
:goto_e
:cond_e
return v0
:cond_f
sget-object v11, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "-----download:"
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v13, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
:try_start_29
new-instance v11, Lcom/pinguo/album/data/download/PGImageDownloader;
iget-object v12, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mContext:Landroid/content/Context;
invoke-direct {v11, v12}, Lcom/pinguo/album/data/download/PGImageDownloader;-><init>(Landroid/content/Context;)V
iget-object v12, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->uri:Ljava/lang/String;
const/4 v13, 0x0
invoke-virtual {v11, v12, v13}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v3
const/16 v11, 0x800
new-array v7, v11, [B
if-eqz v3, :cond_57
const/4 v8, 0x0
new-instance v5, Ljava/io/FileOutputStream;
iget-object v11, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;
invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_end_45
.catchall {:try_start_29 .. :try_end_45} :catchall_c0
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_45} :catch_ef
:goto_45
:try_start_45
iget-boolean v11, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mCancel:Z
if-nez v11, :cond_4f
invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I
move-result v8
if-gtz v8, :cond_93
:cond_4f
const/4 v11, -0x1
if-ne v8, v11, :cond_53
const/4 v0, 0x1
:cond_53
invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
:try_end_56
.catchall {:try_start_45 .. :try_end_56} :catchall_ec
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_56} :catch_98
move-object v4, v5
:cond_57
if-eqz v0, :cond_7b
:try_start_59
new-instance v10, Landroid/content/Intent;
const-string/jumbo v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v9, Ljava/io/File;
iget-object v11, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;
invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v6, 0x0
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v11
if-eqz v11, :cond_7b
invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v6
invoke-virtual {v10, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
iget-object v11, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mContext:Landroid/content/Context;
invoke-virtual {v11, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
:cond_7b
:try_end_7b
.catchall {:try_start_59 .. :try_end_7b} :catchall_c0
.catch Ljava/io/IOException; {:try_start_59 .. :try_end_7b} :catch_ef
if-eqz v4, :cond_80
:try_start_7d
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
:try_end_80
.catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_e2
:goto_80
:cond_80
if-eqz v3, :cond_85
:try_start_82
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:cond_85
:try_end_85
.catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_e7
:goto_85
if-nez v0, :cond_e
new-instance v9, Ljava/io/File;
iget-object v11, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;
invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->delete()Z
goto/16 :goto_e
:cond_93
const/4 v11, 0x0
:try_start_94
invoke-virtual {v5, v7, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_97
.catchall {:try_start_94 .. :try_end_97} :catchall_ec
.catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98
goto :goto_45
:catch_98
move-exception v1
move-object v4, v5
:goto_9a
:try_start_9a
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_9d
.catchall {:try_start_9a .. :try_end_9d} :catchall_c0
const/4 v0, 0x0
if-eqz v4, :cond_a3
:try_start_a0
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
:goto_a3
:try_end_a3
.catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_b6
:cond_a3
if-eqz v3, :cond_a8
:try_start_a5
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:try_end_a8
.catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_bb
:goto_a8
:cond_a8
if-nez v0, :cond_e
new-instance v9, Ljava/io/File;
iget-object v11, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;
invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->delete()Z
goto/16 :goto_e
:catch_b6
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_a3
:catch_bb
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_a8
:catchall_c0
move-exception v11
:goto_c1
if-eqz v4, :cond_c6
:try_start_c3
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
:try_end_c6
.catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_d8
:goto_c6
:cond_c6
if-eqz v3, :cond_cb
:try_start_c8
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:cond_cb
:goto_cb
:try_end_cb
.catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_dd
if-nez v0, :cond_d7
new-instance v9, Ljava/io/File;
iget-object v12, p1, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;
invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->delete()Z
:cond_d7
throw v11
:catch_d8
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_c6
:catch_dd
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_cb
:catch_e2
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_80
:catch_e7
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_85
:catchall_ec
move-exception v11
move-object v4, v5
goto :goto_c1
:catch_ef
move-exception v1
goto :goto_9a
.end method
.method private errorNoify(I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mDownloadListener:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;
invoke-interface {v0, p1}, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;->downloadErrored(I)V
goto :goto_6
.end method
.method private progressNotify(I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mDownloadListener:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;
add-int/lit8 v2, p1, 0x1
invoke-interface {v0, v2}, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;->downloadProgressUpdated(I)V
goto :goto_6
.end method
.method private startNotify()V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mDownloadListener:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;
invoke-interface {v0}, Lcom/pinguo/album/data/image/download/PictureDownloaderListener;->downloadStart()V
goto :goto_6
.end method
.method public declared-synchronized addListener(Lcom/pinguo/album/data/image/download/PictureDownloaderListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mDownloadListener:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public cancelDownload()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mCancel:Z
return-void
.end method
.method public run()V
.registers 5
const/16 v3, 0xa
invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
invoke-direct {p0}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->startNotify()V
iget-object v3, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mReqests:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v1
const/4 v0, 0x0
const/4 v2, 0x0
:goto_10
if-lt v2, v1, :cond_16
:cond_12
invoke-direct {p0, v0}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->completedNotify(I)V
return-void
:cond_16
iget-boolean v3, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mCancel:Z
if-nez v3, :cond_12
invoke-direct {p0, v2}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->progressNotify(I)V
iget-object v3, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mReqests:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;
invoke-direct {p0, v3}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->download(Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;)Z
move-result v3
if-eqz v3, :cond_2d
add-int/lit8 v0, v0, 0x1
:cond_2d
add-int/lit8 v2, v2, 0x1
goto :goto_10
.end method
.method public startDownload()V
.registers 3
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->DOWNLOAD_PICTURE_SAVE_PATH:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_10
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_10
iget-object v1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mReqests:Ljava/util/List;
if-eqz v1, :cond_24
iget-object v1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->mReqests:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_24
new-instance v1, Ljava/lang/Thread;
invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
:cond_24
return-void
.end method