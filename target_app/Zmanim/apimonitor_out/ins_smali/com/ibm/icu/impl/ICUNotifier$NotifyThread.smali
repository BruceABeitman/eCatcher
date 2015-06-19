.class  Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;
.super Ljava/lang/Thread;
.source "ICUNotifier.java"
.field private final notifier:Lcom/ibm/icu/impl/ICUNotifier;
.field private final queue:Ljava/util/List;
.method constructor <init>(Lcom/ibm/icu/impl/ICUNotifier;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;
iput-object p1, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->notifier:Lcom/ibm/icu/impl/ICUNotifier;
return-void
.end method
.method public queue([Ljava/lang/Object;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Ljava/lang/Object;->notify()V
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_b
throw v0
.end method
.method public run()V
.registers 6
:goto_0
:try_start_0
:cond_0
monitor-enter p0
:goto_1
:try_start_1
:try_end_1
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_10
iget-object v3, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v3
if-eqz v3, :cond_12
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
goto :goto_1
:catchall_d
move-exception v3
monitor-exit p0
:try_start_f
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_d
throw v3
:catch_10
:try_end_10
.catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_10} :catch_10
move-exception v3
goto :goto_0
:cond_12
:try_start_12
iget-object v3, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, [Ljava/lang/Object;
move-object v0, v3
check-cast v0, [Ljava/lang/Object;
move-object v2, v0
monitor-exit p0
:try_end_20
.catchall {:try_start_12 .. :try_end_20} :catchall_d
const/4 v1, 0x0
:goto_21
:try_start_21
array-length v3, v2
if-ge v1, v3, :cond_0
iget-object v4, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->notifier:Lcom/ibm/icu/impl/ICUNotifier;
aget-object v3, v2, v1
check-cast v3, Ljava/util/EventListener;
invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/ICUNotifier;->notifyListener(Ljava/util/EventListener;)V
:try_end_2d
.catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2d} :catch_10
add-int/lit8 v1, v1, 0x1
goto :goto_21
.end method