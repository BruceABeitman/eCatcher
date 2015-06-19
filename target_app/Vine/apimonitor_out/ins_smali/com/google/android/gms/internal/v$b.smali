.class final Lcom/google/android/gms/internal/v$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/h;
.implements Ljava/lang/Runnable;
.field private kA:Lcom/google/android/gms/internal/v$c;
.field private final kH:Ljava/util/List;
.field private final kI:Ljava/util/concurrent/CountDownLatch;
.field private final kJ:Ljava/util/concurrent/atomic/AtomicReference;
.method public constructor <init>(Lcom/google/android/gms/internal/v$c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/v$b;->kH:Ljava/util/List;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/internal/v$b;->kI:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
iput-object p1, p0, Lcom/google/android/gms/internal/v$b;->kA:Lcom/google/android/gms/internal/v$c;
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-eqz v0, :cond_25
invoke-static {p0}, Lcom/google/android/gms/internal/eo;->execute(Ljava/lang/Runnable;)V
:goto_24
return-void
:cond_25
invoke-virtual {p0}, Lcom/google/android/gms/internal/v$b;->run()V
goto :goto_24
.end method
.method private aj()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_5
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "Interrupted during GADSignals creation."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private ak()V
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kH:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_b
:cond_a
return-void
:cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kH:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_11
:cond_11
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
array-length v1, v0
if-ne v1, v7, :cond_30
iget-object v1, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/h;
aget-object v0, v0, v6
check-cast v0, Landroid/view/MotionEvent;
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/h;->a(Landroid/view/MotionEvent;)V
goto :goto_11
:cond_30
array-length v1, v0
const/4 v2, 0x3
if-ne v1, v2, :cond_11
iget-object v1, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/h;
aget-object v2, v0, v6
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v4
aget-object v2, v0, v7
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const/4 v5, 0x2
aget-object v0, v0, v5
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-interface {v1, v4, v2, v0}, Lcom/google/android/gms/internal/h;->a(III)V
goto :goto_11
.end method
.method public a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/v$b;->aj()V
invoke-direct {p0}, Lcom/google/android/gms/internal/v$b;->ak()V
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/h;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/internal/v$b;->aj()V
invoke-direct {p0}, Lcom/google/android/gms/internal/v$b;->ak()V
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/h;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(III)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/h;
if-eqz v0, :cond_11
invoke-direct {p0}, Lcom/google/android/gms/internal/v$b;->ak()V
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/h;->a(III)V
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kH:Ljava/util/List;
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_10
.end method
.method public a(Landroid/view/MotionEvent;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/h;
if-eqz v0, :cond_11
invoke-direct {p0}, Lcom/google/android/gms/internal/v$b;->ak()V
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/h;->a(Landroid/view/MotionEvent;)V
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kH:Ljava/util/List;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_10
.end method
.method public run()V
.registers 5
const/4 v3, 0x0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kJ:Ljava/util/concurrent/atomic/AtomicReference;
iget-object v1, p0, Lcom/google/android/gms/internal/v$b;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v$b;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/k;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/k;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_1c
iget-object v0, p0, Lcom/google/android/gms/internal/v$b;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
iput-object v3, p0, Lcom/google/android/gms/internal/v$b;->kA:Lcom/google/android/gms/internal/v$c;
return-void
:catchall_1c
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/internal/v$b;->kI:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
iput-object v3, p0, Lcom/google/android/gms/internal/v$b;->kA:Lcom/google/android/gms/internal/v$c;
throw v0
.end method