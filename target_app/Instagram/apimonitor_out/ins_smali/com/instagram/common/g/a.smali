.class public Lcom/instagram/common/g/a;
.super Ljava/lang/Object;
.source "ErrorReportingExecutorFactory.java"
.field private static a:Ljava/util/concurrent/ExecutorService;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Ljava/util/concurrent/ExecutorService;
.registers 10
const-class v8, Lcom/instagram/common/g/a;
monitor-enter v8
:try_start_3
sget-object v0, Lcom/instagram/common/g/a;->a:Ljava/util/concurrent/ExecutorService;
if-nez v0, :cond_20
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x0
const/4 v2, 0x1
const-wide/16 v3, 0x3c
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
new-instance v7, Lcom/instagram/common/g/b;
const-string v9, "ErrorReportingThread-"
invoke-direct {v7, v9}, Lcom/instagram/common/g/b;-><init>(Ljava/lang/String;)V
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
sput-object v0, Lcom/instagram/common/g/a;->a:Ljava/util/concurrent/ExecutorService;
:cond_20
monitor-exit v8
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_24
sget-object v0, Lcom/instagram/common/g/a;->a:Ljava/util/concurrent/ExecutorService;
return-object v0
:catchall_24
move-exception v0
monitor-exit v8
throw v0
.end method