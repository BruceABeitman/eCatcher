.class public Lcom/admarvel/android/b/d;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.registers 11
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:try_start_5
const-string v0, ""
new-instance v2, Ljava/io/File;
invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v3
if-nez v3, :cond_15
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_15
new-instance v3, Ljava/util/zip/ZipInputStream;
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_1f
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_9f
:goto_1f
:cond_1f
invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
move-result-object v4
if-eqz v4, :cond_113
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, "/"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z
move-result v5
if-eqz v5, :cond_a9
new-instance v4, Ljava/io/File;
invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v2
if-nez v2, :cond_1f
invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
:try_end_57
.catchall {:try_start_1f .. :try_end_57} :catchall_58
goto :goto_1f
:catchall_58
move-exception v1
move-object v8, v1
move-object v1, v0
move-object v0, v8
:goto_5c
:try_start_5c
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_8c
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "mv "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".tmp"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
:cond_8c
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_156
new-instance v0, Ljava/lang/Exception;
const-string v1, "Error in deleting Zip file "
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:try_end_9f
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_9f} :catch_9f
:catch_9f
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_a8
return-object v0
:try_start_a9
:cond_a9
invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v6
const-string v7, "."
invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v6
add-int/lit8 v6, v6, 0x1
invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_e9
const-string v5, "xml"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_d0
.catchall {:try_start_a9 .. :try_end_d0} :catchall_58
move-result v4
if-eqz v4, :cond_e9
:try_start_d3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, ".tmp"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_e5
.catchall {:try_start_d3 .. :try_end_e5} :catchall_15a
move-result-object v0
move-object v8, v0
move-object v0, v2
move-object v2, v8
:cond_e9
:try_start_e9
new-instance v4, Ljava/io/FileOutputStream;
const/4 v5, 0x0
invoke-direct {v4, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
:try_end_f6
.catchall {:try_start_e9 .. :try_end_f6} :catchall_58
const/16 v2, 0x2000
:try_start_f8
new-array v2, v2, [B
:goto_fa
invoke-virtual {v3, v2}, Ljava/util/zip/ZipInputStream;->read([B)I
move-result v5
const/4 v6, -0x1
if-eq v5, v6, :cond_10b
const/4 v6, 0x0
invoke-virtual {v4, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_105
.catchall {:try_start_f8 .. :try_end_105} :catchall_106
goto :goto_fa
:catchall_106
move-exception v1
:try_start_107
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
throw v1
:try_start_10b
:cond_10b
:try_end_10b
.catchall {:try_start_107 .. :try_end_10b} :catchall_58
invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
:try_start_10e
:try_end_10e
.catchall {:try_start_10b .. :try_end_10e} :catchall_106
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
:try_end_111
.catchall {:try_start_10e .. :try_end_111} :catchall_58
goto/16 :goto_1f
:try_start_113
:cond_113
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_143
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "mv "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".tmp"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
:cond_143
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_157
new-instance v0, Ljava/lang/Exception;
const-string v1, "Error in deleting Zip file "
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_156
throw v0
:try_end_157
.catch Ljava/lang/Exception; {:try_start_113 .. :try_end_157} :catch_9f
:cond_157
move-object v0, v1
goto/16 :goto_a8
:catchall_15a
move-exception v0
move-object v1, v2
goto/16 :goto_5c
.end method
.method public static a(Ljava/io/File;)V
.registers 5
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_c
:try_start_6
invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
const/4 v0, 0x0
:goto_e
array-length v2, v1
if-ge v0, v2, :cond_34
new-instance v2, Ljava/io/File;
aget-object v3, v1, v0
invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v3
if-eqz v3, :cond_27
invoke-static {v2}, Lcom/admarvel/android/b/d;->a(Ljava/io/File;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:goto_24
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_27
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:try_end_2a
.catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_2a} :catch_2b
goto :goto_24
:catch_2b
move-exception v0
invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_c
:cond_34
:try_start_34
invoke-virtual {p0}, Ljava/io/File;->delete()Z
:try_end_37
.catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_37} :catch_2b
goto :goto_c
.end method