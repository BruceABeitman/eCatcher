.class public final Lcom/google/android/gms/internal/ej;
.super Ljava/lang/Object;
.implements Landroid/os/Handler$Callback;
.field private static final BQ:Ljava/lang/Object;
.field private static BR:Lcom/google/android/gms/internal/ej;
.field private final BS:Ljava/util/HashMap;
.field private final mHandler:Landroid/os/Handler;
.field private final qe:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ej;->BQ:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ej;->mHandler:Landroid/os/Handler;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ej;->qe:Landroid/content/Context;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ej;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
return-object v0
.end method
.method public static y(Landroid/content/Context;)Lcom/google/android/gms/internal/ej;
.registers 4
sget-object v1, Lcom/google/android/gms/internal/ej;->BQ:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/ej;->BR:Lcom/google/android/gms/internal/ej;
if-nez v0, :cond_12
new-instance v0, Lcom/google/android/gms/internal/ej;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ej;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/internal/ej;->BR:Lcom/google/android/gms/internal/ej;
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_16
sget-object v0, Lcom/google/android/gms/internal/ej;->BR:Lcom/google/android/gms/internal/ej;
return-object v0
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/eh$f;)Z
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ej$a;
if-nez v0, :cond_3a
new-instance v0, Lcom/google/android/gms/internal/ej$a;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ej$a;-><init>(Lcom/google/android/gms/internal/ej;Ljava/lang/String;)V
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/eh$f;)V
new-instance v2, Landroid/content/Intent;
invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "com.google.android.gms"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/ej;->qe:Landroid/content/Context;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->ee()Lcom/google/android/gms/internal/ej$a$a;
move-result-object v4
const/16 v5, 0x81
invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ej$a;->w(Z)V
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_34
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->isBound()Z
move-result v0
monitor-exit v1
return v0
:cond_3a
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->mHandler:Landroid/os/Handler;
const/4 v3, 0x0
invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ej$a;->c(Lcom/google/android/gms/internal/eh$f;)Z
move-result v2
if-eqz v2, :cond_5e
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_5b
.catchall {:try_start_3 .. :try_end_5b} :catchall_5b
:catchall_5b
move-exception v0
monitor-exit v1
throw v0
:cond_5e
:try_start_5e
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/eh$f;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->getState()I
move-result v2
packed-switch v2, :pswitch_data_90
goto :goto_34
:pswitch_69
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->getComponentName()Landroid/content/ComponentName;
move-result-object v2
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->getBinder()Landroid/os/IBinder;
move-result-object v3
invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/eh$f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
goto :goto_34
:pswitch_75
new-instance v2, Landroid/content/Intent;
invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "com.google.android.gms"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/ej;->qe:Landroid/content/Context;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->ee()Lcom/google/android/gms/internal/ej$a$a;
move-result-object v4
const/16 v5, 0x81
invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ej$a;->w(Z)V
:try_end_8f
.catchall {:try_start_5e .. :try_end_8f} :catchall_5b
goto :goto_34
:pswitch_data_90
.packed-switch 0x1
:pswitch_69
:pswitch_75
.end packed-switch
.end method
.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/eh$f;)V
.registers 8
iget-object v1, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ej$a;
if-nez v0, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Nonexistent connection status for service action: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_22
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_22
move-exception v0
monitor-exit v1
throw v0
:cond_25
:try_start_25
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ej$a;->c(Lcom/google/android/gms/internal/eh$f;)Z
move-result v2
if-nez v2, :cond_40
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_40
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ej$a;->b(Lcom/google/android/gms/internal/eh$f;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->eg()Z
move-result v2
if-eqz v2, :cond_57
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->mHandler:Landroid/os/Handler;
const/4 v3, 0x0
invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->mHandler:Landroid/os/Handler;
const-wide/16 v3, 0x1388
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_57
monitor-exit v1
:try_end_58
.catchall {:try_start_25 .. :try_end_58} :catchall_22
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)Z
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_2c
const/4 v0, 0x0
:goto_6
return v0
:pswitch_7
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/internal/ej$a;
iget-object v1, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
monitor-enter v1
:try_start_e
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->eg()Z
move-result v2
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->qe:Landroid/content/Context;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->ee()Lcom/google/android/gms/internal/ej$a$a;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->BS:Ljava/util/HashMap;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->ef()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_26
monitor-exit v1
:try_end_27
.catchall {:try_start_e .. :try_end_27} :catchall_29
const/4 v0, 0x1
goto :goto_6
:catchall_29
move-exception v0
monitor-exit v1
throw v0
:pswitch_data_2c
.packed-switch 0x0
:pswitch_7
.end packed-switch
.end method