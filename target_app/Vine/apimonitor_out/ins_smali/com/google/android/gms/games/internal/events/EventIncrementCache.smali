.class public abstract Lcom/google/android/gms/games/internal/events/EventIncrementCache;
.super Ljava/lang/Object;
.field final Rj:Ljava/lang/Object;
.field private Rk:Landroid/os/Handler;
.field private Rl:Z
.field private Rm:Ljava/util/HashMap;
.field private Rn:I
.method public constructor <init>(Landroid/os/Looper;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rj:Ljava/lang/Object;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rk:Landroid/os/Handler;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/util/HashMap;
iput p2, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rn:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/games/internal/events/EventIncrementCache;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->hK()V
return-void
.end method
.method private hK()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rj:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
iput-boolean v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rl:Z
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->flush()V
monitor-exit v1
return-void
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_4 .. :try_end_d} :catchall_b
throw v0
.end method
.method public flush()V
.registers 5
iget-object v2, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rj:Ljava/lang/Object;
monitor-enter v2
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->o(Ljava/lang/String;I)V
goto :goto_d
:catchall_2d
move-exception v0
monitor-exit v2
:try_end_2f
.catchall {:try_start_3 .. :try_end_2f} :catchall_2d
throw v0
:cond_30
:try_start_30
iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
monitor-exit v2
:try_end_36
.catchall {:try_start_30 .. :try_end_36} :catchall_2d
return-void
.end method
.method protected abstract o(Ljava/lang/String;I)V
.end method
.method public u(Ljava/lang/String;I)V
.registers 8
iget-object v1, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rj:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rl:Z
if-nez v0, :cond_17
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rl:Z
iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rk:Landroid/os/Handler;
new-instance v2, Lcom/google/android/gms/games/internal/events/EventIncrementCache$1;
invoke-direct {v2, p0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache$1;-><init>(Lcom/google/android/gms/games/internal/events/EventIncrementCache;)V
iget v3, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rn:I
int-to-long v3, v3
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_17
iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;
if-nez v0, :cond_2b
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/util/HashMap;
invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2b
invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
monitor-exit v1
return-void
:catchall_30
move-exception v0
monitor-exit v1
:try_end_32
.catchall {:try_start_3 .. :try_end_32} :catchall_30
throw v0
.end method