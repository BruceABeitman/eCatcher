.class public Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
.super Ljava/lang/Object;
.source "AudioAsynCompressMp3.java"
.field private static instance:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
.field private final lock:[B
.field private order:Ljava/util/Comparator;
.field private priorityQueue:Ljava/util/Queue;
.field private thread:Ljava/lang/Thread;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
invoke-direct {v0}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;-><init>()V
sput-object v0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->instance:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$1;-><init>(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;)V
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->order:Ljava/util/Comparator;
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->thread:Ljava/lang/Thread;
new-instance v0, Ljava/util/PriorityQueue;
const/16 v1, 0x14
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->order:Ljava/util/Comparator;
invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->priorityQueue:Ljava/util/Queue;
const/4 v0, 0x0
new-array v0, v0, [B
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->lock:[B
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;)Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->poll()Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
move-result-object v0
return-object v0
.end method
.method public static getInstance()Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
.registers 1
sget-object v0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->instance:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
return-object v0
.end method
.method private offer(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->lock:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->priorityQueue:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method private poll()Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->lock:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->priorityQueue:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
monitor-exit v1
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_d
throw v0
.end method
.method protected asynPcm2Mp3(Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;Ljava/lang/String;I)V
.registers 7
new-instance v0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;-><init>(Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;Ljava/lang/String;I)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->offer(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)V
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->thread:Ljava/lang/Thread;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->thread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
move-result v0
if-nez v0, :cond_25
:cond_14
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$MyRunnable;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$MyRunnable;-><init>(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->thread:Ljava/lang/Thread;
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->thread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:cond_25
return-void
.end method