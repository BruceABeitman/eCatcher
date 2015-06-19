.class public abstract Lcom/google/android/gms/games/internal/events/EventIncrementManager;
.super Ljava/lang/Object;
.field private final Rp:Ljava/util/concurrent/atomic/AtomicReference;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rp:Ljava/util/concurrent/atomic/AtomicReference;
return-void
.end method
.method public flush()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rp:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->flush()V
:cond_d
return-void
.end method
.method protected abstract hs()Lcom/google/android/gms/games/internal/events/EventIncrementCache;
.end method
.method public l(Ljava/lang/String;I)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rp:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;
if-nez v0, :cond_1f
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->hs()Lcom/google/android/gms/games/internal/events/EventIncrementCache;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rp:Ljava/util/concurrent/atomic/AtomicReference;
const/4 v2, 0x0
invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rp:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;
:cond_1f
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->u(Ljava/lang/String;I)V
return-void
.end method