.class public final Lcom/spotify/mobile/android/service/connections/g;
.super Lcom/spotify/mobile/android/service/connections/a;
.source "SourceFile"
.field private b:Landroid/os/Handler;
.field private c:Ljava/util/List;
.field private d:Lcom/spotify/mobile/android/service/j;
.field private e:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/connections/a;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->c:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/service/connections/MetadataConnection$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/MetadataConnection$1;-><init>(Lcom/spotify/mobile/android/service/connections/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->e:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;
iput-object p2, p0, Lcom/spotify/mobile/android/service/connections/g;->b:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/connections/g;)Lcom/spotify/mobile/android/service/j;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->d:Lcom/spotify/mobile/android/service/j;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/connections/g;)Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->e:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;
return-object v0
.end method
.method public final declared-synchronized a(Lcom/spotify/mobile/android/service/connections/h;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->c:Ljava/util/List;
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b(Lcom/spotify/mobile/android/service/connections/h;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
move-result-object v1
:goto_7
:cond_7
invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/connections/h;
if-ne v0, p1, :cond_7
invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_1f
goto :goto_7
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
:cond_22
monitor-exit p0
return-void
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->d:Lcom/spotify/mobile/android/service/j;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->a:Landroid/content/Context;
invoke-static {v0, p0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
return-void
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->a:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->d:Lcom/spotify/mobile/android/service/j;
return-void
.end method
.method public final declared-synchronized f()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
move-result-object v1
:goto_7
invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/connections/h;
if-eqz v0, :cond_24
iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/g;->d:Lcom/spotify/mobile/android/service/j;
invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/h;->a()V
:try_end_20
.catchall {:try_start_1 .. :try_end_20} :catchall_21
goto :goto_7
:catchall_21
move-exception v0
monitor-exit p0
throw v0
:cond_24
:try_start_24
invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_21
goto :goto_7
:cond_28
monitor-exit p0
return-void
.end method
.method public final declared-synchronized g()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
move-result-object v1
:goto_7
invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/connections/h;
if-eqz v0, :cond_22
invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/h;->b()V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_1f
goto :goto_7
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
:cond_22
:try_start_22
invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
:try_end_25
.catchall {:try_start_22 .. :try_end_25} :catchall_1f
goto :goto_7
:cond_26
monitor-exit p0
return-void
.end method
.method public final h()Lcom/spotify/mobile/android/service/j;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->d:Lcom/spotify/mobile/android/service/j;
return-object v0
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/connections/g; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p2}, Lcom/spotify/mobile/android/service/k;->a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/j;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/g;->d:Lcom/spotify/mobile/android/service/j;
new-instance v0, Lcom/spotify/mobile/android/service/connections/g$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/g$1;-><init>(Lcom/spotify/mobile/android/service/connections/g;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/g;->b:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/service/connections/a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
const-string v1, " - Lcom/spotify/mobile/android/service/connections/g; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method