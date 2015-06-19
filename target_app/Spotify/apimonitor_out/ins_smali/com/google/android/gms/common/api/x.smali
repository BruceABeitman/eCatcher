.class final Lcom/google/android/gms/common/api/x;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/i;
.field final a:Ljava/util/Queue;
.field final b:Landroid/os/Handler;
.field final c:Ljava/util/Set;
.field final d:Lcom/google/android/gms/common/api/k;
.field private final e:Ljava/util/concurrent/locks/Lock;
.field private final f:Ljava/util/concurrent/locks/Condition;
.field private final g:Lcom/google/android/gms/internal/gj;
.field private final h:Landroid/os/Looper;
.field private i:Lcom/google/android/gms/common/a;
.field private j:I
.field private k:I
.field private l:I
.field private m:Z
.field private n:I
.field private o:J
.field private final p:Landroid/os/Bundle;
.field private final q:Ljava/util/Map;
.field private r:Z
.field private final s:Lcom/google/android/gms/common/api/y;
.field private final t:Lcom/google/android/gms/internal/gl;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
.registers 17
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->f:Ljava/util/concurrent/locks/Condition;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->a:Ljava/util/Queue;
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/common/api/x;->k:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/common/api/x;->l:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->m:Z
const-wide/16 v0, 0x1388
iput-wide v0, p0, Lcom/google/android/gms/common/api/x;->o:J
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->p:Landroid/os/Bundle;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->q:Ljava/util/Map;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->c:Ljava/util/Set;
new-instance v0, Lcom/google/android/gms/common/api/x$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/x$1;-><init>(Lcom/google/android/gms/common/api/x;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->s:Lcom/google/android/gms/common/api/y;
new-instance v0, Lcom/google/android/gms/common/api/x$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/x$2;-><init>(Lcom/google/android/gms/common/api/x;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->d:Lcom/google/android/gms/common/api/k;
new-instance v0, Lcom/google/android/gms/common/api/x$3;
invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/x$3;-><init>(Lcom/google/android/gms/common/api/x;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->t:Lcom/google/android/gms/internal/gl;
new-instance v0, Lcom/google/android/gms/internal/gj;
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->t:Lcom/google/android/gms/internal/gl;
invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/gj;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/gl;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->g:Lcom/google/android/gms/internal/gj;
iput-object p2, p0, Lcom/google/android/gms/common/api/x;->h:Landroid/os/Looper;
new-instance v0, Lcom/google/android/gms/common/api/z;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/z;-><init>(Lcom/google/android/gms/common/api/x;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->b:Landroid/os/Handler;
invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_66
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_78
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/k;
iget-object v2, p0, Lcom/google/android/gms/common/api/x;->g:Lcom/google/android/gms/internal/gj;
invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/api/k;)V
goto :goto_66
:cond_78
invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/l;
iget-object v2, p0, Lcom/google/android/gms/common/api/x;->g:Lcom/google/android/gms/internal/gj;
invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/d;)V
goto :goto_7c
:cond_8e
invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_96
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c3
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Lcom/google/android/gms/common/api/a;
invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/g;
move-result-object v0
invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
iget-object v8, p0, Lcom/google/android/gms/common/api/x;->q:Ljava/util/Map;
invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/h;
move-result-object v9
iget-object v5, p0, Lcom/google/android/gms/common/api/x;->d:Lcom/google/android/gms/common/api/k;
new-instance v6, Lcom/google/android/gms/common/api/x$4;
invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/x$4;-><init>(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/api/g;)V
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/g;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Ljava/lang/Object;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/f;
move-result-object v0
invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_96
:cond_c3
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/x;->i:Lcom/google/android/gms/common/a;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method private a(I)V
.registers 7
const/4 v1, 0x3
const/4 v4, -0x1
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_7
iget v0, p0, Lcom/google/android/gms/common/api/x;->k:I
if-eq v0, v1, :cond_b4
if-ne p1, v4, :cond_68
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->d()Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_19
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/aa;
invoke-interface {v0}, Lcom/google/android/gms/common/api/aa;->a()V
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
:try_end_2b
.catchall {:try_start_7 .. :try_end_2b} :catchall_2c
goto :goto_19
:catchall_2c
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:try_start_33
:cond_33
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
:cond_38
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/aa;
invoke-interface {v0}, Lcom/google/android/gms/common/api/aa;->a()V
goto :goto_3e
:cond_4e
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->i:Lcom/google/android/gms/common/a;
if-nez v0, :cond_68
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-nez v0, :cond_68
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->m:Z
:try_end_62
.catchall {:try_start_33 .. :try_end_62} :catchall_2c
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_67
return-void
:cond_68
:try_start_68
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->d()Z
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->c()Z
move-result v1
const/4 v2, 0x3
iput v2, p0, Lcom/google/android/gms/common/api/x;->k:I
if-eqz v0, :cond_7f
if-ne p1, v4, :cond_7a
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->i:Lcom/google/android/gms/common/a;
:cond_7a
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->f:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
:cond_7f
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->r:Z
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->q:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8c
:cond_8c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a2
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/f;
invoke-interface {v0}, Lcom/google/android/gms/common/api/f;->c()Z
move-result v3
if-eqz v3, :cond_8c
invoke-interface {v0}, Lcom/google/android/gms/common/api/f;->b()V
goto :goto_8c
:cond_a2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->r:Z
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/common/api/x;->k:I
if-eqz v1, :cond_b4
if-eq p1, v4, :cond_b1
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->g:Lcom/google/android/gms/internal/gj;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gj;->a(I)V
:cond_b1
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->r:Z
:try_end_b4
.catchall {:try_start_68 .. :try_end_b4} :catchall_2c
:cond_b4
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_67
.end method
.method private a(Lcom/google/android/gms/common/api/aa;)V
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_7
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->c()Z
move-result v2
if-nez v2, :cond_13
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->f()Z
move-result v2
if-eqz v2, :cond_44
:cond_13
move v2, v0
:goto_14
const-string v3, "GoogleApiClient is not connected yet."
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
invoke-interface {p1}, Lcom/google/android/gms/common/api/aa;->c()Lcom/google/android/gms/common/api/h;
move-result-object v2
if-eqz v2, :cond_46
:goto_1f
const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->b(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->s:Lcom/google/android/gms/common/api/y;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/aa;->a(Lcom/google/android/gms/common/api/y;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->f()Z
move-result v0
if-eqz v0, :cond_48
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/16 v1, 0x8
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/aa;->b(Lcom/google/android/gms/common/api/Status;)V
:try_end_3e
.catchall {:try_start_7 .. :try_end_3e} :catchall_59
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_43
return-void
:cond_44
move v2, v1
goto :goto_14
:cond_46
move v0, v1
goto :goto_1f
:try_start_48
:cond_48
invoke-interface {p1}, Lcom/google/android/gms/common/api/aa;->c()Lcom/google/android/gms/common/api/h;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/f;
move-result-object v0
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/aa;->a(Lcom/google/android/gms/common/api/f;)V
:try_end_53
.catchall {:try_start_48 .. :try_end_53} :catchall_59
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_43
:catchall_59
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/x;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/x;->a(I)V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/common/api/x;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/api/x;->k:I
return v0
.end method
.method static synthetic c(Lcom/google/android/gms/common/api/x;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->p:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/common/api/x;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/x;->n:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/android/gms/common/api/x;->n:I
iget v0, p0, Lcom/google/android/gms/common/api/x;->n:I
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->i:Lcom/google/android/gms/common/a;
if-eqz v0, :cond_52
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->m:Z
const/4 v0, 0x3
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->a(I)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->f()Z
move-result v0
if-eqz v0, :cond_26
iget v0, p0, Lcom/google/android/gms/common/api/x;->l:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/android/gms/common/api/x;->l:I
:cond_26
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->f()Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->b:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
iget-wide v2, p0, Lcom/google/android/gms/common/api/x;->o:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_3a
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->r:Z
:try_end_3d
.catchall {:try_start_5 .. :try_end_3d} :catchall_4b
:goto_3d
:cond_3d
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:try_start_43
:cond_43
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->g:Lcom/google/android/gms/internal/gj;
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->i:Lcom/google/android/gms/common/a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/a;)V
:try_end_4a
.catchall {:try_start_43 .. :try_end_4a} :catchall_4b
goto :goto_3a
:catchall_4b
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_52
const/4 v0, 0x2
:try_start_53
iput v0, p0, Lcom/google/android/gms/common/api/x;->k:I
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->g()V
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->f:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->e()V
iget-boolean v0, p0, Lcom/google/android/gms/common/api/x;->m:Z
if-eqz v0, :cond_6c
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->m:Z
const/4 v0, -0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->a(I)V
goto :goto_3d
:cond_6c
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->p:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-eqz v0, :cond_7b
const/4 v0, 0x0
:goto_75
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->g:Lcom/google/android/gms/internal/gj;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gj;->a(Landroid/os/Bundle;)V
goto :goto_3d
:cond_7b
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->p:Landroid/os/Bundle;
:try_end_7d
.catchall {:try_start_53 .. :try_end_7d} :catchall_4b
goto :goto_75
.end method
.method private e()V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->c()Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->f()Z
move-result v0
if-eqz v0, :cond_3b
:cond_c
const/4 v0, 0x1
:goto_d
const-string v1, "GoogleApiClient is not connected yet."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_17
:goto_17
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
:try_end_1c
.catchall {:try_start_17 .. :try_end_1c} :catchall_34
move-result v0
if-nez v0, :cond_3d
:try_start_1f
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->a:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/aa;
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/aa;)V
:try_end_2a
.catchall {:try_start_1f .. :try_end_2a} :catchall_34
.catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_2a} :catch_2b
goto :goto_17
:catch_2b
move-exception v0
:try_start_2c
const-string v1, "GoogleApiClientImpl"
const-string v2, "Service died while flushing queue"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_33
.catchall {:try_start_2c .. :try_end_33} :catchall_34
goto :goto_17
:catchall_34
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_3b
const/4 v0, 0x0
goto :goto_d
:cond_3d
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method static synthetic e(Lcom/google/android/gms/common/api/x;)Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->f()Z
move-result v0
return v0
.end method
.method static synthetic f(Lcom/google/android/gms/common/api/x;)I
.registers 2
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/common/api/x;->l:I
return v0
.end method
.method private f()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/x;->l:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_12
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_a
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_10
const/4 v0, 0x0
goto :goto_a
:catchall_12
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method static synthetic g(Lcom/google/android/gms/common/api/x;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/common/api/x;->o:J
return-wide v0
.end method
.method private g()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x0
:try_start_6
iput v0, p0, Lcom/google/android/gms/common/api/x;->l:I
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->b:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
:try_end_e
.catchall {:try_start_6 .. :try_end_e} :catchall_14
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_14
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method static synthetic h(Lcom/google/android/gms/common/api/x;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/common/api/x;->r:Z
return v0
.end method
.method static synthetic i(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->i:Lcom/google/android/gms/common/a;
return-object v0
.end method
.method static synthetic j(Lcom/google/android/gms/common/api/x;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/api/x;->j:I
return v0
.end method
.method static synthetic k(Lcom/google/android/gms/common/api/x;)I
.registers 2
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/common/api/x;->j:I
return v0
.end method
.method public final a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/f;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->q:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/f;
const-string v1, "Appropriate Api was not requested."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method public final a(Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/u;
.registers 5
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->c()Z
move-result v0
if-nez v0, :cond_d
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->f()Z
move-result v0
if-eqz v0, :cond_1a
:cond_d
move v0, v1
:goto_e
const-string v2, "GoogleApiClient is not connected yet."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->e()V
:try_start_16
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/aa;)V
:try_end_19
.catch Landroid/os/DeadObjectException; {:try_start_16 .. :try_end_19} :catch_1c
:goto_19
return-object p1
:cond_1a
const/4 v0, 0x0
goto :goto_e
:catch_1c
move-exception v0
invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/x;->a(I)V
goto :goto_19
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x0
:try_start_6
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->m:Z
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->c()Z
move-result v0
if-nez v0, :cond_14
invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->d()Z
:try_end_11
.catchall {:try_start_6 .. :try_end_11} :catchall_4a
move-result v0
if-eqz v0, :cond_1a
:cond_14
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_19
return-void
:cond_1a
const/4 v0, 0x1
:try_start_1b
iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->r:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/api/x;->i:Lcom/google/android/gms/common/a;
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/common/api/x;->k:I
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->p:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->q:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
iput v0, p0, Lcom/google/android/gms/common/api/x;->n:I
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->q:Ljava/util/Map;
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
check-cast v0, Lcom/google/android/gms/common/api/f;
invoke-interface {v0}, Lcom/google/android/gms/common/api/f;->a()V
:try_end_49
.catchall {:try_start_1b .. :try_end_49} :catchall_4a
goto :goto_3a
:catchall_4a
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_51
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_19
.end method
.method public final b()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->g()V
const/4 v0, -0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->a(I)V
return-void
.end method
.method public final c()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lcom/google/android/gms/common/api/x;->k:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_13
const/4 v1, 0x2
if-ne v0, v1, :cond_11
const/4 v0, 0x1
:goto_b
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_11
const/4 v0, 0x0
goto :goto_b
:catchall_13
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public final d()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_6
iget v1, p0, Lcom/google/android/gms/common/api/x;->k:I
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_12
if-ne v1, v0, :cond_10
:goto_a
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:cond_10
const/4 v0, 0x0
goto :goto_a
:catchall_12
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x;->e:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method