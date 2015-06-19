.class public abstract Lcom/spotify/mobile/android/service/connections/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/ServiceConnection;
.field private final b:Landroid/content/Context;
.field private final c:Ljava/lang/Class;
.field private final d:Ljava/util/Set;
.field private final e:Ljava/util/Set;
.field private f:Landroid/os/Binder;
.field private g:Z
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/service/connections/e$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/e$1;-><init>(Lcom/spotify/mobile/android/service/connections/e;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->a:Landroid/content/ServiceConnection;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->d:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->e:Ljava/util/Set;
iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/e;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/service/connections/e;->c:Ljava/lang/Class;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/connections/e;Landroid/os/Binder;)Landroid/os/Binder;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/connections/e;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/connections/e;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/connections/e;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/service/connections/e;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/e;->e()V
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/e;->d:Ljava/util/Set;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->d:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_c
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
:try_end_15
.catchall {:try_start_6 .. :try_end_15} :catchall_16
goto :goto_c
:catchall_16
move-exception v0
monitor-exit v1
throw v0
:cond_19
:try_start_19
monitor-exit v1
:try_end_1a
.catchall {:try_start_19 .. :try_end_1a} :catchall_16
return-void
.end method
.method static synthetic e(Lcom/spotify/mobile/android/service/connections/e;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/e;->h()V
return-void
.end method
.method static synthetic f(Lcom/spotify/mobile/android/service/connections/e;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/e;->f()V
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/e;->d:Ljava/util/Set;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->d:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_c
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
:try_end_15
.catchall {:try_start_6 .. :try_end_15} :catchall_16
goto :goto_c
:catchall_16
move-exception v0
monitor-exit v1
throw v0
:cond_19
:try_start_19
monitor-exit v1
:try_end_1a
.catchall {:try_start_19 .. :try_end_1a} :catchall_16
return-void
.end method
.method private h()V
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/e;->e:Ljava/util/Set;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_13
goto :goto_9
:catchall_13
move-exception v0
monitor-exit v1
throw v0
:cond_16
:try_start_16
monitor-exit v1
:try_end_17
.catchall {:try_start_16 .. :try_end_17} :catchall_13
return-void
.end method
.method public final a()V
.registers 5
const/4 v3, 0x1
const-string v0, "Not called from main loop"
invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
if-nez v0, :cond_e
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
if-eqz v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/e;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/e;->c:Ljava/lang/Class;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/e;->b:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
iput-boolean v3, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/e;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/e;->a:Landroid/content/ServiceConnection;
invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
if-nez v0, :cond_e
invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/e;->h()V
goto :goto_e
.end method
.method public b()V
.registers 3
const-string v0, "Not called from main loop"
invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
if-eqz v0, :cond_f
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/service/connections/e;->h()V
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
if-eqz v0, :cond_1d
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->b:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/e;->a:Landroid/content/ServiceConnection;
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:cond_1d
return-void
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/connections/e;->g:Z
return v0
.end method
.method protected e()V
.registers 1
return-void
.end method
.method protected f()V
.registers 1
return-void
.end method
.method protected final g()Landroid/os/Binder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
invoke-virtual {v0}, Landroid/os/Binder;->pingBinder()Z
move-result v0
if-nez v0, :cond_14
:cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Service seems to be disconnected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e;->f:Landroid/os/Binder;
return-object v0
.end method