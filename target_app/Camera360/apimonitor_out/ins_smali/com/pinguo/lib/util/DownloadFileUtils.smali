.class public Lcom/pinguo/lib/util/DownloadFileUtils;
.super Ljava/lang/Object;
.source "DownloadFileUtils.java"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/lib/util/DownloadFileUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/DownloadFileUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static doDownLoadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V
.registers 14
const/4 v9, 0x1
const-string/jumbo v6, "appDownLoad"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "--------->downloadTitle: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v6, "appDownLoad"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "--------->appFilePath: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_44
invoke-virtual {v0}, Ljava/io/File;->delete()Z
const-string/jumbo v6, "appDownLoad"
const-string/jumbo v7, "delete"
invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_44
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v6
if-nez v6, :cond_b4
move-object v5, p2
const-string/jumbo v6, "appDownLoad"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "url:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {v5}, Lcom/pinguo/lib/util/DownloadFileUtils;->encodeGB(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
new-instance v3, Landroid/app/DownloadManager$Request;
invoke-direct {v3, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
const/4 v6, 0x2
invoke-virtual {v3, v6}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
const/4 v6, 0x0
invoke-virtual {v3, v6}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v2
invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
invoke-virtual {v3, v9}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
invoke-virtual {v3, v9}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, ".apk"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v6, v7}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
invoke-virtual {v3, p0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
const-string/jumbo v6, "appDownLoad"
const-string/jumbo v7, "start appDownLoad request"
invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p3, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
:goto_b3
return-void
:cond_b4
const-string/jumbo v6, "appDownLoad"
const-string/jumbo v7, "mAppFile not delete"
invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b3
.end method
.method public static download(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
.registers 10
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v4, 0x0
:try_start_3
const-string/jumbo v5, "download"
const-string/jumbo v6, ".tmp"
invoke-static {v5, v6, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
move-result-object v4
new-instance v5, Ljava/net/URL;
invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v1
new-instance v3, Ljava/io/BufferedOutputStream;
new-instance v5, Ljava/io/FileOutputStream;
invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_65
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_59
:try_start_20
invoke-static {v1, v3}, Lcom/pinguo/lib/util/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_37
invoke-virtual {p1}, Ljava/io/File;->delete()Z
move-result v5
if-nez v5, :cond_37
sget-object v5, Lcom/pinguo/lib/util/DownloadFileUtils;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Delete file failed!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_37
invoke-virtual {v4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v5
if-nez v5, :cond_45
sget-object v5, Lcom/pinguo/lib/util/DownloadFileUtils;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Rename file failed!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_45
.catchall {:try_start_20 .. :try_end_45} :catchall_86
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_45} :catch_89
:cond_45
const/4 v4, 0x0
if-eqz v4, :cond_4c
:try_start_48
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:try_end_4b
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_82
const/4 v4, 0x0
:goto_4c
:cond_4c
if-eqz v1, :cond_52
:try_start_4e
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_51
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_84
const/4 v1, 0x0
:goto_52
:cond_52
if-eqz v3, :cond_8c
:try_start_54
invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
:try_end_57
.catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_79
const/4 v2, 0x0
:goto_58
return-void
:catch_59
move-exception v0
:goto_5a
:try_start_5a
sget-object v5, Lcom/pinguo/lib/util/DownloadFileUtils;->TAG:Ljava/lang/String;
invoke-static {v5, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v5, Ljava/lang/RuntimeException;
invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v5
:try_end_65
.catchall {:try_start_5a .. :try_end_65} :catchall_65
:catchall_65
move-exception v5
:goto_66
if-eqz v4, :cond_6c
:try_start_68
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_7c
const/4 v4, 0x0
:goto_6c
:cond_6c
if-eqz v1, :cond_72
:try_start_6e
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_71
.catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_7e
const/4 v1, 0x0
:cond_72
:goto_72
if-eqz v2, :cond_78
:try_start_74
invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
:try_end_77
.catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_80
const/4 v2, 0x0
:goto_78
:cond_78
throw v5
:catch_79
move-exception v5
move-object v2, v3
goto :goto_58
:catch_7c
move-exception v6
goto :goto_6c
:catch_7e
move-exception v6
goto :goto_72
:catch_80
move-exception v6
goto :goto_78
:catch_82
move-exception v5
goto :goto_4c
:catch_84
move-exception v5
goto :goto_52
:catchall_86
move-exception v5
move-object v2, v3
goto :goto_66
:catch_89
move-exception v0
move-object v2, v3
goto :goto_5a
:cond_8c
move-object v2, v3
goto :goto_58
.end method
.method public static encodeGB(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v6, 0x0
const-string/jumbo v3, "/"
invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v1, 0x1
:goto_9
array-length v3, v2
if-lt v1, v3, :cond_1d
aget-object v3, v2, v6
const-string/jumbo v4, "\\+"
const-string/jumbo v5, "%20"
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v6
aget-object v3, v2, v6
return-object v3
:try_start_1d
:cond_1d
aget-object v3, v2, v1
const-string/jumbo v4, "UTF-8"
invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v1
:goto_28
:try_end_28
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_28} :catch_49
new-instance v3, Ljava/lang/StringBuilder;
aget-object v4, v2, v6
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, v2, v1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v6
add-int/lit8 v1, v1, 0x1
goto :goto_9
:catch_49
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_28
.end method