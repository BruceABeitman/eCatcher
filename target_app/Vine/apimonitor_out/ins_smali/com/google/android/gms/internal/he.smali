.class public final Lcom/google/android/gms/internal/he;
.super Ljava/lang/Object;
.implements Landroid/os/Handler$Callback;
.field private static final Gs:Ljava/lang/Object;
.field private static Gt:Lcom/google/android/gms/internal/he;
.field private final Gu:Ljava/util/HashMap;
.field private final lx:Landroid/content/Context;
.field private final mHandler:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/he;->Gs:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
iput-object v0, p0, Lcom/google/android/gms/internal/he;->mHandler:Landroid/os/Handler;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/he;->lx:Landroid/content/Context;
return-void
.end method
.method public static B(Landroid/content/Context;)Lcom/google/android/gms/internal/he;
.registers 4
sget-object v1, Lcom/google/android/gms/internal/he;->Gs:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/he;->Gt:Lcom/google/android/gms/internal/he;
if-nez v0, :cond_12
new-instance v0, Lcom/google/android/gms/internal/he;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/he;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/internal/he;->Gt:Lcom/google/android/gms/internal/he;
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_16
sget-object v0, Lcom/google/android/gms/internal/he;->Gt:Lcom/google/android/gms/internal/he;
return-object v0
:catchall_16
move-exception v0
:try_start_17
monitor-exit v1
:try_end_18
.catchall {:try_start_17 .. :try_end_18} :catchall_16
throw v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/he;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
return-object v0
.end method
.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/hc$f;)Z
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/he$a;
if-nez v0, :cond_3a
new-instance v0, Lcom/google/android/gms/internal/he$a;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/he$a;-><init>(Lcom/google/android/gms/internal/he;Ljava/lang/String;)V
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/hc$f;)V
new-instance v2, Landroid/content/Intent;
invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "com.google.android.gms"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/he;->lx:Landroid/content/Context;
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->fs()Lcom/google/android/gms/internal/he$a$a;
move-result-object v4
const/16 v5, 0x81
invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/he$a;->B(Z)V
iget-object v2, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_34
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->isBound()Z
move-result v0
monitor-exit v1
return v0
:cond_3a
iget-object v2, p0, Lcom/google/android/gms/internal/he;->mHandler:Landroid/os/Handler;
const/4 v3, 0x0
invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/he$a;->c(Lcom/google/android/gms/internal/hc$f;)Z
move-result v2
if-eqz v2, :cond_62
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_5f
move-exception v0
monitor-exit v1
:try_end_61
.catchall {:try_start_3 .. :try_end_61} :catchall_5f
throw v0
:cond_62
:try_start_62
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/hc$f;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->getState()I
move-result v2
packed-switch v2, :pswitch_data_94
goto :goto_34
:pswitch_6d
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->getComponentName()Landroid/content/ComponentName;
move-result-object v2
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->getBinder()Landroid/os/IBinder;
move-result-object v3
invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/hc$f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
goto :goto_34
:pswitch_79
new-instance v2, Landroid/content/Intent;
invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "com.google.android.gms"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/he;->lx:Landroid/content/Context;
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->fs()Lcom/google/android/gms/internal/he$a$a;
move-result-object v4
const/16 v5, 0x81
invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/he$a;->B(Z)V
:try_end_93
.catchall {:try_start_62 .. :try_end_93} :catchall_5f
goto :goto_34
:pswitch_data_94
.packed-switch 0x1
:pswitch_6d
:pswitch_79
.end packed-switch
.end method
.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/hc$f;)V
.registers 8
iget-object v1, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/he$a;
if-nez v0, :cond_29
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Nonexistent connection status for service action: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_26
move-exception v0
monitor-exit v1
:try_end_28
.catchall {:try_start_3 .. :try_end_28} :catchall_26
throw v0
:cond_29
:try_start_29
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/he$a;->c(Lcom/google/android/gms/internal/hc$f;)Z
move-result v2
if-nez v2, :cond_48
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_48
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/he$a;->b(Lcom/google/android/gms/internal/hc$f;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->fu()Z
move-result v2
if-eqz v2, :cond_5f
iget-object v2, p0, Lcom/google/android/gms/internal/he;->mHandler:Landroid/os/Handler;
const/4 v3, 0x0
invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/he;->mHandler:Landroid/os/Handler;
const-wide/16 v3, 0x1388
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_5f
monitor-exit v1
:try_end_60
.catchall {:try_start_29 .. :try_end_60} :catchall_26
return-void
.end method
.method public handleMessage(Landroid/os/Message;)Z
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_2c
const/4 v0, 0x0
:goto_6
return v0
:pswitch_7
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/he$a;
iget-object v1, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
monitor-enter v1
:try_start_e
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->fu()Z
move-result v2
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/google/android/gms/internal/he;->lx:Landroid/content/Context;
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->fs()Lcom/google/android/gms/internal/he$a$a;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v2, p0, Lcom/google/android/gms/internal/he;->Gu:Ljava/util/HashMap;
invoke-virtual {v0}, Lcom/google/android/gms/internal/he$a;->ft()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_26
monitor-exit v1
const/4 v0, 0x1
goto :goto_6
:catchall_29
move-exception v0
monitor-exit v1
:try_end_2b
.catchall {:try_start_e .. :try_end_2b} :catchall_29
throw v0
:pswitch_data_2c
.packed-switch 0x0
:pswitch_7
.end packed-switch
.end method