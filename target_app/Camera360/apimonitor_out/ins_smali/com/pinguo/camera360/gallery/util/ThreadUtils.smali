.class public Lcom/pinguo/camera360/gallery/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static isMainThread()Z
.registers 5
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getId()J
move-result-wide v0
const-wide/16 v3, 0x1
cmp-long v3, v3, v0
if-nez v3, :cond_10
const/4 v3, 0x1
:goto_f
return v3
:cond_10
const/4 v3, 0x0
goto :goto_f
.end method
.method public static newBackgroundSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
.registers 1
new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadUtils$1;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/ThreadUtils$1;-><init>()V
invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
move-result-object v0
return-object v0
.end method