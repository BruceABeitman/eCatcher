.class final Lcom/google/android/gms/internal/cu$2;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/ThreadFactory;
.field private final pN:Ljava/util/concurrent/atomic/AtomicInteger;
.method constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/internal/cu$2;->pN:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 5
new-instance v0, Ljava/lang/Thread;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AdWorker #"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/cu$2;->pN:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
return-object v0
.end method