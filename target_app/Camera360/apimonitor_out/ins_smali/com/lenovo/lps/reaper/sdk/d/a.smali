.class public Lcom/lenovo/lps/reaper/sdk/d/a;
.super Ljava/lang/Object;
.field private a:Landroid/content/Context;
.field private b:Ljava/io/RandomAccessFile;
.field private c:Ljava/nio/channels/FileChannel;
.field private d:Z
.field private e:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->a:Landroid/content/Context;
return-void
.end method
.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
:try_start_0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p1}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_15
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17
move-result-object v0
:goto_16
return-object v0
:catch_17
move-exception v0
:cond_18
const/4 v0, 0x0
goto :goto_16
.end method
.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p1}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_14
invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
invoke-virtual {v1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_11
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13
move-result-object v0
:goto_12
return-object v0
:catch_13
move-exception v0
:cond_14
const/4 v0, 0x0
goto :goto_12
.end method
.method public static a(Ljava/lang/Class;Ljava/lang/String;)Z
.registers 7
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v2
array-length v3, v2
move v1, v0
:goto_7
if-ge v1, v3, :cond_16
aget-object v4, v2, v1
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_12
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1a
move-result v4
if-eqz v4, :cond_17
const/4 v0, 0x1
:cond_16
:goto_16
return v0
:cond_17
add-int/lit8 v1, v1, 0x1
goto :goto_7
:catch_1a
move-exception v1
goto :goto_16
.end method
.method private c()V
.registers 5
:try_start_0
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
const/4 v0, 0x0
:goto_c
array-length v2, v1
if-ge v0, v2, :cond_51
aget-object v2, v1, v0
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "lenovo_reaper.db"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2f
const/16 v3, 0xc
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2f
aget-object v2, v1, v0
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_32
:cond_2f
add-int/lit8 v0, v0, 0x1
goto :goto_c
:catch_32
move-exception v0
const-string/jumbo v1, "FileStorage"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Delete DataFile Exception. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_51
return-void
.end method
.method public final a(Ljava/nio/ByteBuffer;)I
.registers 3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
move-result v0
return v0
.end method
.method public final a()V
.registers 6
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->d:Z
if-nez v0, :cond_43
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/data/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/files/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->e:Ljava/lang/String;
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_40
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_40
invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/d/a;->c()V
:try_start_43
:cond_43
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
:try_end_45
.catchall {:try_start_43 .. :try_end_45} :catchall_bb
.catch Ljava/io/IOException; {:try_start_43 .. :try_end_45} :catch_91
if-eqz v0, :cond_51
:try_start_47
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
const-wide/16 v0, 0x14
invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
:goto_51
:cond_51
:try_start_51
:try_end_51
.catchall {:try_start_47 .. :try_end_51} :catchall_bb
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_51} :catch_c9
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->b:Ljava/io/RandomAccessFile;
:try_end_53
.catchall {:try_start_51 .. :try_end_53} :catchall_bb
.catch Ljava/io/IOException; {:try_start_51 .. :try_end_53} :catch_91
if-eqz v0, :cond_5f
:try_start_55
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
const-wide/16 v0, 0x14
invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
:goto_5f
:cond_5f
:try_end_5f
.catchall {:try_start_55 .. :try_end_5f} :catchall_bb
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_c7
:try_start_5f
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "lenovo_reaper.db"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0xc
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
new-instance v1, Ljava/io/RandomAccessFile;
new-instance v2, Ljava/io/File;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "rw"
invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->b:Ljava/io/RandomAccessFile;
:try_end_86
.catchall {:try_start_5f .. :try_end_86} :catchall_bb
.catch Ljava/io/IOException; {:try_start_5f .. :try_end_86} :catch_91
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
iput-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->d:Z
:goto_90
return-void
:catch_91
move-exception v0
:try_start_92
const-string/jumbo v1, "FileStorage"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Error to Close or Create DataFile. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_b0
.catchall {:try_start_92 .. :try_end_b0} :catchall_bb
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
iput-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->d:Z
goto :goto_90
:catchall_bb
move-exception v0
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->b:Ljava/io/RandomAccessFile;
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v1
iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
iput-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->d:Z
throw v0
:catch_c7
move-exception v0
goto :goto_5f
:catch_c9
move-exception v0
goto :goto_51
.end method
.method public final a(Ljava/lang/Long;)V
.registers 5
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
return-void
.end method
.method public final b(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/a;->c:Ljava/nio/channels/FileChannel;
invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
return-void
.end method