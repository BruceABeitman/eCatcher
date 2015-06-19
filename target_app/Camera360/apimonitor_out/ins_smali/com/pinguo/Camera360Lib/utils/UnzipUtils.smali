.class public Lcom/pinguo/Camera360Lib/utils/UnzipUtils;
.super Ljava/lang/Object;
.source "UnzipUtils.java"
.field private static final BUFFER_SIZE:I = 0x2000
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/Camera360Lib/utils/UnzipUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/utils/UnzipUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static dirChecker(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_2a
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_2a
sget-object v1, Lcom/pinguo/Camera360Lib/utils/UnzipUtils;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Create dir failed!"
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_2a
return-void
.end method
.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
.registers 16
const/16 v11, 0x2000
new-array v0, v11, [B
const/4 v2, 0x0
const/4 v9, 0x0
const/4 v4, 0x0
new-instance v6, Ljava/io/File;
invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v7, 0x0
:try_start_d
new-instance v3, Ljava/io/FileInputStream;
invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_start_12
:try_end_12
.catchall {:try_start_d .. :try_end_12} :catchall_6e
.catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_f0
new-instance v10, Ljava/util/zip/ZipInputStream;
invoke-direct {v10, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_17
.catchall {:try_start_12 .. :try_end_17} :catchall_e4
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_f3
const/4 v8, 0x0
move-object v5, v4
:try_start_19
:goto_19
invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
move-result-object v8
if-nez v8, :cond_38
invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
:try_end_22
.catchall {:try_start_19 .. :try_end_22} :catchall_e7
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_5f
const/4 v9, 0x0
if-eqz v7, :cond_28
:try_start_25
invoke-virtual {v7}, Ljava/io/File;->delete()Z
:try_end_28
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_d8
:cond_28
:goto_28
if-eqz v5, :cond_2d
:try_start_2a
invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
:goto_2d
:cond_2d
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_db
if-eqz v9, :cond_32
:try_start_2f
invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
:goto_32
:cond_32
:try_end_32
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_de
if-eqz v3, :cond_37
:try_start_34
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:goto_37
:cond_37
:try_end_37
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_e1
return-void
:try_start_38
:cond_38
sget-object v11, Lcom/pinguo/Camera360Lib/utils/UnzipUtils;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "Unzipping "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z
move-result v11
if-eqz v11, :cond_84
invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v11
invoke-static {p1, v11}, Lcom/pinguo/Camera360Lib/utils/UnzipUtils;->dirChecker(Ljava/lang/String;Ljava/lang/String;)V
:try_end_5e
.catchall {:try_start_38 .. :try_end_5e} :catchall_e7
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_5e} :catch_5f
goto :goto_19
:catch_5f
move-exception v1
move-object v4, v5
move-object v9, v10
move-object v2, v3
:goto_63
:try_start_63
sget-object v11, Lcom/pinguo/Camera360Lib/utils/UnzipUtils;->TAG:Ljava/lang/String;
invoke-static {v11, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v11, Ljava/lang/RuntimeException;
invoke-direct {v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v11
:catchall_6e
:try_end_6e
.catchall {:try_start_63 .. :try_end_6e} :catchall_6e
move-exception v11
:goto_6f
if-eqz v7, :cond_74
:try_start_71
invoke-virtual {v7}, Ljava/io/File;->delete()Z
:try_end_74
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_d0
:goto_74
:cond_74
if-eqz v4, :cond_79
:try_start_76
invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
:goto_79
:cond_79
:try_end_79
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_d2
if-eqz v9, :cond_7e
:try_start_7b
invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_d4
:cond_7e
:goto_7e
if-eqz v2, :cond_83
:try_start_80
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_83
.catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_d6
:goto_83
:cond_83
throw v11
:cond_84
:try_start_84
const-string/jumbo v11, "decomp"
const-string/jumbo v12, ".tmp"
invoke-static {v11, v12, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
move-result-object v7
new-instance v4, Ljava/io/BufferedOutputStream;
new-instance v11, Ljava/io/FileOutputStream;
invoke-direct {v11, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v4, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_98
.catchall {:try_start_84 .. :try_end_98} :catchall_e7
.catch Ljava/io/IOException; {:try_start_84 .. :try_end_98} :catch_5f
const/16 v11, 0x2000
:try_start_9a
invoke-static {v10, v4, v0, v11}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BI)V
invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->closeEntry()V
invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
const/4 v4, 0x0
new-instance v11, Ljava/io/File;
new-instance v12, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v13
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v11
if-nez v11, :cond_cc
sget-object v11, Lcom/pinguo/Camera360Lib/utils/UnzipUtils;->TAG:Ljava/lang/String;
const-string/jumbo v12, "Rename file failed!"
invoke-static {v11, v12}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_cc
:try_end_cc
.catchall {:try_start_9a .. :try_end_cc} :catchall_ec
.catch Ljava/io/IOException; {:try_start_9a .. :try_end_cc} :catch_f7
const/4 v7, 0x0
move-object v5, v4
goto/16 :goto_19
:catch_d0
move-exception v12
goto :goto_74
:catch_d2
move-exception v12
goto :goto_79
:catch_d4
move-exception v12
goto :goto_7e
:catch_d6
move-exception v12
goto :goto_83
:catch_d8
move-exception v11
goto/16 :goto_28
:catch_db
move-exception v11
goto/16 :goto_2d
:catch_de
move-exception v11
goto/16 :goto_32
:catch_e1
move-exception v11
goto/16 :goto_37
:catchall_e4
move-exception v11
move-object v2, v3
goto :goto_6f
:catchall_e7
move-exception v11
move-object v4, v5
move-object v9, v10
move-object v2, v3
goto :goto_6f
:catchall_ec
move-exception v11
move-object v9, v10
move-object v2, v3
goto :goto_6f
:catch_f0
move-exception v1
goto/16 :goto_63
:catch_f3
move-exception v1
move-object v2, v3
goto/16 :goto_63
:catch_f7
move-exception v1
move-object v9, v10
move-object v2, v3
goto/16 :goto_63
.end method