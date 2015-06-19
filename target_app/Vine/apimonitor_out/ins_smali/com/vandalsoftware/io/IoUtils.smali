.class public final Lcom/vandalsoftware/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"
.field public static final UTF_8:Ljava/lang/String; = "UTF-8"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static closeQuietly(Ljava/io/Closeable;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static closeQuietly(Ljava/net/Socket;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-static {p0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static deleteContents(Ljava/io/File;)V
.registers 13
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v9
if-nez v9, :cond_1f
new-instance v9, Ljava/lang/IllegalArgumentException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "not a directory: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v9
:cond_1f
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
:goto_2c
:cond_2c
invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z
move-result v9
if-nez v9, :cond_59
invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v5
if-eqz v5, :cond_2c
move-object v0, v5
array-length v8, v0
const/4 v7, 0x0
:goto_41
if-ge v7, v8, :cond_55
aget-object v4, v0, v7
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v9
if-eqz v9, :cond_51
invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_4e
add-int/lit8 v7, v7, 0x1
goto :goto_41
:cond_51
invoke-static {v4}, Lcom/vandalsoftware/io/IoUtils;->deleteFileOrThrow(Ljava/io/File;)V
goto :goto_4e
:cond_55
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2c
:cond_59
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v9
add-int/lit8 v6, v9, -0x1
:goto_5f
if-ltz v6, :cond_6d
invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/io/File;
invoke-static {v1}, Lcom/vandalsoftware/io/IoUtils;->deleteFileOrThrow(Ljava/io/File;)V
add-int/lit8 v6, v6, -0x1
goto :goto_5f
:cond_6d
return-void
.end method
.method public static deleteFileOrThrow(Ljava/io/File;)V
.registers 4
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_25
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "failed to delete file: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
return-void
.end method
.method public static readFileAsByteArray(Ljava/lang/String;)[B
.registers 2
invoke-static {p0}, Lcom/vandalsoftware/io/IoUtils;->readFileAsBytes(Ljava/lang/String;)Lcom/vandalsoftware/io/UnsafeByteSequence;
move-result-object v0
invoke-virtual {v0}, Lcom/vandalsoftware/io/UnsafeByteSequence;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method private static readFileAsBytes(Ljava/lang/String;)Lcom/vandalsoftware/io/UnsafeByteSequence;
.registers 8
const/4 v3, 0x0
:try_start_1
new-instance v4, Ljava/io/RandomAccessFile;
const-string v5, "r"
invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_2c
:try_start_8
new-instance v2, Lcom/vandalsoftware/io/UnsafeByteSequence;
invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v5
long-to-int v5, v5
invoke-direct {v2, v5}, Lcom/vandalsoftware/io/UnsafeByteSequence;-><init>(I)V
const/16 v5, 0x2000
new-array v0, v5, [B
:goto_16
invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_26
move-result v1
const/4 v5, -0x1
if-ne v1, v5, :cond_21
invoke-static {v4}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V
return-object v2
:cond_21
const/4 v5, 0x0
:try_start_22
invoke-virtual {v2, v0, v5, v1}, Lcom/vandalsoftware/io/UnsafeByteSequence;->write([BII)V
:try_end_25
.catchall {:try_start_22 .. :try_end_25} :catchall_26
goto :goto_16
:catchall_26
move-exception v5
move-object v3, v4
:goto_28
invoke-static {v3}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V
throw v5
:catchall_2c
move-exception v5
goto :goto_28
.end method
.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Lcom/vandalsoftware/io/IoUtils;->readFileAsBytes(Ljava/lang/String;)Lcom/vandalsoftware/io/UnsafeByteSequence;
move-result-object v0
const-string v1, "UTF-8"
invoke-virtual {v0, v1}, Lcom/vandalsoftware/io/UnsafeByteSequence;->toString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static renameFileOrThrow(Ljava/io/File;Ljava/io/File;)V
.registers 5
invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_29
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "file not renamed "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
return-void
.end method