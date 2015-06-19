.class public abstract Lcom/pinguo/Camera360Lib/network/HttpFileRequest;
.super Ljava/lang/Object;
.source "HttpFileRequest.java"
.field private static final BUFFER_SIZE:I = 0x2000
.field private static final MSG_ON_ERROR_RESPONSE:I = 0x1
.field private static final MSG_ON_PROGRESS:I = 0x3
.field private static final MSG_ON_SUCCESS_RESPONSE:I = 0x2
.field public DEFAULT_PROGRESS_INTERVAL:I
.field private mFileName:Ljava/lang/String;
.field private mFilePath:Ljava/lang/String;
.field private mInternalHandler:Landroid/os/Handler;
.field private mIsCanceled:Z
.field private mOverridable:Z
.field private mProgressInterval:I
.field private mUrl:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mOverridable:Z
iput-boolean v1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mIsCanceled:Z
const/16 v0, 0x64
iput v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->DEFAULT_PROGRESS_INTERVAL:I
iput v1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mProgressInterval:I
iput-object p1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mUrl:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFilePath:Ljava/lang/String;
const-string/jumbo v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFileName:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mOverridable:Z
iput-boolean v1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mIsCanceled:Z
const/16 v0, 0x64
iput v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->DEFAULT_PROGRESS_INTERVAL:I
iput v1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mProgressInterval:I
iput-object p1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mUrl:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFilePath:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFileName:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)I
.registers 2
iget v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mProgressInterval:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFilePath:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFileName:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->downloadWithProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mInternalHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->deliverMessage(Landroid/os/Message;)V
return-void
.end method
.method private createHandler(Landroid/os/Looper;)Landroid/os/Handler;
.registers 3
if-eqz p1, :cond_8
new-instance v0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$2;
invoke-direct {v0, p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$2;-><init>(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Landroid/os/Looper;)V
:goto_7
return-object v0
:cond_8
new-instance v0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$3;
invoke-direct {v0, p0}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$3;-><init>(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)V
goto :goto_7
.end method
.method private deliverMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x2
if-ne v0, v1, :cond_12
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->onResponse(Ljava/io/File;)V
:goto_11
:cond_11
return-void
:cond_12
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1f
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Exception;
invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->onErrorResponse(Ljava/lang/Exception;)V
goto :goto_11
:cond_1f
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x3
if-ne v0, v1, :cond_11
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->onProgress(I)V
goto :goto_11
.end method
.method private download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
invoke-static {p2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->checkFolder(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_23
new-instance v4, Ljava/io/IOException;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Create folder("
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ") failed!"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:cond_23
new-instance v2, Ljava/net/URL;
invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const/4 v4, 0x1
:try_start_2f
invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
const/16 v4, 0xc8
if-eq v3, v4, :cond_55
new-instance v4, Ljava/io/IOException;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Http connect error,status code ="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:catchall_50
:try_end_50
.catchall {:try_start_2f .. :try_end_50} :catchall_50
move-exception v4
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v4
:cond_55
if-eqz p3, :cond_5d
:try_start_57
invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-eqz v4, :cond_6a
:cond_5d
const-string/jumbo v4, "/"
invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v4
add-int/lit8 v4, v4, 0x1
invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p3
:cond_6a
new-instance v1, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_94
iget-boolean v4, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mOverridable:Z
:try_end_8e
.catchall {:try_start_57 .. :try_end_8e} :catchall_50
if-nez v4, :cond_94
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:goto_93
return-object p3
:try_start_94
:cond_94
invoke-direct {p0, p2, v0, p3}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
:try_end_97
.catchall {:try_start_94 .. :try_end_97} :catchall_50
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
goto :goto_93
.end method
.method private downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
.registers 12
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/BufferedInputStream;
invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v6
invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_4f
const/4 v4, 0x0
:try_start_b
new-instance v5, Ljava/io/FileOutputStream;
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_end_27
.catchall {:try_start_b .. :try_end_27} :catchall_51
const/16 v6, 0x2000
:try_start_29
new-array v0, v6, [B
const/4 v3, -0x1
:goto_2c
invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
move-result v3
const/4 v6, -0x1
if-eq v3, v6, :cond_37
iget-boolean v6, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mIsCanceled:Z
:try_end_35
.catchall {:try_start_29 .. :try_end_35} :catchall_43
if-eqz v6, :cond_3e
:cond_37
:try_start_37
invoke-static {v5}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V
:try_end_3a
.catchall {:try_start_37 .. :try_end_3a} :catchall_49
invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V
return-void
:cond_3e
const/4 v6, 0x0
:try_start_3f
invoke-virtual {v5, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_42
.catchall {:try_start_3f .. :try_end_42} :catchall_43
goto :goto_2c
:catchall_43
move-exception v6
move-object v4, v5
:goto_45
:try_start_45
invoke-static {v4}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V
throw v6
:catchall_49
:try_end_49
.catchall {:try_start_45 .. :try_end_49} :catchall_49
move-exception v6
move-object v1, v2
:goto_4b
invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V
throw v6
:catchall_4f
move-exception v6
goto :goto_4b
:catchall_51
move-exception v6
goto :goto_45
.end method
.method private downloadWithProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
invoke-static {p2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->checkFolder(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_23
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Create folder("
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, ") failed!"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
new-instance v7, Ljava/net/URL;
invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v2
check-cast v2, Ljava/net/HttpURLConnection;
const/4 v0, 0x1
:try_start_2f
invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v8
const/16 v0, 0xc8
if-eq v8, v0, :cond_55
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Http connect error,status code ="
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_50
:try_end_50
.catchall {:try_start_2f .. :try_end_50} :catchall_50
move-exception v0
invoke-static {v2}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v0
:try_start_55
:cond_55
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I
move-result v0
int-to-long v4, v0
const-wide/16 v0, 0x0
cmp-long v0, v4, v0
if-gez v0, :cond_69
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Unkonw File Size!"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_69
if-eqz p3, :cond_71
invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_7e
:cond_71
const-string/jumbo v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p3
:cond_7e
new-instance v6, Ljava/io/File;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_b0
iget-boolean v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mOverridable:Z
if-nez v0, :cond_b0
invoke-virtual {v6}, Ljava/io/File;->length()J
:try_end_a7
.catchall {:try_start_55 .. :try_end_a7} :catchall_50
move-result-wide v0
cmp-long v0, v0, v4
if-nez v0, :cond_b0
invoke-static {v2}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:goto_af
return-void
:cond_b0
move-object v0, p0
move-object v1, p2
move-object v3, p3
:try_start_b3
invoke-direct/range {v0 .. v5}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->downloadWithProgress(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;J)V
:try_end_b6
.catchall {:try_start_b3 .. :try_end_b6} :catchall_50
invoke-static {v2}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
goto :goto_af
.end method
.method private downloadWithProgress(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;J)V
.registers 26
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v12
const/4 v3, 0x0
:try_start_5
new-instance v4, Ljava/io/BufferedInputStream;
invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_10
.catchall {:try_start_5 .. :try_end_10} :catchall_b3
const/4 v7, 0x0
:try_start_11
new-instance v8, Ljava/io/FileOutputStream;
new-instance v16, Ljava/lang/StringBuilder;
invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v17
invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, v16
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_end_33
.catchall {:try_start_11 .. :try_end_33} :catchall_a8
const/16 v16, 0x2000
:try_start_35
move/from16 v0, v16
new-array v2, v0, [B
const/4 v5, -0x1
const-wide/16 v10, 0x0
const/4 v9, 0x0
:goto_3d
:cond_3d
invoke-virtual {v4, v2}, Ljava/io/BufferedInputStream;->read([B)I
move-result v5
const/16 v16, -0x1
move/from16 v0, v16
if-eq v5, v0, :cond_4f
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mIsCanceled:Z
move/from16 v16, v0
:try_end_4d
.catchall {:try_start_35 .. :try_end_4d} :catchall_b5
if-eqz v16, :cond_56
:cond_4f
:try_start_4f
invoke-static {v8}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V
:try_end_52
.catchall {:try_start_4f .. :try_end_52} :catchall_ad
invoke-static {v4}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V
return-void
:cond_56
const/16 v16, 0x0
:try_start_58
move/from16 v0, v16
invoke-virtual {v8, v2, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mProgressInterval:I
move/from16 v16, v0
if-lez v16, :cond_3d
int-to-long v0, v5
move-wide/from16 v16, v0
add-long v10, v10, v16
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v14
sub-long v16, v14, v12
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mProgressInterval:I
move/from16 v18, v0
move/from16 v0, v18
int-to-long v0, v0
move-wide/from16 v18, v0
cmp-long v16, v16, v18
if-lez v16, :cond_3d
const-wide/16 v16, 0x64
mul-long v16, v16, v10
div-long v16, v16, p4
move-wide/from16 v0, v16
long-to-int v9, v0
new-instance v6, Landroid/os/Message;
invoke-direct {v6}, Landroid/os/Message;-><init>()V
const/16 v16, 0x3
move/from16 v0, v16
iput v0, v6, Landroid/os/Message;->what:I
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
move-object/from16 v0, v16
iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mInternalHandler:Landroid/os/Handler;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_end_a6
.catchall {:try_start_58 .. :try_end_a6} :catchall_b5
move-wide v12, v14
goto :goto_3d
:catchall_a8
move-exception v16
:goto_a9
:try_start_a9
invoke-static {v7}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V
throw v16
:catchall_ad
:try_end_ad
.catchall {:try_start_a9 .. :try_end_ad} :catchall_ad
move-exception v16
move-object v3, v4
:goto_af
invoke-static {v3}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V
throw v16
:catchall_b3
move-exception v16
goto :goto_af
:catchall_b5
move-exception v16
move-object v7, v8
goto :goto_a9
.end method
.method public cancel()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mIsCanceled:Z
return-void
.end method
.method public execute()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->execute(Landroid/os/Looper;)V
return-void
.end method
.method public execute(Landroid/os/Looper;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mInternalHandler:Landroid/os/Handler;
if-nez v0, :cond_a
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mInternalHandler:Landroid/os/Handler;
:cond_a
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;
invoke-direct {v1, p0}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;-><init>(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public getAbsolutePath()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFilePath:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFileName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getFileName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFileName:Ljava/lang/String;
return-object v0
.end method
.method public getFilePath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFilePath:Ljava/lang/String;
return-object v0
.end method
.method protected abstract onErrorResponse(Ljava/lang/Exception;)V
.end method
.method protected onProgress(I)V
.registers 2
return-void
.end method
.method protected abstract onResponse(Ljava/io/File;)V
.end method
.method public setOverridable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mOverridable:Z
return-void
.end method
.method public setProgressInterval(I)V
.registers 2
iput p1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mProgressInterval:I
return-void
.end method