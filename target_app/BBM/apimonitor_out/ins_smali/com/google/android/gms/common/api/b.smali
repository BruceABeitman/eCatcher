.class final Lcom/google/android/gms/common/api/b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/GoogleApiClient;
.field private zA:I
.field private zB:I
.field private zC:I
.field private zD:Z
.field private zE:I
.field private zF:J
.field final zG:Landroid/os/Handler;
.field private final zH:Landroid/os/Bundle;
.field private final zI:Ljava/util/Map;
.field private zJ:Z
.field final zK:Ljava/util/Set;
.field final zL:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.field private final zM:Lcom/google/android/gms/internal/ei$b;
.field private final zm:Lcom/google/android/gms/common/api/b$a;
.field private final zv:Ljava/util/concurrent/locks/Lock;
.field private final zw:Ljava/util/concurrent/locks/Condition;
.field private final zx:Lcom/google/android/gms/internal/ei;
.field final zy:Ljava/util/Queue;
.field private zz:Lcom/google/android/gms/common/ConnectionResult;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
.registers 16
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zw:Ljava/util/concurrent/locks/Condition;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zy:Ljava/util/Queue;
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/common/api/b;->zB:I
iput v1, p0, Lcom/google/android/gms/common/api/b;->zC:I
iput-boolean v1, p0, Lcom/google/android/gms/common/api/b;->zD:Z
const-wide/16 v0, 0x1388
iput-wide v0, p0, Lcom/google/android/gms/common/api/b;->zF:J
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zH:Landroid/os/Bundle;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zI:Ljava/util/Map;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zK:Ljava/util/Set;
new-instance v0, Lcom/google/android/gms/common/api/b$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b$1;-><init>(Lcom/google/android/gms/common/api/b;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zm:Lcom/google/android/gms/common/api/b$a;
new-instance v0, Lcom/google/android/gms/common/api/b$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b$2;-><init>(Lcom/google/android/gms/common/api/b;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zL:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
new-instance v0, Lcom/google/android/gms/common/api/b$3;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b$3;-><init>(Lcom/google/android/gms/common/api/b;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zM:Lcom/google/android/gms/internal/ei$b;
new-instance v0, Lcom/google/android/gms/internal/ei;
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zM:Lcom/google/android/gms/internal/ei$b;
invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ei;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ei$b;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
new-instance v0, Lcom/google/android/gms/common/api/b$b;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/b$b;-><init>(Lcom/google/android/gms/common/api/b;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zG:Landroid/os/Handler;
invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_63
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_75
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
iget-object v2, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ei;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
goto :goto_63
:cond_75
invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_79
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
iget-object v2, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ei;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
goto :goto_79
:cond_8b
invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_93
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_be
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Lcom/google/android/gms/common/api/Api;
invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->dp()Lcom/google/android/gms/common/api/Api$b;
move-result-object v0
invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;
iget-object v8, p0, Lcom/google/android/gms/common/api/b;->zI:Ljava/util/Map;
iget-object v5, p0, Lcom/google/android/gms/common/api/b;->zL:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
new-instance v6, Lcom/google/android/gms/common/api/b$4;
invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/b$4;-><init>(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/Api$b;)V
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$b;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v1
invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_93
:cond_be
return-void
.end method
.method private G(I)V
.registers 7
const/4 v1, 0x3
const/4 v2, 0x1
const/4 v4, -0x1
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_8
iget v0, p0, Lcom/google/android/gms/common/api/b;->zB:I
if-eq v0, v1, :cond_b8
if-ne p1, v4, :cond_51
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z
move-result v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zy:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1a
:cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/b$c;
invoke-interface {v0}, Lcom/google/android/gms/common/api/b$c;->dr()I
move-result v0
if-eq v0, v2, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
:try_end_2f
.catchall {:try_start_8 .. :try_end_2f} :catchall_30
goto :goto_1a
:catchall_30
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_37
:try_start_37
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zy:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
:cond_3c
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
if-nez v0, :cond_51
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zy:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-nez v0, :cond_51
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zD:Z
:try_end_4b
.catchall {:try_start_37 .. :try_end_4b} :catchall_30
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_50
return-void
:cond_51
:try_start_51
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v1
const/4 v2, 0x3
iput v2, p0, Lcom/google/android/gms/common/api/b;->zB:I
if-eqz v0, :cond_68
if-ne p1, v4, :cond_63
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
:cond_63
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zw:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
:cond_68
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zK:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/b$c;
invoke-interface {v0}, Lcom/google/android/gms/common/api/b$c;->du()V
goto :goto_6e
:cond_7e
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zK:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zJ:Z
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zI:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_90
:goto_90
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a6
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/Api$a;
invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->isConnected()Z
move-result v3
if-eqz v3, :cond_90
invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->disconnect()V
goto :goto_90
:cond_a6
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zJ:Z
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/common/api/b;->zB:I
if-eqz v1, :cond_b8
if-eq p1, v4, :cond_b5
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->P(I)V
:cond_b5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zJ:Z
:cond_b8
:try_end_b8
.catchall {:try_start_51 .. :try_end_b8} :catchall_30
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_50
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method private a(Lcom/google/android/gms/common/api/b$c;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v0
const-string v1, "GoogleApiClient is not connected yet."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
invoke-interface {p1}, Lcom/google/android/gms/common/api/b$c;->dp()Lcom/google/android/gms/common/api/Api$b;
move-result-object v0
if-eqz v0, :cond_39
const/4 v0, 0x1
:goto_15
const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
instance-of v0, p1, Lcom/google/android/gms/common/api/Releasable;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zK:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zm:Lcom/google/android/gms/common/api/b$a;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/b$c;->a(Lcom/google/android/gms/common/api/b$a;)V
:cond_28
invoke-interface {p1}, Lcom/google/android/gms/common/api/b$c;->dp()Lcom/google/android/gms/common/api/Api$b;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/b$c;->b(Lcom/google/android/gms/common/api/Api$a;)V
:try_end_33
.catchall {:try_start_5 .. :try_end_33} :catchall_3b
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:cond_39
const/4 v0, 0x0
goto :goto_15
:catchall_3b
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/b;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;->G(I)V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/common/api/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/api/b;->zB:I
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/common/api/b;I)I
.registers 2
iput p1, p0, Lcom/google/android/gms/common/api/b;->zC:I
return p1
.end method
.method static synthetic c(Lcom/google/android/gms/common/api/b;I)I
.registers 2
iput p1, p0, Lcom/google/android/gms/common/api/b;->zA:I
return p1
.end method
.method static synthetic c(Lcom/google/android/gms/common/api/b;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zH:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/common/api/b;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dy()V
return-void
.end method
.method private dA()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/b;->zC:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_12
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_a
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_10
const/4 v0, 0x0
goto :goto_a
:catchall_12
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method private dB()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x0
:try_start_6
iput v0, p0, Lcom/google/android/gms/common/api/b;->zC:I
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zG:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
:try_end_e
.catchall {:try_start_6 .. :try_end_e} :catchall_14
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_14
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method private dy()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/b;->zE:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/android/gms/common/api/b;->zE:I
iget v0, p0, Lcom/google/android/gms/common/api/b;->zE:I
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
if-eqz v0, :cond_52
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zD:Z
const/4 v0, 0x3
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->G(I)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dA()Z
move-result v0
if-eqz v0, :cond_26
iget v0, p0, Lcom/google/android/gms/common/api/b;->zC:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/android/gms/common/api/b;->zC:I
:cond_26
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dA()Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zG:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zG:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
iget-wide v2, p0, Lcom/google/android/gms/common/api/b;->zF:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_3a
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zJ:Z
:try_end_3d
.catchall {:try_start_5 .. :try_end_3d} :catchall_4b
:goto_3d
:cond_3d
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:try_start_43
:cond_43
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/common/ConnectionResult;)V
:try_end_4a
.catchall {:try_start_43 .. :try_end_4a} :catchall_4b
goto :goto_3a
:catchall_4b
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_52
const/4 v0, 0x2
:try_start_53
iput v0, p0, Lcom/google/android/gms/common/api/b;->zB:I
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dB()V
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zw:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dz()V
iget-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zD:Z
if-eqz v0, :cond_6c
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zD:Z
const/4 v0, -0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->G(I)V
goto :goto_3d
:cond_6c
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zH:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-eqz v0, :cond_7b
const/4 v0, 0x0
:goto_75
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ei;->b(Landroid/os/Bundle;)V
goto :goto_3d
:cond_7b
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zH:Landroid/os/Bundle;
:try_end_7d
.catchall {:try_start_53 .. :try_end_7d} :catchall_4b
goto :goto_75
.end method
.method private dz()V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v0
const-string v1, "GoogleApiClient is not connected yet."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_e
:goto_e
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zy:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
:try_end_13
.catchall {:try_start_e .. :try_end_13} :catchall_2b
move-result v0
if-nez v0, :cond_32
:try_start_16
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zy:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/b$c;
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b$c;)V
:try_end_21
.catchall {:try_start_16 .. :try_end_21} :catchall_2b
.catch Landroid/os/DeadObjectException; {:try_start_16 .. :try_end_21} :catch_22
goto :goto_e
:catch_22
move-exception v0
:try_start_23
const-string v1, "GoogleApiClientImpl"
const-string v2, "Service died while flushing queue"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_2a
.catchall {:try_start_23 .. :try_end_2a} :catchall_2b
goto :goto_e
:catchall_2b
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_32
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method static synthetic e(Lcom/google/android/gms/common/api/b;)Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dA()Z
move-result v0
return v0
.end method
.method static synthetic f(Lcom/google/android/gms/common/api/b;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/common/api/b;->zF:J
return-wide v0
.end method
.method static synthetic g(Lcom/google/android/gms/common/api/b;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zJ:Z
return v0
.end method
.method static synthetic h(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/ConnectionResult;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
return-object v0
.end method
.method static synthetic i(Lcom/google/android/gms/common/api/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/api/b;->zA:I
return v0
.end method
.method public final a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zI:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/Api$a;
const-string v1, "Appropriate Api was not requested."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method public final a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
:goto_e
:try_end_e
.catchall {:try_start_5 .. :try_end_e} :catchall_1a
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-object p1
:cond_14
:try_start_14
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zy:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
:try_end_19
.catchall {:try_start_14 .. :try_end_19} :catchall_1a
goto :goto_e
:catchall_1a
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v0
const-string v1, "GoogleApiClient is not connected yet."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dz()V
:try_start_c
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b$c;)V
:goto_f
:try_end_f
.catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_f} :catch_10
return-object p1
:catch_10
move-exception v0
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->G(I)V
goto :goto_f
.end method
.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
.registers 8
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
if-eq v0, v1, :cond_3c
const/4 v0, 0x1
:goto_b
const-string v1, "blockingConnect must not be called on the UI thread"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_15
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->connect()V
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v0
:cond_1c
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z
:try_end_1f
.catchall {:try_start_15 .. :try_end_1f} :catchall_7c
move-result v2
if-eqz v2, :cond_54
:try_start_22
iget-object v2, p0, Lcom/google/android/gms/common/api/b;->zw:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_1c
new-instance v0, Lcom/google/android/gms/common/ConnectionResult;
const/16 v1, 0xe
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
:try_end_36
.catchall {:try_start_22 .. :try_end_36} :catchall_7c
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_36} :catch_3e
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_3b
return-object v0
:cond_3c
const/4 v0, 0x0
goto :goto_b
:catch_3e
move-exception v0
:try_start_3f
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
new-instance v0, Lcom/google/android/gms/common/ConnectionResult;
const/16 v1, 0xf
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
:try_end_4e
.catchall {:try_start_3f .. :try_end_4e} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:try_start_54
:cond_54
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v0
if-eqz v0, :cond_62
sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->yI:Lcom/google/android/gms/common/ConnectionResult;
:try_end_5c
.catchall {:try_start_54 .. :try_end_5c} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:cond_62
:try_start_62
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
if-eqz v0, :cond_6e
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
:try_end_68
.catchall {:try_start_62 .. :try_end_68} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:try_start_6e
:cond_6e
new-instance v0, Lcom/google/android/gms/common/ConnectionResult;
const/16 v1, 0xd
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
:try_end_76
.catchall {:try_start_6e .. :try_end_76} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:catchall_7c
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final connect()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x0
:try_start_6
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zD:Z
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v0
if-nez v0, :cond_14
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z
:try_end_11
.catchall {:try_start_6 .. :try_end_11} :catchall_4a
move-result v0
if-eqz v0, :cond_1a
:cond_14
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_19
return-void
:cond_1a
const/4 v0, 0x1
:try_start_1b
iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->zJ:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/b;->zz:Lcom/google/android/gms/common/ConnectionResult;
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/common/api/b;->zB:I
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zH:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zI:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
iput v0, p0, Lcom/google/android/gms/common/api/b;->zE:I
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zI:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/Api$a;
invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->connect()V
:try_end_49
.catchall {:try_start_1b .. :try_end_49} :catchall_4a
goto :goto_3a
:catchall_4a
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_51
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_19
.end method
.method public final disconnect()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->dB()V
const/4 v0, -0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->G(I)V
return-void
.end method
.method public final isConnected()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/b;->zB:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_13
const/4 v1, 0x2
if-ne v0, v1, :cond_11
const/4 v0, 0x1
:goto_b
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_11
const/4 v0, 0x0
goto :goto_b
:catchall_13
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final isConnecting()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_6
iget v1, p0, Lcom/google/android/gms/common/api/b;->zB:I
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_12
if-ne v1, v0, :cond_10
:goto_a
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_10
const/4 v0, 0x0
goto :goto_a
:catchall_12
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b;->zv:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
move-result v0
return v0
.end method
.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
move-result v0
return v0
.end method
.method public final reconnect()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->disconnect()V
invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->connect()V
return-void
.end method
.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
return-void
.end method
.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method
.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
return-void
.end method
.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/b;->zx:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method