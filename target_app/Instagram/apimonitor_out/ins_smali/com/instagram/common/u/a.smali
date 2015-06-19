.class public final Lcom/instagram/common/u/a;
.super Ljava/lang/Object;
.source "FileUtil.java"
.method public static a(Ljava/util/concurrent/Executor;Ljava/lang/String;)V
.registers 3
new-instance v0, Lcom/instagram/common/u/b;
invoke-direct {v0, p1}, Lcom/instagram/common/u/b;-><init>(Ljava/lang/String;)V
invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public static a(Landroid/content/Context;)Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
if-nez v0, :cond_9
const/4 v0, 0x0
:goto_8
return v0
:cond_9
const/4 v0, 0x1
goto :goto_8
.end method
.method public static a(Ljava/io/InputStream;Ljava/io/File;)Z
.registers 7
const/4 v0, 0x0
const/4 v2, 0x0
const/16 v1, 0x1000
new-array v3, v1, [B
:try_start_6
new-instance v1, Ljava/io/BufferedOutputStream;
new-instance v4, Ljava/io/FileOutputStream;
invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_10
:goto_10
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_25
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_33
invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I
move-result v2
if-lez v2, :cond_20
const/4 v4, 0x0
invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V
:try_end_1a
.catchall {:try_start_10 .. :try_end_1a} :catchall_30
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_1b
goto :goto_10
:catch_1b
move-exception v2
:try_start_1c
:goto_1c
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_1f
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_2c
:goto_1f
return v0
:cond_20
:try_start_20
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_23
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2a
:goto_23
const/4 v0, 0x1
goto :goto_1f
:catchall_25
move-exception v0
:goto_26
:try_start_26
invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
:try_end_29
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2e
:goto_29
throw v0
:catch_2a
move-exception v0
goto :goto_23
:catch_2c
move-exception v1
goto :goto_1f
:catch_2e
move-exception v1
goto :goto_29
:catchall_30
move-exception v0
move-object v2, v1
goto :goto_26
:catch_33
move-exception v1
move-object v1, v2
goto :goto_1c
.end method
.method public static a(Ljava/lang/String;)Z
.registers 2
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
return v0
.end method
.method public static b(Landroid/content/Context;)Ljava/io/File;
.registers 6
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "tmp_photo_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v0
.end method
.method public static b(Ljava/lang/String;)V
.registers 6
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_1f
invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_11
if-ge v0, v3, :cond_1f
aget-object v4, v2, v0
invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/instagram/common/u/a;->b(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_1f
invoke-virtual {v1}, Ljava/io/File;->delete()Z
return-void
.end method
.method public static b(Ljava/util/concurrent/Executor;Ljava/lang/String;)V
.registers 3
new-instance v0, Lcom/instagram/common/u/c;
invoke-direct {v0, p1}, Lcom/instagram/common/u/c;-><init>(Ljava/lang/String;)V
invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public static c(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_23
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Couldn\'t create directory: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
return-void
.end method