.class public final Lcom/pinguo/lib/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"
.field private static final BUFFER_SIZE:I = 0x2000
.field public static final CAMERA360_ROOT:Ljava/lang/String;
.field public static final SDCARD_ROOT:Ljava/lang/String;
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/pinguo/lib/util/FileUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/FileUtils;->SDCARD_ROOT:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/lib/util/FileUtils;->SDCARD_ROOT:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/Camera360"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/FileUtils;->CAMERA360_ROOT:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static checkFolder(Ljava/io/File;)Z
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
goto :goto_3
:cond_c
invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
move-result v0
goto :goto_3
.end method
.method public static checkFolder(Ljava/lang/String;)Z
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v0
goto :goto_3
.end method
.method public static close(Ljava/io/InputStream;)V
.registers 1
if-eqz p0, :cond_6
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
const/4 p0, 0x0
:cond_6
return-void
.end method
.method public static close(Ljava/io/OutputStream;)V
.registers 1
if-eqz p0, :cond_6
invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
const/4 p0, 0x0
:cond_6
return-void
.end method
.method public static copyFolder(Ljava/io/File;Ljava/io/File;)V
.registers 9
sget-object v4, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Copy from: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " to: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_59
invoke-static {p1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3a
array-length v4, v2
if-nez v4, :cond_43
:cond_3a
sget-object v4, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
const-string/jumbo v5, "files is empty and can\'t do copy"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_42
:cond_42
return-void
:cond_43
array-length v5, v2
const/4 v4, 0x0
:goto_45
if-ge v4, v5, :cond_42
aget-object v1, v2, v4
new-instance v3, Ljava/io/File;
invoke-direct {v3, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v3, v0}, Lcom/pinguo/lib/util/FileUtils;->copyFolder(Ljava/io/File;Ljava/io/File;)V
add-int/lit8 v4, v4, 0x1
goto :goto_45
:cond_59
sget-object v4, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Copy file from: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " to: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0, p1}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/io/File;Ljava/io/File;)V
goto :goto_42
.end method
.method public static copySingleFile(Ljava/io/File;Ljava/io/File;)V
.registers 12
invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v6
invoke-static {v6}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v7
if-nez v7, :cond_2b
new-instance v7, Ljava/io/IOException;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Create Folder("
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ") Failed!"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_2b
const/4 v1, 0x0
:try_start_2c
new-instance v2, Ljava/io/BufferedInputStream;
new-instance v7, Ljava/io/FileInputStream;
invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_36
.catchall {:try_start_2c .. :try_end_36} :catchall_68
const/4 v4, 0x0
:try_start_37
new-instance v5, Ljava/io/BufferedOutputStream;
new-instance v7, Ljava/io/FileOutputStream;
invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_41
.catchall {:try_start_37 .. :try_end_41} :catchall_6a
const/16 v7, 0x2000
:try_start_43
new-array v0, v7, [B
const/4 v3, -0x1
:goto_46
invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
move-result v3
const/4 v7, -0x1
if-ne v3, v7, :cond_57
invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
:try_start_50
:try_end_50
.catchall {:try_start_43 .. :try_end_50} :catchall_5c
invoke-static {v5}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
:try_end_53
.catchall {:try_start_50 .. :try_end_53} :catchall_62
invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/InputStream;)V
return-void
:cond_57
const/4 v7, 0x0
:try_start_58
invoke-virtual {v5, v0, v7, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
:try_end_5b
.catchall {:try_start_58 .. :try_end_5b} :catchall_5c
goto :goto_46
:catchall_5c
move-exception v7
move-object v4, v5
:goto_5e
:try_start_5e
invoke-static {v4}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
throw v7
:try_end_62
.catchall {:try_start_5e .. :try_end_62} :catchall_62
:catchall_62
move-exception v7
move-object v1, v2
:goto_64
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/InputStream;)V
throw v7
:catchall_68
move-exception v7
goto :goto_64
:catchall_6a
move-exception v7
goto :goto_5e
.end method
.method public static copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_4
if-nez p1, :cond_25
:cond_4
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "path is Null, srcPath="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ",destPath="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/io/File;Ljava/io/File;)V
return-void
.end method
.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 4
const/16 v1, 0x2000
new-array v0, v1, [B
invoke-static {p0, p1, v0, v1}, Lcom/pinguo/lib/util/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BI)V
return-void
.end method
.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BI)V
.registers 7
:goto_0
const/4 v2, 0x0
:try_start_1
invoke-virtual {p0, p2, v2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
const/4 v2, -0x1
if-ne v0, v2, :cond_9
return-void
:cond_9
const/4 v2, 0x0
invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
:try_end_d
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e
goto :goto_0
:catch_e
move-exception v1
throw v1
.end method
.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
.registers 9
const/4 v4, 0x0
:try_start_1
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_15
invoke-virtual {p1}, Ljava/io/File;->delete()Z
move-result v5
if-nez v5, :cond_15
sget-object v5, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Delete file failed!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_15
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_1a
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_4a
const/16 v5, 0x1000
:try_start_1c
new-array v0, v5, [B
:goto_1e
invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
:try_end_21
.catchall {:try_start_1c .. :try_end_21} :catchall_4c
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_38
move-result v1
if-gez v1, :cond_33
:try_start_24
invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
:try_end_27
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_4a
:try_start_27
invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v5
invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
:try_start_2e
:goto_2e
:try_end_2e
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_5b
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:goto_31
:try_end_31
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4a
const/4 v4, 0x1
:goto_32
return v4
:cond_33
const/4 v5, 0x0
:try_start_34
invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_4c
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38
goto :goto_1e
:catch_38
move-exception v2
:try_start_39
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_3c
.catchall {:try_start_39 .. :try_end_3c} :catchall_4c
:try_start_3c
invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
:try_end_3f
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4a
:try_start_3f
invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v5
invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
:try_end_46
.catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_5f
:goto_46
:try_start_46
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
goto :goto_31
:catch_4a
move-exception v2
goto :goto_32
:catchall_4c
move-exception v5
invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
:try_start_50
:try_end_50
.catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_4a
invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v6
invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
:goto_57
:try_start_57
:try_end_57
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_57} :catch_5d
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
throw v5
:try_end_5b
.catch Ljava/io/IOException; {:try_start_57 .. :try_end_5b} :catch_4a
:catch_5b
move-exception v5
goto :goto_2e
:catch_5d
move-exception v6
goto :goto_57
:catch_5f
move-exception v5
goto :goto_46
.end method
.method public static deleteFile(Ljava/io/File;)V
.registers 4
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_11
:cond_8
sget-object v0, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
const-string/jumbo v1, "File is null or not exist, delete file fail!"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_10
:cond_10
return-void
:cond_11
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->deleteFile([Ljava/io/File;)V
:cond_1e
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_10
sget-object v0, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "delete ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ") failed!"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method public static deleteFile(Ljava/lang/String;)V
.registers 4
if-eqz p0, :cond_b
const-string/jumbo v1, ""
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_14
:cond_b
sget-object v1, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
const-string/jumbo v2, "File path is null or not exist, delete file fail!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_13
return-void
:cond_14
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
goto :goto_13
.end method
.method public static deleteFile([Ljava/io/File;)V
.registers 4
if-eqz p0, :cond_5
array-length v1, p0
if-nez v1, :cond_e
:cond_5
sget-object v1, Lcom/pinguo/lib/util/FileUtils;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Files is null or empty, delete fail!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_d
return-void
:cond_e
array-length v2, p0
const/4 v1, 0x0
:goto_10
if-ge v1, v2, :cond_d
aget-object v0, p0, v1
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
add-int/lit8 v1, v1, 0x1
goto :goto_10
.end method
.method public static getFileContent(Ljava/io/File;)Ljava/lang/String;
.registers 10
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/io/File;->length()J
move-result-wide v0
const-wide/16 v6, 0x7fff
cmp-long v6, v0, v6
if-lez v6, :cond_d
const-wide/16 v0, 0x7fff
:cond_d
new-instance v5, Ljava/lang/StringBuilder;
long-to-int v6, v0
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V
:try_start_13
new-instance v3, Ljava/io/BufferedReader;
new-instance v6, Ljava/io/InputStreamReader;
new-instance v7, Ljava/io/FileInputStream;
invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const-string/jumbo v8, "utf-8"
invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_25
.catchall {:try_start_13 .. :try_end_25} :catchall_49
const/4 v4, 0x0
:goto_26
:try_start_26
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_29
.catchall {:try_start_26 .. :try_end_29} :catchall_40
move-result-object v4
if-nez v4, :cond_37
if-eqz v3, :cond_4b
invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
const/4 v2, 0x0
:goto_32
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
:cond_37
:try_start_37
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v6, 0xa
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_3f
.catchall {:try_start_37 .. :try_end_3f} :catchall_40
goto :goto_26
:catchall_40
move-exception v6
move-object v2, v3
:goto_42
if-eqz v2, :cond_48
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
const/4 v2, 0x0
:cond_48
throw v6
:catchall_49
move-exception v6
goto :goto_42
:cond_4b
move-object v2, v3
goto :goto_32
.end method
.method public static getFileData(Ljava/io/File;)[B
.registers 4
const/4 v0, 0x0
:try_start_1
new-instance v1, Ljava/io/BufferedInputStream;
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_b
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_13
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->getStreamData(Ljava/io/InputStream;)[B
:try_end_e
.catchall {:try_start_b .. :try_end_e} :catchall_18
move-result-object v2
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/InputStream;)V
return-object v2
:catchall_13
move-exception v2
:goto_14
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/InputStream;)V
throw v2
:catchall_18
move-exception v2
move-object v0, v1
goto :goto_14
.end method
.method public static getFileData(Ljava/lang/String;)[B
.registers 2
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/io/File;)[B
move-result-object v0
return-object v0
.end method
.method public static getLineNumber(Ljava/io/File;)I
.registers 9
const/4 v3, 0x0
const/4 v0, 0x0
:try_start_2
new-instance v4, Ljava/io/LineNumberReader;
new-instance v5, Ljava/io/InputStreamReader;
new-instance v6, Ljava/io/FileInputStream;
invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const-string/jumbo v7, "UTF-8"
invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v4, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
:try_end_14
.catchall {:try_start_2 .. :try_end_14} :catchall_2a
.catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_14} :catch_25
const/4 v2, 0x0
:try_start_15
:goto_15
invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
:try_end_18
.catchall {:try_start_15 .. :try_end_18} :catchall_31
.catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_34
move-result-object v2
if-nez v2, :cond_22
move-object v3, v4
:goto_1c
if-eqz v3, :cond_21
:try_start_1e
invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
:goto_21
:cond_21
:try_end_21
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2c
return v0
:cond_22
add-int/lit8 v0, v0, 0x1
goto :goto_15
:catch_25
move-exception v1
:try_start_26
:goto_26
invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_29
.catchall {:try_start_26 .. :try_end_29} :catchall_2a
goto :goto_1c
:catchall_2a
move-exception v5
goto :goto_1c
:catch_2c
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_21
:catchall_31
move-exception v5
move-object v3, v4
goto :goto_1c
:catch_34
move-exception v1
move-object v3, v4
goto :goto_26
.end method
.method public static getStreamData(Ljava/io/InputStream;)[B
.registers 6
const/4 v2, 0x0
:try_start_1
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_28
const/16 v4, 0x2000
:try_start_8
new-array v0, v4, [B
const/4 v1, -0x1
:goto_b
invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v4, -0x1
if-ne v1, v4, :cond_1d
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_22
move-result-object v4
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
return-object v4
:cond_1d
const/4 v4, 0x0
:try_start_1e
invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_21
.catchall {:try_start_1e .. :try_end_21} :catchall_22
goto :goto_b
:catchall_22
move-exception v4
move-object v2, v3
:goto_24
invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
throw v4
:catchall_28
move-exception v4
goto :goto_24
.end method
.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
.registers 8
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_8
if-nez p1, :cond_a
:cond_8
const/4 v1, 0x0
:goto_9
return v1
:cond_a
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_c
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_11
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_2a
.catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_22
sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
invoke-virtual {p1, v4, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
move-result v4
if-eqz v4, :cond_1d
invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
:try_end_1c
.catchall {:try_start_11 .. :try_end_1c} :catchall_2f
.catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1c} :catch_32
const/4 v1, 0x1
:cond_1d
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
move-object v2, v3
goto :goto_9
:catch_22
move-exception v0
:goto_23
:try_start_23
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_26
.catchall {:try_start_23 .. :try_end_26} :catchall_2a
invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
goto :goto_9
:catchall_2a
move-exception v4
:goto_2b
invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
throw v4
:catchall_2f
move-exception v4
move-object v2, v3
goto :goto_2b
:catch_32
move-exception v0
move-object v2, v3
goto :goto_23
.end method
.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;)Z
.registers 9
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_8
if-nez p1, :cond_a
:cond_8
const/4 v1, 0x0
:goto_9
return v1
:cond_a
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_c
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_11
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_28
.catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_20
invoke-virtual {p1, p3, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
move-result v4
if-eqz v4, :cond_1b
invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
:try_end_1a
.catchall {:try_start_11 .. :try_end_1a} :catchall_2d
.catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1a} :catch_30
const/4 v1, 0x1
:cond_1b
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
move-object v2, v3
goto :goto_9
:catch_20
move-exception v0
:goto_21
:try_start_21
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_28
invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
goto :goto_9
:catchall_28
move-exception v4
:goto_29
invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
throw v4
:catchall_2d
move-exception v4
move-object v2, v3
goto :goto_29
:catch_30
move-exception v0
move-object v2, v3
goto :goto_21
.end method
.method public static saveFile([BLjava/lang/String;)V
.registers 8
if-nez p0, :cond_b
new-instance v3, Ljava/io/IOException;
const-string/jumbo v4, "data is null"
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:cond_b
if-nez p1, :cond_16
new-instance v3, Ljava/io/IOException;
const-string/jumbo v4, "path is null"
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:cond_16
new-instance v3, Ljava/io/File;
invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v3
if-nez v3, :cond_46
new-instance v3, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Create Folder("
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ") Failed!"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:cond_46
const/4 v0, 0x0
:try_start_47
new-instance v1, Ljava/io/BufferedOutputStream;
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_51
:try_end_51
.catchall {:try_start_47 .. :try_end_51} :catchall_58
invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
:try_end_54
.catchall {:try_start_51 .. :try_end_54} :catchall_5d
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
return-void
:catchall_58
move-exception v3
:goto_59
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
throw v3
:catchall_5d
move-exception v3
move-object v0, v1
goto :goto_59
.end method
.method public static writeFileContent(Ljava/io/File;Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/io/FileOutputStream;
invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_start_5
const-string/jumbo v1, "utf-8"
invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
:try_end_12
.catchall {:try_start_5 .. :try_end_12} :catchall_16
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
return-void
:catchall_16
move-exception v1
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->close(Ljava/io/OutputStream;)V
throw v1
.end method