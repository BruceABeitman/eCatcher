.class  Lcom/glympse/android/hal/w;
.super Ljava/lang/Object;
.source "Directory.java"
.implements Lcom/glympse/android/hal/GDirectory;
.field private aS:Ljava/io/File;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
if-eqz p3, :cond_38
invoke-static {p1}, Lcom/glympse/android/hal/w;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_29
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_29
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
:goto_30
if-eqz p4, :cond_37
:try_start_32
iget-object v0, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:goto_37
:cond_37
:try_end_37
.catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_37} :catch_7a
return-void
:cond_38
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "/Android/data/"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/cache/glympse"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_72
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_72
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v2, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
goto :goto_30
:catch_7a
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_37
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/glympse/android/hal/GDirectory;
.registers 7
const/4 v1, 0x0
:try_start_1
new-instance v0, Lcom/glympse/android/hal/w;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/glympse/android/hal/w;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
invoke-direct {v0}, Lcom/glympse/android/hal/w;->exists()Z
:try_end_9
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_f
move-result v2
if-eqz v2, :cond_d
:goto_c
return-object v0
:cond_d
move-object v0, v1
goto :goto_c
:catch_f
move-exception v0
move-object v0, v1
goto :goto_c
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/glympse/android/hal/GDirectory;
.registers 7
const/4 v1, 0x0
:try_start_1
new-instance v0, Lcom/glympse/android/hal/w;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/glympse/android/hal/w;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
invoke-direct {v0}, Lcom/glympse/android/hal/w;->exists()Z
:try_end_9
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_f
move-result v2
if-eqz v2, :cond_d
:goto_c
return-object v0
:cond_d
move-object v0, v1
goto :goto_c
:catch_f
move-exception v0
move-object v0, v1
goto :goto_c
.end method
.method public static b(Landroid/content/Context;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/glympse"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private exists()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public deleteFile(Ljava/lang/String;)Z
.registers 4
:try_start_0
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:try_end_a
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const/4 v0, 0x0
goto :goto_b
.end method
.method public getContents()Lcom/glympse/android/hal/GVector;
.registers 7
new-instance v1, Lcom/glympse/android/hal/GVector;
invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V
:try_start_5
iget-object v0, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_24
array-length v3, v2
const/4 v0, 0x0
:goto_f
if-ge v0, v3, :cond_24
aget-object v4, v2, v0
invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_20
invoke-virtual {v1, v4}, Lcom/glympse/android/hal/GVector;->add(Ljava/lang/Object;)Z
:cond_20
:try_end_20
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_20} :catch_23
add-int/lit8 v0, v0, 0x1
goto :goto_f
:catch_23
move-exception v0
:cond_24
return-object v1
.end method
.method public hasFile(Ljava/lang/String;)Z
.registers 4
:try_start_0
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isFile()Z
:try_end_a
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const/4 v0, 0x0
goto :goto_b
.end method
.method public readBinary(Ljava/lang/String;)[B
.registers 9
const/4 v0, 0x0
const/4 v4, 0x0
:try_start_2
new-instance v3, Ljava/io/File;
iget-object v1, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->isFile()Z
move-result v1
if-nez v1, :cond_10
:cond_f
:goto_f
return-object v0
:cond_10
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v1
long-to-int v5, v1
new-array v1, v5, [B
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_1c
.catchall {:try_start_2 .. :try_end_1c} :catchall_44
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1c} :catch_33
move v3, v4
:goto_1d
if-ge v3, v5, :cond_29
sub-int v6, v5, v3
:try_start_21
invoke-virtual {v2, v1, v3, v6}, Ljava/io/FileInputStream;->read([BII)I
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_52
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_54
move-result v6
if-ltz v6, :cond_29
add-int/2addr v3, v6
goto :goto_1d
:cond_29
:try_start_29
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:goto_2c
:try_end_2c
.catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2e
move-object v0, v1
goto :goto_f
:catch_2e
move-exception v0
invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_2c
:catch_33
move-exception v1
move-object v2, v0
:goto_35
const/4 v3, 0x0
:try_start_36
invoke-static {v1, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_52
if-eqz v2, :cond_f
:try_start_3b
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_3e
.catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f
goto :goto_f
:catch_3f
move-exception v1
invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_f
:catchall_44
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_47
if-eqz v2, :cond_4c
:try_start_49
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:goto_4c
:cond_4c
:try_end_4c
.catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_4d
throw v0
:catch_4d
move-exception v1
invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_4c
:catchall_52
move-exception v0
goto :goto_47
:catch_54
move-exception v1
goto :goto_35
.end method
.method public readText(Ljava/lang/String;)Ljava/lang/String;
.registers 5
:try_start_0
invoke-virtual {p0, p1}, Lcom/glympse/android/hal/w;->readBinary(Ljava/lang/String;)[B
move-result-object v1
if-eqz v1, :cond_13
new-instance v0, Ljava/lang/String;
const-string v2, "UTF-8"
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_d
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-object v0
:catch_e
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_13
const/4 v0, 0x0
goto :goto_d
.end method
.method public writeBinary(Ljava/lang/String;[BI)Z
.registers 10
const/4 v0, 0x0
const/4 v2, 0x0
:try_start_2
new-instance v1, Ljava/io/File;
iget-object v3, p0, Lcom/glympse/android/hal/w;->aS:Ljava/io/File;
invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_2d
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
move-result v3
if-nez v3, :cond_2d
const/4 v3, 0x5
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to create file "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:goto_2c
:cond_2c
return v0
:cond_2d
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_32
.catchall {:try_start_2 .. :try_end_32} :catchall_50
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_32} :catch_40
const/4 v1, 0x0
:try_start_33
invoke-virtual {v3, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V
:try_start_36
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_5c
.catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_5f
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:goto_39
:try_end_39
.catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3b
const/4 v0, 0x1
goto :goto_2c
:catch_3b
move-exception v1
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_39
:catch_40
move-exception v1
:goto_41
const/4 v3, 0x0
:try_start_42
invoke-static {v1, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:try_end_45
.catchall {:try_start_42 .. :try_end_45} :catchall_50
if-eqz v2, :cond_2c
:try_start_47
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_4a
.catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_4b
goto :goto_2c
:catch_4b
move-exception v1
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_2c
:catchall_50
move-exception v1
:goto_51
if-eqz v2, :cond_56
:try_start_53
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:goto_56
:cond_56
:try_end_56
.catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_57
throw v1
:catch_57
move-exception v2
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_56
:catchall_5c
move-exception v1
move-object v2, v3
goto :goto_51
:catch_5f
move-exception v1
move-object v2, v3
goto :goto_41
.end method
.method public writeText(Ljava/lang/String;Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
:try_start_1
const-string v1, "UTF-8"
invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
array-length v2, v1
invoke-virtual {p0, p1, v1, v2}, Lcom/glympse/android/hal/w;->writeBinary(Ljava/lang/String;[BI)Z
:try_end_b
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_d
move-result v0
:goto_c
return v0
:catch_d
move-exception v1
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_c
.end method