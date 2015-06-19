.class public Lcom/twidroid/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static final e:Ljava/util/Timer;
.field private b:J
.field private c:Landroid/os/Handler;
.field private d:Ljava/util/List;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/twidroid/a/b;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/a/b;->a:Ljava/lang/String;
new-instance v0, Ljava/util/Timer;
const-string v1, "AsyncTaskManager::Killer"
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V
sput-object v0, Lcom/twidroid/a/b;->e:Ljava/util/Timer;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/32 v0, 0x9c40
iput-wide v0, p0, Lcom/twidroid/a/b;->b:J
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/a/b;->c:Landroid/os/Handler;
new-instance v0, Ljava/util/ArrayList;
const/16 v1, 0x32
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/a/b;->d:Ljava/util/List;
iget-object v0, p0, Lcom/twidroid/a/b;->c:Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
if-nez v0, :cond_2c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Should be created on UI thread"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
return-void
.end method
.method static synthetic b(Lcom/ubermedia/a/a;)Lcom/twidroid/a/a;
.registers 2
invoke-static {p0}, Lcom/twidroid/a/b;->c(Lcom/ubermedia/a/a;)Lcom/twidroid/a/a;
move-result-object v0
return-object v0
.end method
.method static synthetic b()Ljava/util/Timer;
.registers 1
sget-object v0, Lcom/twidroid/a/b;->e:Ljava/util/Timer;
return-object v0
.end method
.method private static c(Lcom/ubermedia/a/a;)Lcom/twidroid/a/a;
.registers 2
instance-of v0, p0, Lcom/twidroid/a/a;
if-eqz v0, :cond_7
check-cast p0, Lcom/twidroid/a/a;
:goto_6
return-object p0
:cond_7
const/4 p0, 0x0
goto :goto_6
.end method
.method static synthetic c()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/twidroid/a/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public a()V
.registers 8
iget-object v0, p0, Lcom/twidroid/a/b;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/a/c;
invoke-static {v0}, Lcom/twidroid/a/c;->a(Lcom/twidroid/a/c;)Ljava/lang/ref/WeakReference;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {v0}, Lcom/twidroid/a/c;->a(Lcom/twidroid/a/c;)Ljava/lang/ref/WeakReference;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ubermedia/a/a;
if-eqz v1, :cond_60
invoke-virtual {v1}, Lcom/ubermedia/a/a;->h()Z
move-result v3
if-nez v3, :cond_60
invoke-virtual {v1}, Lcom/ubermedia/a/a;->g()Lcom/ubermedia/a/e;
move-result-object v3
sget-object v4, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-eq v3, v4, :cond_60
const/4 v3, 0x1
invoke-virtual {v1, v3}, Lcom/ubermedia/a/a;->b(Z)Z
invoke-static {v1}, Lcom/twidroid/a/b;->c(Lcom/ubermedia/a/a;)Lcom/twidroid/a/a;
move-result-object v1
sget-object v3, Lcom/twidroid/a/b;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "AsyncTask"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
if-nez v1, :cond_64
const-string v1, " non-managed"
:goto_4f
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, " released"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_60
invoke-virtual {v0}, Lcom/twidroid/a/c;->cancel()Z
goto :goto_6
:cond_64
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, " managed "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v1}, Lcom/twidroid/a/a;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_4f
:cond_7c
iget-object v0, p0, Lcom/twidroid/a/b;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
sget-object v0, Lcom/twidroid/a/b;->e:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->purge()I
return-void
.end method
.method  a(Lcom/twidroid/a/a;)V
.registers 7
iget-object v0, p0, Lcom/twidroid/a/b;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_57
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/a/c;
invoke-static {v0}, Lcom/twidroid/a/c;->a(Lcom/twidroid/a/c;)Ljava/lang/ref/WeakReference;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ubermedia/a/a;
if-eqz v1, :cond_6
if-ne v1, p1, :cond_6
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/ubermedia/a/a;->b(Z)Z
invoke-virtual {v0}, Lcom/twidroid/a/c;->cancel()Z
iget-object v1, p0, Lcom/twidroid/a/b;->d:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
sget-object v0, Lcom/twidroid/a/b;->e:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->purge()I
invoke-static {p1}, Lcom/twidroid/a/b;->c(Lcom/ubermedia/a/a;)Lcom/twidroid/a/a;
move-result-object v0
sget-object v1, Lcom/twidroid/a/b;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "AsyncTask"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-nez v0, :cond_58
const-string v0, " non-managed"
:goto_46
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " completed"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_57
return-void
:cond_58
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
goto :goto_46
.end method
.method public a(Lcom/ubermedia/a/a;)V
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can\'t manage null-AsyncTask"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-static {p1}, Lcom/twidroid/a/b;->c(Lcom/ubermedia/a/a;)Lcom/twidroid/a/a;
move-result-object v2
if-nez v2, :cond_42
iget-wide v0, p0, Lcom/twidroid/a/b;->b:J
:goto_12
new-instance v3, Lcom/twidroid/a/c;
iget-object v4, p0, Lcom/twidroid/a/b;->d:Ljava/util/List;
const/4 v5, 0x0
invoke-direct {v3, p1, v4, v5}, Lcom/twidroid/a/c;-><init>(Lcom/ubermedia/a/a;Ljava/util/List;Lcom/twidroid/a/b$1;)V
sget-object v4, Lcom/twidroid/a/b;->e:Ljava/util/Timer;
invoke-virtual {v4, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
sget-object v1, Lcom/twidroid/a/b;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "New"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
if-nez v2, :cond_47
const-string v0, " non-managed"
:goto_30
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " asyncTask observed"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
:cond_42
invoke-virtual {v2}, Lcom/twidroid/a/a;->d()J
move-result-wide v0
goto :goto_12
:cond_47
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, " managed "
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v2}, Lcom/twidroid/a/a;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_30
.end method