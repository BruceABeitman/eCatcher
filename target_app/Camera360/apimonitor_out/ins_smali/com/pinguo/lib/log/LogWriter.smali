.class public final Lcom/pinguo/lib/log/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"
.field protected static final dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
.field private static dmRunning:Z
.field private static lastMsg:Lcom/pinguo/lib/log/LogMsg;
.field private static linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
.field private static logRunning:Z
.method static constructor <clinit>()V
.registers 3
const/16 v2, 0x12c
const/4 v1, 0x0
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Lcom/pinguo/lib/log/LogWriter;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
sput-boolean v1, Lcom/pinguo/lib/log/LogWriter;->logRunning:Z
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
sput-boolean v1, Lcom/pinguo/lib/log/LogWriter;->dmRunning:Z
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static clearDmLog()V
.registers 1
sget-object v0, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/lib/log/LogWriter;->lastMsg:Lcom/pinguo/lib/log/LogMsg;
return-void
.end method
.method protected static clearLog()V
.registers 1
sget-object v0, Lcom/pinguo/lib/log/LogWriter;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
return-void
.end method
.method public static dumpDmLog()[Ljava/lang/String;
.registers 7
sget-object v4, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I
move-result v4
new-array v3, v4, [Lcom/pinguo/lib/log/LogMsg;
sget-object v4, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I
move-result v4
new-array v1, v4, [Ljava/lang/String;
sget-object v4, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
const/4 v0, 0x0
array-length v5, v3
const/4 v4, 0x0
:goto_18
if-lt v4, v5, :cond_1b
return-object v1
:cond_1b
aget-object v2, v3, v4
invoke-virtual {v2}, Lcom/pinguo/lib/log/LogMsg;->toString()Ljava/lang/String;
move-result-object v6
aput-object v6, v1, v0
add-int/lit8 v0, v0, 0x1
add-int/lit8 v4, v4, 0x1
goto :goto_18
.end method
.method public static dumpDmLogMsg()[Lcom/pinguo/lib/log/LogMsg;
.registers 2
sget-object v1, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I
move-result v1
new-array v0, v1, [Lcom/pinguo/lib/log/LogMsg;
sget-object v1, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
return-object v0
.end method
.method public static hasNewDmLog(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/pinguo/lib/log/LogWriter;->lastMsg:Lcom/pinguo/lib/log/LogMsg;
if-nez v1, :cond_28
if-nez p0, :cond_28
const-string/jumbo v1, "LogWriter"
const-string/jumbo v2, "both null"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
:goto_11
const-string/jumbo v1, "LogWriter"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "has new development mode log? "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return v0
:cond_28
sget-object v1, Lcom/pinguo/lib/log/LogWriter;->lastMsg:Lcom/pinguo/lib/log/LogMsg;
if-eqz v1, :cond_2e
if-nez p0, :cond_39
:cond_2e
const-string/jumbo v1, "LogWriter"
const-string/jumbo v2, "one null"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
goto :goto_11
:cond_39
sget-object v1, Lcom/pinguo/lib/log/LogWriter;->lastMsg:Lcom/pinguo/lib/log/LogMsg;
invoke-virtual {v1}, Lcom/pinguo/lib/log/LogMsg;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_50
const-string/jumbo v1, "LogWriter"
const-string/jumbo v2, "both not null but equals"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
goto :goto_11
:cond_50
const-string/jumbo v1, "LogWriter"
const-string/jumbo v2, "both not null but not equals"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
goto :goto_11
.end method
.method public static isInDevMode()Z
.registers 1
sget-boolean v0, Lcom/pinguo/lib/log/LogWriter;->dmRunning:Z
return v0
.end method
.method protected static offerLog(Lcom/pinguo/lib/log/LogMsg;)V
.registers 2
sget-boolean v0, Lcom/pinguo/lib/log/LogWriter;->logRunning:Z
if-eqz v0, :cond_9
sget-object v0, Lcom/pinguo/lib/log/LogWriter;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
:cond_9
sget-boolean v0, Lcom/pinguo/lib/log/LogWriter;->dmRunning:Z
if-eqz v0, :cond_1f
sget-object v0, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I
move-result v0
if-nez v0, :cond_1a
sget-object v0, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
:cond_1a
sget-object v0, Lcom/pinguo/lib/log/LogWriter;->dmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
:cond_1f
sput-object p0, Lcom/pinguo/lib/log/LogWriter;->lastMsg:Lcom/pinguo/lib/log/LogMsg;
return-void
.end method
.method public static setDevMode(Z)V
.registers 1
sput-boolean p0, Lcom/pinguo/lib/log/LogWriter;->dmRunning:Z
return-void
.end method
.method public static startLog(Ljava/lang/String;)V
.registers 3
const/4 v1, 0x1
sget-boolean v0, Lcom/pinguo/lib/log/LogWriter;->logRunning:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
sput-boolean v1, Lcom/pinguo/lib/log/LogWriter;->logRunning:Z
invoke-static {v1}, Lcom/pinguo/lib/log/LogThread;->setThreadRunning(Z)V
new-instance v0, Lcom/pinguo/lib/log/LogThread;
invoke-direct {v0, p0}, Lcom/pinguo/lib/log/LogThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/lib/log/LogThread;->start()V
goto :goto_5
.end method
.method public static stopLog()V
.registers 6
const/4 v5, 0x0
invoke-static {v5}, Lcom/pinguo/lib/log/LogThread;->setThreadRunning(Z)V
new-instance v1, Lcom/pinguo/lib/log/LogMsg;
const-class v2, Lcom/pinguo/lib/log/LogWriter;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "-E N D-"
const-string/jumbo v4, "\u65e5\u5fd7\u7ed3\u675f"
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_start_15
sget-object v2, Lcom/pinguo/lib/log/LogWriter;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
:try_end_1a
.catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1d
:goto_1a
sput-boolean v5, Lcom/pinguo/lib/log/LogWriter;->logRunning:Z
return-void
:catch_1d
move-exception v0
sget-object v2, Lcom/pinguo/lib/log/LogWriter;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
goto :goto_1a
.end method
.method protected static takeLog()Lcom/pinguo/lib/log/LogMsg;
.registers 1
sget-object v0, Lcom/pinguo/lib/log/LogWriter;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/log/LogMsg;
return-object v0
.end method