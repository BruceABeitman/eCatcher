.class public Lorg/apache/commons/io/output/LockableFileWriter;
.super Ljava/io/Writer;
.source "LockableFileWriter.java"
.field private static final LCK:Ljava/lang/String; = ".lck"
.field private final lockFile:Ljava/io/File;
.field private final out:Ljava/io/Writer;
.method public constructor <init>(Ljava/io/File;)V
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
.registers 9
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object p1
invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_14
invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V
:cond_14
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_22
new-instance v1, Ljava/io/IOException;
const-string v2, "File specified is a directory"
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_22
if-nez p4, :cond_2a
const-string v1, "java.io.tmpdir"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object p4
:cond_2a
new-instance v0, Ljava/io/File;
invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V
invoke-direct {p0, v0}, Lorg/apache/commons/io/output/LockableFileWriter;->testLockDir(Ljava/io/File;)V
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".lck"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v1, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-direct {p0}, Lorg/apache/commons/io/output/LockableFileWriter;->createLock()V
invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/LockableFileWriter;->initWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;
move-result-object v1
iput-object v1, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
return-void
.end method
.method public constructor <init>(Ljava/io/File;Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;ZLjava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
.registers 5
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V
return-void
.end method
.method private createLock()V
.registers 5
const-class v0, Lorg/apache/commons/io/output/LockableFileWriter;
monitor-enter v0
:try_start_3
iget-object v1, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
move-result v1
if-nez v1, :cond_33
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Can\'t write file, lock "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " exists"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_30
move-exception v1
monitor-exit v0
:try_end_32
.catchall {:try_start_3 .. :try_end_32} :catchall_30
throw v1
:cond_33
:try_start_33
iget-object v1, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
monitor-exit v0
:try_end_39
.catchall {:try_start_33 .. :try_end_39} :catchall_30
return-void
.end method
.method private initWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;
.registers 11
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v1
const/4 v2, 0x0
const/4 v4, 0x0
if-nez p2, :cond_13
:try_start_8
new-instance v5, Ljava/io/FileWriter;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
move-object v4, v5
:goto_12
return-object v4
:cond_13
new-instance v3, Ljava/io/FileOutputStream;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
:try_start_1c
:try_end_1c
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_24
.catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1c} :catch_37
new-instance v5, Ljava/io/OutputStreamWriter;
invoke-direct {v5, v3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
:try_end_21
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_4e
.catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_21} :catch_4a
move-object v4, v5
move-object v2, v3
goto :goto_12
:catch_24
move-exception v6
move-object v0, v6
:goto_26
invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V
invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
iget-object v6, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-virtual {v6}, Ljava/io/File;->delete()Z
if-nez v1, :cond_36
invoke-virtual {p1}, Ljava/io/File;->delete()Z
:cond_36
throw v0
:catch_37
move-exception v6
move-object v0, v6
:goto_39
invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V
invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
iget-object v6, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-virtual {v6}, Ljava/io/File;->delete()Z
if-nez v1, :cond_49
invoke-virtual {p1}, Ljava/io/File;->delete()Z
:cond_49
throw v0
:catch_4a
move-exception v6
move-object v0, v6
move-object v2, v3
goto :goto_39
:catch_4e
move-exception v6
move-object v0, v6
move-object v2, v3
goto :goto_26
.end method
.method private testLockDir(Ljava/io/File;)V
.registers 5
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_23
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not find lockDir: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
invoke-virtual {p1}, Ljava/io/File;->canWrite()Z
move-result v0
if-nez v0, :cond_46
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not write to lockDir: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_46
return-void
.end method
.method public close()V
.registers 3
:try_start_0
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->close()V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_b
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
return-void
:catchall_b
move-exception v0
iget-object v1, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->delete()Z
throw v0
.end method
.method public flush()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
return-void
.end method
.method public write(I)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
return-void
.end method
.method public write(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
return-void
.end method
.method public write(Ljava/lang/String;II)V
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
return-void
.end method
.method public write([C)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V
return-void
.end method
.method public write([CII)V
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
return-void
.end method