.class  Lcom/twidroid/a/c;
.super Ljava/util/TimerTask;
.source "SourceFile"
.field private a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/util/List;
.method private constructor <init>(Lcom/ubermedia/a/a;Ljava/util/List;)V
.registers 4
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/twidroid/a/c;->a:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/twidroid/a/c;->b:Ljava/util/List;
iget-object v0, p0, Lcom/twidroid/a/c;->b:Ljava/util/List;
invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method synthetic constructor <init>(Lcom/ubermedia/a/a;Ljava/util/List;Lcom/twidroid/a/b$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/a/c;-><init>(Lcom/ubermedia/a/a;Ljava/util/List;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/a/c;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/twidroid/a/c;->a:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/twidroid/a/c;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/twidroid/a/c;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/a/a;
if-eqz v0, :cond_56
invoke-virtual {v0}, Lcom/ubermedia/a/a;->h()Z
move-result v1
if-nez v1, :cond_56
invoke-virtual {v0}, Lcom/ubermedia/a/a;->g()Lcom/ubermedia/a/e;
move-result-object v1
sget-object v2, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-eq v1, v2, :cond_56
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/ubermedia/a/a;->b(Z)Z
invoke-virtual {p0}, Lcom/twidroid/a/c;->cancel()Z
invoke-static {}, Lcom/twidroid/a/b;->b()Ljava/util/Timer;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Timer;->purge()I
invoke-static {v0}, Lcom/twidroid/a/b;->b(Lcom/ubermedia/a/a;)Lcom/twidroid/a/a;
move-result-object v0
invoke-static {}, Lcom/twidroid/a/b;->c()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "AsyncTask"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-nez v0, :cond_60
const-string v0, " non-managed"
:goto_45
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " TERMINATED"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_56
iget-object v1, p0, Lcom/twidroid/a/c;->b:Ljava/util/List;
monitor-enter v1
:try_start_59
iget-object v0, p0, Lcom/twidroid/a/c;->b:Ljava/util/List;
invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_5f
.catchall {:try_start_59 .. :try_end_5f} :catchall_78
:cond_5f
return-void
:cond_60
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, " managed "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/twidroid/a/a;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_45
:catchall_78
move-exception v0
:try_start_79
monitor-exit v1
:try_end_7a
.catchall {:try_start_79 .. :try_end_7a} :catchall_78
throw v0
.end method