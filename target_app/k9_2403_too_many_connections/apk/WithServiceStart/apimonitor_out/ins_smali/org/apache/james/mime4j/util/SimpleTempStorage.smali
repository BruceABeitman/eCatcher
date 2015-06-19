.class public Lorg/apache/james/mime4j/util/SimpleTempStorage;
.super Lorg/apache/james/mime4j/util/TempStorage;
.source "SimpleTempStorage.java"
.field private static log:Lorg/apache/commons/logging/Log;
.field private random:Ljava/util/Random;
.field private rootPath:Lorg/apache/james/mime4j/util/TempPath;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lorg/apache/james/mime4j/util/SimpleTempStorage;
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->log:Lorg/apache/commons/logging/Log;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Lorg/apache/james/mime4j/util/TempStorage;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/util/TempPath;
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->random:Ljava/util/Random;
new-instance v0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;
const-string v1, "java.io.tmpdir"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p0, v1, v2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/util/TempPath;
return-void
.end method
.method static synthetic access$300(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
move-result-object v0
return-object v0
.end method
.method static synthetic access$400(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
.registers 4
invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
move-result-object v0
return-object v0
.end method
.method private createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
.registers 13
if-nez p2, :cond_4
const-string p2, ""
:cond_4
if-nez p3, :cond_8
const-string p3, ".tmp"
:cond_8
const/4 v2, 0x0
const/16 v0, 0x3e8
monitor-enter p0
:cond_c
move-object v3, v2
:try_start_d
iget-object v6, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->random:Ljava/util/Random;
invoke-virtual {v6}, Ljava/util/Random;->nextLong()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J
move-result-wide v4
new-instance v2, Ljava/io/File;
invoke-interface {p1}, Lorg/apache/james/mime4j/util/TempPath;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_35
.catchall {:try_start_d .. :try_end_35} :catchall_7f
add-int/lit8 v0, v0, -0x1
:try_start_37
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_3f
if-gtz v0, :cond_c
:cond_3f
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_50
new-instance v6, Ljava/io/IOException;
const-string v7, "Creating temp file failed: Unable to find unique file name"
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:catchall_4d
move-exception v6
:goto_4e
monitor-exit p0
:try_end_4f
.catchall {:try_start_37 .. :try_end_4f} :catchall_4d
throw v6
:try_start_50
:cond_50
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
:try_start_53
:try_end_53
.catchall {:try_start_50 .. :try_end_53} :catchall_4d
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_5b
monitor-exit p0
:try_end_54
.catchall {:try_start_53 .. :try_end_54} :catchall_4d
new-instance v6, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;
const/4 v7, 0x0
invoke-direct {v6, p0, v2, v7}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
return-object v6
:catch_5b
move-exception v1
:try_start_5c
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Creating dir \'"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\' failed."
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:try_end_7f
.catchall {:try_start_5c .. :try_end_7f} :catchall_4d
:catchall_7f
move-exception v6
move-object v2, v3
goto :goto_4e
.end method
.method private createTempPath(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
.registers 10
if-nez p2, :cond_4
const-string p2, ""
:cond_4
const/4 v3, 0x0
const/16 v0, 0x3e8
:cond_7
iget-object v4, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->random:Ljava/util/Random;
invoke-virtual {v4}, Ljava/util/Random;->nextLong()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J
move-result-wide v1
new-instance v3, Ljava/io/File;
invoke-interface {p1}, Lorg/apache/james/mime4j/util/TempPath;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v0, -0x1
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_35
if-gtz v0, :cond_7
:cond_35
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_41
invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
move-result v4
if-nez v4, :cond_80
:cond_41
sget-object v4, Lorg/apache/james/mime4j/util/SimpleTempStorage;->log:Lorg/apache/commons/logging/Log;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Unable to mkdirs on "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
new-instance v4, Ljava/io/IOException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Creating dir \'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\' failed."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:cond_80
new-instance v4, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;
const/4 v5, 0x0
invoke-direct {v4, p0, v3, v5}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
return-object v4
.end method
.method public getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/util/TempPath;
return-object v0
.end method