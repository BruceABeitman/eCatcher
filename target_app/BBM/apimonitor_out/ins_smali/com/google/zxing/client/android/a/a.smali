.class final Lcom/google/zxing/client/android/a/a;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"
.implements Landroid/hardware/Camera$AutoFocusCallback;
.field private static final a:Ljava/lang/String;
.field private static final b:Ljava/util/Collection;
.field private c:Z
.field private d:Z
.field private final e:Z
.field private final f:Landroid/hardware/Camera;
.field private g:Landroid/os/AsyncTask;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/google/zxing/client/android/a/a;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/a/a;->a:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x2
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
sput-object v0, Lcom/google/zxing/client/android/a/a;->b:Ljava/util/Collection;
const-string v1, "auto"
invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/google/zxing/client/android/a/a;->b:Ljava/util/Collection;
const-string v1, "macro"
invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
.registers 7
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/zxing/client/android/a/a;->f:Landroid/hardware/Camera;
invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;
move-result-object v2
const-string v3, "preferences_auto_focus"
invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_48
sget-object v1, Lcom/google/zxing/client/android/a/a;->b:Ljava/util/Collection;
invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_48
:goto_22
iput-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->e:Z
sget-object v0, Lcom/google/zxing/client/android/a/a;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Current focus mode \'"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'; use auto focus? "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/google/zxing/client/android/a/a;->e:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/google/zxing/client/android/a/a;->a()V
return-void
:cond_48
const/4 v0, 0x0
goto :goto_22
.end method
.method private declared-synchronized c()V
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->c:Z
if-nez v0, :cond_19
iget-object v0, p0, Lcom/google/zxing/client/android/a/a;->g:Landroid/os/AsyncTask;
if-nez v0, :cond_19
new-instance v0, Lcom/google/zxing/client/android/a/b;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/a/b;-><init>(Lcom/google/zxing/client/android/a/a;B)V
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_24
:try_start_f
sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
iput-object v0, p0, Lcom/google/zxing/client/android/a/a;->g:Landroid/os/AsyncTask;
:goto_19
:cond_19
:try_end_19
.catchall {:try_start_f .. :try_end_19} :catchall_24
.catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_19} :catch_1b
monitor-exit p0
return-void
:catch_1b
move-exception v0
:try_start_1c
sget-object v1, Lcom/google/zxing/client/android/a/a;->a:Ljava/lang/String;
const-string v2, "Could not request auto focus"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_23
.catchall {:try_start_1c .. :try_end_23} :catchall_24
goto :goto_19
:catchall_24
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized d()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/a;->g:Landroid/os/AsyncTask;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/google/zxing/client/android/a/a;->g:Landroid/os/AsyncTask;
invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;
move-result-object v0
sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
if-eq v0, v1, :cond_15
iget-object v0, p0, Lcom/google/zxing/client/android/a/a;->g:Landroid/os/AsyncTask;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
:cond_15
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/a/a;->g:Landroid/os/AsyncTask;
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_1a
:cond_18
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized a()V
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->e:Z
if-eqz v0, :cond_18
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/a/a;->g:Landroid/os/AsyncTask;
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->c:Z
if-nez v0, :cond_18
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->d:Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_26
if-nez v0, :cond_18
:try_start_10
iget-object v0, p0, Lcom/google/zxing/client/android/a/a;->f:Landroid/hardware/Camera;
invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->d:Z
:cond_18
:goto_18
:try_end_18
.catchall {:try_start_10 .. :try_end_18} :catchall_26
.catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_18} :catch_1a
monitor-exit p0
return-void
:catch_1a
move-exception v0
:try_start_1b
sget-object v1, Lcom/google/zxing/client/android/a/a;->a:Ljava/lang/String;
const-string v2, "Unexpected exception while focusing"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-direct {p0}, Lcom/google/zxing/client/android/a/a;->c()V
:try_end_25
.catchall {:try_start_1b .. :try_end_25} :catchall_26
goto :goto_18
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized b()V
.registers 4
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->c:Z
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->e:Z
if-eqz v0, :cond_10
invoke-direct {p0}, Lcom/google/zxing/client/android/a/a;->d()V
:try_start_b
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_1b
iget-object v0, p0, Lcom/google/zxing/client/android/a/a;->f:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
:cond_10
:goto_10
:try_end_10
.catchall {:try_start_b .. :try_end_10} :catchall_1b
.catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_12
monitor-exit p0
return-void
:catch_12
move-exception v0
:try_start_13
sget-object v1, Lcom/google/zxing/client/android/a/a;->a:Ljava/lang/String;
const-string v2, "Unexpected exception while cancelling focusing"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_1a
.catchall {:try_start_13 .. :try_end_1a} :catchall_1b
goto :goto_10
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
.registers 4
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-boolean v0, p0, Lcom/google/zxing/client/android/a/a;->d:Z
invoke-direct {p0}, Lcom/google/zxing/client/android/a/a;->c()V
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method