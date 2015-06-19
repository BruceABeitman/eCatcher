.class public Lcom/pinguo/lib/log/LogThread;
.super Ljava/lang/Thread;
.source "LogThread.java"
.field private static threadRunning:Z
.field private folderPath:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/lib/log/LogThread;->threadRunning:Z
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/lib/log/LogThread;->folderPath:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/lib/log/LogThread;->folderPath:Ljava/lang/String;
const-string/jumbo v0, "Log Thread"
invoke-virtual {p0, v0}, Lcom/pinguo/lib/log/LogThread;->setName(Ljava/lang/String;)V
return-void
.end method
.method public static setThreadRunning(Z)V
.registers 1
sput-boolean p0, Lcom/pinguo/lib/log/LogThread;->threadRunning:Z
return-void
.end method
.method private writeLog()V
.registers 11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
const-string/jumbo v9, "yyyyMMdd"
invoke-static {v7, v8, v9}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "camera360_"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, ".log"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v7, p0, Lcom/pinguo/lib/log/LogThread;->folderPath:Ljava/lang/String;
invoke-static {v7}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_49
new-instance v7, Ljava/io/IOException;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Create Folder("
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/lib/log/LogThread;->folderPath:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ") Failed."
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_49
const-string/jumbo v7, "yyyyMMdd-HH:mm:ss.SSS"
invoke-static {v7}, Lcom/pinguo/lib/util/TimeUtils;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
move-result-object v5
new-instance v7, Ljava/lang/StringBuilder;
iget-object v8, p0, Lcom/pinguo/lib/log/LogThread;->folderPath:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
:try_start_6a
new-instance v4, Ljava/io/PrintWriter;
new-instance v7, Ljava/io/OutputStreamWriter;
new-instance v8, Ljava/io/FileOutputStream;
const/4 v9, 0x1
invoke-direct {v8, v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
const-string/jumbo v9, "utf-8"
invoke-direct {v7, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
invoke-direct {v4, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
:goto_7d
:try_start_7d
:try_end_7d
.catchall {:try_start_6a .. :try_end_7d} :catchall_be
sget-boolean v7, Lcom/pinguo/lib/log/LogThread;->threadRunning:Z
if-nez v7, :cond_8b
invoke-static {}, Lcom/pinguo/lib/log/LogWriter;->clearLog()V
:try_end_84
.catchall {:try_start_7d .. :try_end_84} :catchall_c6
if-eqz v4, :cond_c9
invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
const/4 v3, 0x0
:goto_8a
return-void
:cond_8b
:try_start_8b
invoke-static {}, Lcom/pinguo/lib/log/LogWriter;->takeLog()Lcom/pinguo/lib/log/LogMsg;
move-result-object v2
new-instance v7, Ljava/lang/StringBuilder;
const/16 v8, 0x5b
invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/pinguo/lib/log/LogMsg;->getTime()J
move-result-wide v8
invoke-static {v8, v9, v5}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const/16 v8, 0x5d
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v2}, Lcom/pinguo/lib/log/LogMsg;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:try_end_bb
.catchall {:try_start_8b .. :try_end_bb} :catchall_c6
.catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_bb} :catch_bc
goto :goto_7d
:catch_bc
move-exception v7
goto :goto_7d
:catchall_be
move-exception v7
:goto_bf
if-eqz v3, :cond_c5
invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
const/4 v3, 0x0
:cond_c5
throw v7
:catchall_c6
move-exception v7
move-object v3, v4
goto :goto_bf
:cond_c9
move-object v3, v4
goto :goto_8a
.end method
.method public run()V
.registers 5
:try_start_0
invoke-direct {p0}, Lcom/pinguo/lib/log/LogThread;->writeLog()V
:goto_3
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_7
invoke-super {p0}, Ljava/lang/Thread;->run()V
return-void
:catch_7
move-exception v0
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Error:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_3
.end method