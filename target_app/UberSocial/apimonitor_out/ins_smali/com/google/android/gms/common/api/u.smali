.class final Lcom/google/android/gms/common/api/u;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/e;
.field final a:Ljava/util/Queue;
.field final b:Landroid/os/Handler;
.field final c:Ljava/util/Set;
.field final d:Lcom/google/android/gms/common/api/h;
.field private final e:Ljava/util/concurrent/locks/Lock;
.field private final f:Ljava/util/concurrent/locks/Condition;
.field private final g:Lcom/google/android/gms/internal/gu;
.field private h:Lcom/google/android/gms/common/b;
.field private i:I
.field private j:I
.field private k:I
.field private l:Z
.field private m:I
.field private n:J
.field private final o:Landroid/os/Bundle;
.field private final p:Ljava/util/Map;
.field private q:Z
.field private final r:Lcom/google/android/gms/common/api/v;
.field private final s:Lcom/google/android/gms/internal/gw;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
.registers 16
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->f:Ljava/util/concurrent/locks/Condition;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Ljava/util/Queue;
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/common/api/u;->j:I
iput v1, p0, Lcom/google/android/gms/common/api/u;->k:I
iput-boolean v1, p0, Lcom/google/android/gms/common/api/u;->l:Z
const-wide/16 v0, 0x1388
iput-wide v0, p0, Lcom/google/android/gms/common/api/u;->n:J
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->o:Landroid/os/Bundle;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->p:Ljava/util/Map;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->c:Ljava/util/Set;
new-instance v0, Lcom/google/android/gms/common/api/u$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/u$1;-><init>(Lcom/google/android/gms/common/api/u;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->r:Lcom/google/android/gms/common/api/v;
new-instance v0, Lcom/google/android/gms/common/api/u$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/u$2;-><init>(Lcom/google/android/gms/common/api/u;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->d:Lcom/google/android/gms/common/api/h;
new-instance v0, Lcom/google/android/gms/common/api/u$3;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/u$3;-><init>(Lcom/google/android/gms/common/api/u;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->s:Lcom/google/android/gms/internal/gw;
new-instance v0, Lcom/google/android/gms/internal/gu;
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->s:Lcom/google/android/gms/internal/gw;
invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/gu;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gw;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
new-instance v0, Lcom/google/android/gms/common/api/w;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/w;-><init>(Lcom/google/android/gms/common/api/u;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->b:Landroid/os/Handler;
invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_63
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_75
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/h;
iget-object v2, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/api/h;)V
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
check-cast v0, Lcom/google/android/gms/common/api/i;
iget-object v2, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/f;)V
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
check-cast v1, Lcom/google/android/gms/common/api/a;
invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/c;
move-result-object v0
invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/android/gms/common/api/f;
iget-object v8, p0, Lcom/google/android/gms/common/api/u;->p:Ljava/util/Map;
iget-object v5, p0, Lcom/google/android/gms/common/api/u;->d:Lcom/google/android/gms/common/api/h;
new-instance v6, Lcom/google/android/gms/common/api/u$4;
invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/u$4;-><init>(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/api/c;)V
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/c;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
move-result-object v1
invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_93
:cond_be
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/common/b;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/u;)Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method private a(I)V
.registers 7
const/4 v1, 0x3
const/4 v2, 0x1
const/4 v4, -0x1
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_8
iget v0, p0, Lcom/google/android/gms/common/api/u;->j:I
if-eq v0, v1, :cond_b8
if-ne p1, v4, :cond_51
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->e()Z
move-result v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1a
:cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/x;
invoke-interface {v0}, Lcom/google/android/gms/common/api/x;->c()I
move-result v0
if-eq v0, v2, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
:try_end_2f
.catchall {:try_start_8 .. :try_end_2f} :catchall_30
goto :goto_1a
:catchall_30
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_37
:try_start_37
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
:cond_3c
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
if-nez v0, :cond_51
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-nez v0, :cond_51
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->l:Z
:try_end_4b
.catchall {:try_start_37 .. :try_end_4b} :catchall_30
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_50
return-void
:cond_51
:try_start_51
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->e()Z
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->d()Z
move-result v1
const/4 v2, 0x3
iput v2, p0, Lcom/google/android/gms/common/api/u;->j:I
if-eqz v0, :cond_68
if-ne p1, v4, :cond_63
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
:cond_63
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->f:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
:cond_68
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/x;
invoke-interface {v0}, Lcom/google/android/gms/common/api/x;->f()V
goto :goto_6e
:cond_7e
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->q:Z
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->p:Ljava/util/Map;
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
check-cast v0, Lcom/google/android/gms/common/api/b;
invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->c()Z
move-result v3
if-eqz v3, :cond_90
invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->c_()V
goto :goto_90
:cond_a6
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->q:Z
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/common/api/u;->j:I
if-eqz v1, :cond_b8
if-eq p1, v4, :cond_b5
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->a(I)V
:cond_b5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->q:Z
:cond_b8
:try_end_b8
.catchall {:try_start_51 .. :try_end_b8} :catchall_30
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_50
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/u;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/u;->a(I)V
return-void
.end method
.method private a(Lcom/google/android/gms/common/api/x;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->d()Z
move-result v0
const-string v1, "GoogleApiClient is not connected yet."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
invoke-interface {p1}, Lcom/google/android/gms/common/api/x;->b()Lcom/google/android/gms/common/api/c;
move-result-object v0
if-eqz v0, :cond_39
const/4 v0, 0x1
:goto_15
const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
instance-of v0, p1, Lcom/google/android/gms/common/api/l;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->r:Lcom/google/android/gms/common/api/v;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/v;)V
:cond_28
invoke-interface {p1}, Lcom/google/android/gms/common/api/x;->b()Lcom/google/android/gms/common/api/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/x;->b(Lcom/google/android/gms/common/api/b;)V
:try_end_33
.catchall {:try_start_5 .. :try_end_33} :catchall_3b
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:cond_39
const/4 v0, 0x0
goto :goto_15
:catchall_3b
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method static synthetic b(Lcom/google/android/gms/common/api/u;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/api/u;->j:I
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/common/api/u;I)I
.registers 2
iput p1, p0, Lcom/google/android/gms/common/api/u;->k:I
return p1
.end method
.method static synthetic c(Lcom/google/android/gms/common/api/u;I)I
.registers 2
iput p1, p0, Lcom/google/android/gms/common/api/u;->i:I
return p1
.end method
.method static synthetic c(Lcom/google/android/gms/common/api/u;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->o:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/common/api/u;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->f()V
return-void
.end method
.method static synthetic e(Lcom/google/android/gms/common/api/u;)Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->h()Z
move-result v0
return v0
.end method
.method static synthetic f(Lcom/google/android/gms/common/api/u;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/common/api/u;->n:J
return-wide v0
.end method
.method private f()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/u;->m:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/android/gms/common/api/u;->m:I
iget v0, p0, Lcom/google/android/gms/common/api/u;->m:I
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
if-eqz v0, :cond_52
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->l:Z
const/4 v0, 0x3
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/u;->a(I)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->h()Z
move-result v0
if-eqz v0, :cond_26
iget v0, p0, Lcom/google/android/gms/common/api/u;->k:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/android/gms/common/api/u;->k:I
:cond_26
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->h()Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->b:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
iget-wide v2, p0, Lcom/google/android/gms/common/api/u;->n:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_3a
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->q:Z
:try_end_3d
.catchall {:try_start_5 .. :try_end_3d} :catchall_4b
:goto_3d
:cond_3d
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:try_start_43
:cond_43
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/b;)V
:try_end_4a
.catchall {:try_start_43 .. :try_end_4a} :catchall_4b
goto :goto_3a
:catchall_4b
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_52
const/4 v0, 0x2
:try_start_53
iput v0, p0, Lcom/google/android/gms/common/api/u;->j:I
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->i()V
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->f:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->g()V
iget-boolean v0, p0, Lcom/google/android/gms/common/api/u;->l:Z
if-eqz v0, :cond_6c
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->l:Z
const/4 v0, -0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/u;->a(I)V
goto :goto_3d
:cond_6c
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->o:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-eqz v0, :cond_7b
const/4 v0, 0x0
:goto_75
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gu;->a(Landroid/os/Bundle;)V
goto :goto_3d
:cond_7b
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->o:Landroid/os/Bundle;
:try_end_7d
.catchall {:try_start_53 .. :try_end_7d} :catchall_4b
goto :goto_75
.end method
.method private g()V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->d()Z
move-result v0
const-string v1, "GoogleApiClient is not connected yet."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_e
:goto_e
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
:try_end_13
.catchall {:try_start_e .. :try_end_13} :catchall_2b
move-result v0
if-nez v0, :cond_32
:try_start_16
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/x;
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/x;)V
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
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_32
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method static synthetic g(Lcom/google/android/gms/common/api/u;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/common/api/u;->q:Z
return v0
.end method
.method static synthetic h(Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/b;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
return-object v0
.end method
.method private h()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/u;->k:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_12
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_a
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_10
const/4 v0, 0x0
goto :goto_a
:catchall_12
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method static synthetic i(Lcom/google/android/gms/common/api/u;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/api/u;->i:I
return v0
.end method
.method private i()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x0
:try_start_6
iput v0, p0, Lcom/google/android/gms/common/api/u;->k:I
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->b:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
:try_end_e
.catchall {:try_start_6 .. :try_end_e} :catchall_14
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_14
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->p:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/b;
const-string v1, "Appropriate Api was not requested."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->d()Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/u;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
:goto_e
:try_end_e
.catchall {:try_start_5 .. :try_end_e} :catchall_1a
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-object p1
:cond_14
:try_start_14
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
:try_end_19
.catchall {:try_start_14 .. :try_end_19} :catchall_1a
goto :goto_e
:catchall_1a
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/b;
.registers 8
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
if-eq v0, v1, :cond_3c
const/4 v0, 0x1
:goto_b
const-string v1, "blockingConnect must not be called on the UI thread"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_15
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->a()V
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v0
:cond_1c
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->e()Z
:try_end_1f
.catchall {:try_start_15 .. :try_end_1f} :catchall_7c
move-result v2
if-eqz v2, :cond_54
:try_start_22
iget-object v2, p0, Lcom/google/android/gms/common/api/u;->f:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_1c
new-instance v0, Lcom/google/android/gms/common/b;
const/16 v1, 0xe
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V
:try_end_36
.catchall {:try_start_22 .. :try_end_36} :catchall_7c
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_36} :catch_3e
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
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
new-instance v0, Lcom/google/android/gms/common/b;
const/16 v1, 0xf
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V
:try_end_4e
.catchall {:try_start_3f .. :try_end_4e} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:try_start_54
:cond_54
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->d()Z
move-result v0
if-eqz v0, :cond_62
sget-object v0, Lcom/google/android/gms/common/b;->r:Lcom/google/android/gms/common/b;
:try_end_5c
.catchall {:try_start_54 .. :try_end_5c} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:cond_62
:try_start_62
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
if-eqz v0, :cond_6e
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
:try_end_68
.catchall {:try_start_62 .. :try_end_68} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:try_start_6e
:cond_6e
new-instance v0, Lcom/google/android/gms/common/b;
const/16 v1, 0xd
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V
:try_end_76
.catchall {:try_start_6e .. :try_end_76} :catchall_7c
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_3b
:catchall_7c
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x0
:try_start_6
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->l:Z
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->d()Z
move-result v0
if-nez v0, :cond_14
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->e()Z
:try_end_11
.catchall {:try_start_6 .. :try_end_11} :catchall_4a
move-result v0
if-eqz v0, :cond_1a
:cond_14
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_19
return-void
:cond_1a
const/4 v0, 0x1
:try_start_1b
iput-boolean v0, p0, Lcom/google/android/gms/common/api/u;->q:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/u;->h:Lcom/google/android/gms/common/b;
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/common/api/u;->j:I
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->o:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->p:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
iput v0, p0, Lcom/google/android/gms/common/api/u;->m:I
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->p:Ljava/util/Map;
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
check-cast v0, Lcom/google/android/gms/common/api/b;
invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->a()V
:try_end_49
.catchall {:try_start_1b .. :try_end_49} :catchall_4a
goto :goto_3a
:catchall_4a
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_51
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_19
.end method
.method public a(Lcom/google/android/gms/common/api/h;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/api/h;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/i;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/common/f;)V
return-void
.end method
.method public b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->d()Z
move-result v0
const-string v1, "GoogleApiClient is not connected yet."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->g()V
:try_start_c
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/x;)V
:goto_f
:try_end_f
.catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_f} :catch_10
return-object p1
:catch_10
move-exception v0
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/u;->a(I)V
goto :goto_f
.end method
.method public b()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/api/u;->i()V
const/4 v0, -0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/u;->a(I)V
return-void
.end method
.method public b(Lcom/google/android/gms/common/api/h;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->b(Lcom/google/android/gms/common/api/h;)Z
move-result v0
return v0
.end method
.method public b(Lcom/google/android/gms/common/api/i;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->b(Lcom/google/android/gms/common/f;)Z
move-result v0
return v0
.end method
.method public c()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->b()V
invoke-virtual {p0}, Lcom/google/android/gms/common/api/u;->a()V
return-void
.end method
.method public c(Lcom/google/android/gms/common/api/h;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->c(Lcom/google/android/gms/common/api/h;)V
return-void
.end method
.method public c(Lcom/google/android/gms/common/api/i;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->g:Lcom/google/android/gms/internal/gu;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gu;->c(Lcom/google/android/gms/common/f;)V
return-void
.end method
.method public d()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/u;->j:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_13
const/4 v1, 0x2
if-ne v0, v1, :cond_11
const/4 v0, 0x1
:goto_b
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_11
const/4 v0, 0x0
goto :goto_b
:catchall_13
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public e()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_6
iget v1, p0, Lcom/google/android/gms/common/api/u;->j:I
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_12
if-ne v1, v0, :cond_10
:goto_a
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_10
const/4 v0, 0x0
goto :goto_a
:catchall_12
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method