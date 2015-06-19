.class public final Lcom/facebook/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String;
.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;
.field private final c:Ljava/lang/String;
.field private final d:Lcom/facebook/internal/g;
.field private final e:Ljava/io/File;
.field private f:Z
.field private g:Z
.field private final h:Ljava/lang/Object;
.field private i:Ljava/util/concurrent/atomic/AtomicLong;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/internal/c;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
sput-object v0, Lcom/facebook/internal/c;->b:Ljava/util/concurrent/atomic/AtomicLong;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/g;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V
iput-object v0, p0, Lcom/facebook/internal/c;->i:Ljava/util/concurrent/atomic/AtomicLong;
iput-object p2, p0, Lcom/facebook/internal/c;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/internal/c;->d:Lcom/facebook/internal/g;
new-instance v0, Ljava/io/File;
invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/facebook/internal/c;->h:Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_37
:cond_32
iget-object v0, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-static {v0}, Lcom/facebook/internal/d;->a(Ljava/io/File;)V
:cond_37
return-void
.end method
.method static synthetic a(Lcom/facebook/internal/c;)Ljava/util/concurrent/atomic/AtomicLong;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/c;->i:Ljava/util/concurrent/atomic/AtomicLong;
return-object v0
.end method
.method static synthetic a(Lcom/facebook/internal/c;Ljava/lang/String;Ljava/io/File;)V
.registers 6
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-static {p1}, Lcom/facebook/internal/ai;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_14
invoke-virtual {p2}, Ljava/io/File;->delete()Z
:cond_14
iget-object v1, p0, Lcom/facebook/internal/c;->h:Ljava/lang/Object;
monitor-enter v1
:try_start_17
iget-boolean v0, p0, Lcom/facebook/internal/c;->f:Z
if-nez v0, :cond_2a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/internal/c;->f:Z
invoke-static {}, Lcom/facebook/ah;->b()Ljava/util/concurrent/Executor;
move-result-object v0
new-instance v2, Lcom/facebook/internal/c$3;
invoke-direct {v2, p0}, Lcom/facebook/internal/c$3;-><init>(Lcom/facebook/internal/c;)V
invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:cond_2a
monitor-exit v1
:try_end_2b
.catchall {:try_start_17 .. :try_end_2b} :catchall_2c
return-void
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic b()Ljava/util/concurrent/atomic/AtomicLong;
.registers 1
sget-object v0, Lcom/facebook/internal/c;->b:Ljava/util/concurrent/atomic/AtomicLong;
return-object v0
.end method
.method static synthetic b(Lcom/facebook/internal/c;)V
.registers 19
move-object/from16 v0, p0
iget-object v2, v0, Lcom/facebook/internal/c;->h:Ljava/lang/Object;
monitor-enter v2
const/4 v1, 0x0
:try_start_6
move-object/from16 v0, p0
iput-boolean v1, v0, Lcom/facebook/internal/c;->f:Z
const/4 v1, 0x1
move-object/from16 v0, p0
iput-boolean v1, v0, Lcom/facebook/internal/c;->g:Z
monitor-exit v2
:try_start_10
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_77
sget-object v1, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/internal/c;->a:Ljava/lang/String;
invoke-static {}, Lcom/facebook/internal/v;->a()V
new-instance v8, Ljava/util/PriorityQueue;
invoke-direct {v8}, Ljava/util/PriorityQueue;-><init>()V
const-wide/16 v3, 0x0
const-wide/16 v1, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-static {}, Lcom/facebook/internal/d;->a()Ljava/io/FilenameFilter;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v9
if-eqz v9, :cond_ee
array-length v10, v9
const/4 v5, 0x0
:goto_30
if-ge v5, v10, :cond_ee
aget-object v6, v9, v5
new-instance v7, Lcom/facebook/internal/h;
invoke-direct {v7, v6}, Lcom/facebook/internal/h;-><init>(Ljava/io/File;)V
invoke-virtual {v8, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
sget-object v11, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v11, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string v12, "  trim considering time="
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Lcom/facebook/internal/h;->b()J
move-result-wide v12
invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, " name="
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v7}, Lcom/facebook/internal/h;->a()Ljava/io/File;
move-result-object v7
invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->a()V
invoke-virtual {v6}, Ljava/io/File;->length()J
:try_end_6a
.catchall {:try_start_10 .. :try_end_6a} :catchall_d7
move-result-wide v6
add-long/2addr v6, v3
const-wide/16 v3, 0x1
add-long v2, v1, v3
add-int/lit8 v1, v5, 0x1
move v5, v1
move-wide v14, v2
move-wide v1, v14
move-wide v3, v6
goto :goto_30
:catchall_77
move-exception v1
monitor-exit v2
throw v1
:try_start_7a
:goto_7a
move-object/from16 v0, p0
iget-object v1, v0, Lcom/facebook/internal/c;->d:Lcom/facebook/internal/g;
invoke-virtual {v1}, Lcom/facebook/internal/g;->a()I
move-result v1
int-to-long v6, v1
cmp-long v1, v4, v6
if-gtz v1, :cond_94
move-object/from16 v0, p0
iget-object v1, v0, Lcom/facebook/internal/c;->d:Lcom/facebook/internal/g;
invoke-virtual {v1}, Lcom/facebook/internal/g;->b()I
move-result v1
int-to-long v6, v1
cmp-long v1, v2, v6
if-lez v1, :cond_c1
:cond_94
invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/internal/h;
invoke-virtual {v1}, Lcom/facebook/internal/h;->a()Ljava/io/File;
move-result-object v6
sget-object v1, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v7, "  trim removing "
invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->a()V
invoke-virtual {v6}, Ljava/io/File;->length()J
move-result-wide v9
sub-long/2addr v4, v9
const-wide/16 v9, 0x1
sub-long v1, v2, v9
invoke-virtual {v6}, Ljava/io/File;->delete()Z
:try_end_bf
.catchall {:try_start_7a .. :try_end_bf} :catchall_d7
move-wide v2, v1
goto :goto_7a
:cond_c1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/facebook/internal/c;->h:Ljava/lang/Object;
monitor-enter v2
const/4 v1, 0x0
:try_start_c7
move-object/from16 v0, p0
iput-boolean v1, v0, Lcom/facebook/internal/c;->g:Z
move-object/from16 v0, p0
iget-object v1, v0, Lcom/facebook/internal/c;->h:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
monitor-exit v2
:try_end_d3
.catchall {:try_start_c7 .. :try_end_d3} :catchall_d4
return-void
:catchall_d4
move-exception v1
monitor-exit v2
throw v1
:catchall_d7
move-exception v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/facebook/internal/c;->h:Ljava/lang/Object;
monitor-enter v2
const/4 v3, 0x0
:try_start_de
move-object/from16 v0, p0
iput-boolean v3, v0, Lcom/facebook/internal/c;->g:Z
move-object/from16 v0, p0
iget-object v3, v0, Lcom/facebook/internal/c;->h:Ljava/lang/Object;
invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
monitor-exit v2
:try_end_ea
.catchall {:try_start_de .. :try_end_ea} :catchall_eb
throw v1
:catchall_eb
move-exception v1
monitor-exit v2
throw v1
:cond_ee
move-wide v14, v1
move-wide/from16 v16, v3
move-wide/from16 v4, v16
move-wide v2, v14
goto :goto_7a
.end method
.method public final a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
move-result-object v0
new-instance v1, Lcom/facebook/internal/f;
invoke-direct {v1, p2, v0}, Lcom/facebook/internal/f;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
return-object v1
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.registers 9
const/4 v0, 0x0
new-instance v2, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-static {p1}, Lcom/facebook/internal/ai;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_c
new-instance v3, Ljava/io/FileInputStream;
invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_11
.catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_81
new-instance v1, Ljava/io/BufferedInputStream;
const/16 v4, 0x2000
invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:try_start_18
invoke-static {v1}, Lcom/facebook/internal/j;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
:try_end_1b
.catchall {:try_start_18 .. :try_end_1b} :catchall_7c
move-result-object v3
if-nez v3, :cond_22
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
:goto_21
return-object v0
:cond_22
:try_start_22
const-string v4, "key"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_30
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_2d
.catchall {:try_start_22 .. :try_end_2d} :catchall_7c
move-result v4
if-nez v4, :cond_34
:cond_30
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
goto :goto_21
:cond_34
:try_start_34
const-string v4, "tag"
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez p2, :cond_3f
if-nez v3, :cond_47
:cond_3f
if-eqz p2, :cond_4b
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_44
.catchall {:try_start_34 .. :try_end_44} :catchall_7c
move-result v3
if-nez v3, :cond_4b
:cond_47
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
goto :goto_21
:cond_4b
:try_start_4b
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v3
sget-object v0, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v0, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "Setting lastModified to "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, " for "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->a()V
invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
:try_end_7a
.catchall {:try_start_4b .. :try_end_7a} :catchall_7c
move-object v0, v1
goto :goto_21
:catchall_7c
move-exception v0
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
throw v0
:catch_81
move-exception v1
goto :goto_21
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-static {}, Lcom/facebook/internal/d;->a()Ljava/io/FilenameFilter;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v0
iget-object v1, p0, Lcom/facebook/internal/c;->i:Ljava/util/concurrent/atomic/AtomicLong;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
if-eqz v0, :cond_21
invoke-static {}, Lcom/facebook/ah;->b()Ljava/util/concurrent/Executor;
move-result-object v1
new-instance v2, Lcom/facebook/internal/c$2;
invoke-direct {v2, p0, v0}, Lcom/facebook/internal/c$2;-><init>(Lcom/facebook/internal/c;[Ljava/io/File;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:cond_21
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.registers 10
iget-object v0, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-static {v0}, Lcom/facebook/internal/d;->b(Ljava/io/File;)Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->delete()Z
invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
move-result v0
if-nez v0, :cond_28
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Could not create file at "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
:try_start_28
new-instance v6, Ljava/io/FileOutputStream;
invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_2d
.catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2d} :catch_81
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
new-instance v0, Lcom/facebook/internal/c$1;
move-object v1, p0
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/c$1;-><init>(Lcom/facebook/internal/c;JLjava/io/File;Ljava/lang/String;)V
new-instance v1, Lcom/facebook/internal/e;
invoke-direct {v1, v6, v0}, Lcom/facebook/internal/e;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/i;)V
new-instance v2, Ljava/io/BufferedOutputStream;
const/16 v0, 0x2000
invoke-direct {v2, v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:try_start_44
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "key"
invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-static {p2}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_59
const-string v1, "tag"
invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_59
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V
array-length v1, v0
shr-int/lit8 v1, v1, 0x10
and-int/lit16 v1, v1, 0xff
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V
array-length v1, v0
shr-int/lit8 v1, v1, 0x8
and-int/lit16 v1, v1, 0xff
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V
array-length v1, v0
shr-int/lit8 v1, v1, 0x0
and-int/lit16 v1, v1, 0xff
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V
invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
:try_end_80
.catchall {:try_start_44 .. :try_end_80} :catchall_b9
.catch Lorg/json/JSONException; {:try_start_44 .. :try_end_80} :catch_9d
return-object v2
:catch_81
move-exception v0
sget-object v1, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error creating buffer output stream: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->c()V
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:catch_9d
move-exception v0
:try_start_9e
sget-object v1, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Error creating JSON header for cache file: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->c()V
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_b9
.catchall {:try_start_9e .. :try_end_b9} :catchall_b9
:catchall_b9
move-exception v0
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
throw v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "{FileLruCache: tag:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/internal/c;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " file:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/internal/c;->e:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method