.class public final Lcom/alipay/android/app/util/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"
.field private fetch:Lcom/alipay/android/app/util/FileFetch;
.field private fileUrl:Ljava/lang/String;
.field private progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
.field private savePath:Ljava/lang/String;
.field public showProgress:Z
.field private tmpPath:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/alipay/android/app/util/FileDownloader;->showProgress:Z
return-void
.end method
.method public constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/alipay/android/app/util/FileDownloader;->showProgress:Z
return-void
.end method
.method static synthetic access$0(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
return-object v0
.end method
.method static synthetic access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
return-object v0
.end method
.method static synthetic access$2(Lcom/alipay/android/app/util/FileDownloader;)V
.registers 1
invoke-direct {p0}, Lcom/alipay/android/app/util/FileDownloader;->deleteFile()V
return-void
.end method
.method static synthetic access$3(Lcom/alipay/android/app/util/FileDownloader;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/util/FileDownloader;->fileUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/alipay/android/app/util/FileDownloader;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/util/FileDownloader;->savePath:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$5(Lcom/alipay/android/app/util/FileDownloader;Lcom/alipay/android/app/util/FileFetch;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
return-void
.end method
.method static synthetic access$6(Lcom/alipay/android/app/util/FileDownloader;)J
.registers 3
invoke-direct {p0}, Lcom/alipay/android/app/util/FileDownloader;->getFileSize()J
move-result-wide v0
return-wide v0
.end method
.method static synthetic access$7(Lcom/alipay/android/app/util/FileDownloader;)V
.registers 1
invoke-direct {p0}, Lcom/alipay/android/app/util/FileDownloader;->readTempFile()V
return-void
.end method
.method private deleteFile()V
.registers 3
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/alipay/android/app/util/FileDownloader;->savePath:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_10
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_10
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/alipay/android/app/util/FileDownloader;->tmpPath:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_20
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_20
return-void
.end method
.method private getFileSize()J
.registers 7
const-wide/16 v2, -0x1
:try_start_2
iget-object v4, p0, Lcom/alipay/android/app/util/FileDownloader;->fileUrl:Ljava/lang/String;
const/4 v5, 0x0
invoke-static {v4, v5}, Lcom/alipay/android/app/util/FileDownloader;->getHttpEntity(Ljava/lang/String;Z)Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J
:try_end_c
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e
move-result-wide v2
:goto_d
return-wide v2
:catch_e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_d
.end method
.method public static getHttpEntity(Ljava/lang/String;Z)Lorg/apache/http/HttpEntity;
.registers 11
:try_start_0
new-instance v4, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
if-eqz p1, :cond_15
const-string/jumbo v6, "Accept-Encoding"
const-string/jumbo v7, "gzip"
invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_15
invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v5
invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v6
invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
const/16 v6, 0xc8
if-ne v0, v6, :cond_2a
invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v2
:goto_29
return-object v2
:cond_2a
new-instance v6, Ljava/lang/Exception;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "net work exception,ErrorCode :"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v6
:try_end_40
.catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_40} :catch_40
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_46
:catch_40
move-exception v1
invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->printStackTrace()V
:goto_44
const/4 v2, 0x0
goto :goto_29
:catch_46
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_44
.end method
.method private readTempFile()V
.registers 9
const/4 v1, 0x0
const/4 v3, 0x0
:try_start_2
new-instance v2, Ljava/io/FileInputStream;
iget-object v5, p0, Lcom/alipay/android/app/util/FileDownloader;->tmpPath:Ljava/lang/String;
invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_end_9
.catchall {:try_start_2 .. :try_end_9} :catchall_36
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_29
:try_start_9
new-instance v4, Ljava/io/ObjectInputStream;
invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_e
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_4a
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_51
iget-object v5, p0, Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Lcom/alipay/android/app/util/FileFetch;->setFileStart(J)V
iget-object v5, p0, Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Lcom/alipay/android/app/util/FileFetch;->setFileEnd(J)V
:try_end_20
.catchall {:try_start_e .. :try_end_20} :catchall_4d
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_54
:try_start_20
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_23
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_48
:goto_23
:try_start_23
invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
:try_end_26
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_3e
move-object v3, v4
move-object v1, v2
:goto_28
return-void
:catch_29
move-exception v0
:try_start_2a
:goto_2a
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_start_2d
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_36
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_42
invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
:try_end_33
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34
goto :goto_28
:catch_34
move-exception v5
goto :goto_28
:catchall_36
move-exception v5
:goto_37
:try_start_37
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_44
:try_start_3a
:goto_3a
invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
:try_end_3d
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_46
:goto_3d
throw v5
:catch_3e
move-exception v5
move-object v3, v4
move-object v1, v2
goto :goto_28
:catch_42
move-exception v5
goto :goto_30
:catch_44
move-exception v6
goto :goto_3a
:catch_46
move-exception v6
goto :goto_3d
:catch_48
move-exception v5
goto :goto_23
:catchall_4a
move-exception v5
move-object v1, v2
goto :goto_37
:catchall_4d
move-exception v5
move-object v3, v4
move-object v1, v2
goto :goto_37
:catch_51
move-exception v0
move-object v1, v2
goto :goto_2a
:catch_54
move-exception v0
move-object v3, v4
move-object v1, v2
goto :goto_2a
.end method
.method public final setFileUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/util/FileDownloader;->fileUrl:Ljava/lang/String;
return-void
.end method
.method public final setProgressOutput(Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;)V
.registers 2
if-eqz p1, :cond_4
iput-object p1, p0, Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
:cond_4
return-void
.end method
.method public final setSavePath(Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/alipay/android/app/util/FileDownloader;->savePath:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".tmp"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/alipay/android/app/util/FileDownloader;->tmpPath:Ljava/lang/String;
return-void
.end method
.method public final setShowProgress(Z)V
.registers 2
iput-boolean p1, p0, Lcom/alipay/android/app/util/FileDownloader;->showProgress:Z
return-void
.end method
.method protected final showProgress()Z
.registers 2
iget-boolean v0, p0, Lcom/alipay/android/app/util/FileDownloader;->showProgress:Z
return v0
.end method
.method public start()V
.registers 4
new-instance v0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, p0, v2}, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;-><init>(Landroid/os/Looper;Lcom/alipay/android/app/util/FileDownloader;Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;)V
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/alipay/android/app/util/FileDownloader$1;
invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/util/FileDownloader$1;-><init>(Lcom/alipay/android/app/util/FileDownloader;Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-virtual {v0}, Lcom/alipay/android/app/util/FileFetch;->stop()V
return-void
.end method
.method protected writeTempFile()V
.registers 8
const/4 v3, 0x0
const/4 v1, 0x0
:try_start_2
new-instance v4, Ljava/io/FileOutputStream;
iget-object v5, p0, Lcom/alipay/android/app/util/FileDownloader;->tmpPath:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_end_9
.catchall {:try_start_2 .. :try_end_9} :catchall_39
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_2c
:try_start_9
new-instance v2, Ljava/io/ObjectOutputStream;
invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_e
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_4d
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_54
iget-object v5, p0, Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-virtual {v5}, Lcom/alipay/android/app/util/FileFetch;->getFileStart()J
move-result-wide v5
invoke-virtual {v2, v5, v6}, Ljava/io/ObjectOutputStream;->writeLong(J)V
iget-object v5, p0, Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-virtual {v5}, Lcom/alipay/android/app/util/FileFetch;->getFileEnd()J
move-result-wide v5
invoke-virtual {v2, v5, v6}, Ljava/io/ObjectOutputStream;->writeLong(J)V
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
:try_end_23
.catchall {:try_start_e .. :try_end_23} :catchall_50
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_57
:try_start_23
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
:try_end_26
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_4b
:goto_26
:try_start_26
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
:try_end_29
.catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_41
move-object v1, v2
move-object v3, v4
:goto_2b
return-void
:catch_2c
move-exception v0
:try_start_2d
:goto_2d
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_start_30
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_39
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:goto_33
:try_start_33
:try_end_33
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_45
invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
:try_end_36
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37
goto :goto_2b
:catch_37
move-exception v5
goto :goto_2b
:catchall_39
move-exception v5
:try_start_3a
:goto_3a
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_3d
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_47
:try_start_3d
:goto_3d
invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_49
:goto_40
throw v5
:catch_41
move-exception v5
move-object v1, v2
move-object v3, v4
goto :goto_2b
:catch_45
move-exception v5
goto :goto_33
:catch_47
move-exception v6
goto :goto_3d
:catch_49
move-exception v6
goto :goto_40
:catch_4b
move-exception v5
goto :goto_26
:catchall_4d
move-exception v5
move-object v3, v4
goto :goto_3a
:catchall_50
move-exception v5
move-object v1, v2
move-object v3, v4
goto :goto_3a
:catch_54
move-exception v0
move-object v3, v4
goto :goto_2d
:catch_57
move-exception v0
move-object v1, v2
move-object v3, v4
goto :goto_2d
.end method