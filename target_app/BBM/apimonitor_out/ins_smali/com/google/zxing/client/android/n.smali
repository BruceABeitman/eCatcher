.class public final Lcom/google/zxing/client/android/n;
.super Ljava/lang/Object;
.source "InactivityTimer.java"
.field private static final a:Ljava/lang/String;
.field private final b:Landroid/app/Activity;
.field private final c:Lcom/google/zxing/client/android/b/a/a;
.field private final d:Landroid/content/BroadcastReceiver;
.field private e:Lcom/google/zxing/client/android/o;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/zxing/client/android/n;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/n;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/client/android/n;->b:Landroid/app/Activity;
new-instance v0, Lcom/google/zxing/client/android/b/a/b;
invoke-direct {v0}, Lcom/google/zxing/client/android/b/a/b;-><init>()V
invoke-virtual {v0}, Lcom/google/zxing/client/android/b/a/b;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/client/android/b/a/a;
iput-object v0, p0, Lcom/google/zxing/client/android/n;->c:Lcom/google/zxing/client/android/b/a/a;
new-instance v0, Lcom/google/zxing/client/android/p;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/p;-><init>(Lcom/google/zxing/client/android/n;B)V
iput-object v0, p0, Lcom/google/zxing/client/android/n;->d:Landroid/content/BroadcastReceiver;
invoke-virtual {p0}, Lcom/google/zxing/client/android/n;->a()V
return-void
.end method
.method static synthetic a(Lcom/google/zxing/client/android/n;)V
.registers 1
invoke-virtual {p0}, Lcom/google/zxing/client/android/n;->d()V
return-void
.end method
.method static synthetic b(Lcom/google/zxing/client/android/n;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/android/n;->b:Landroid/app/Activity;
return-object v0
.end method
.method static synthetic e()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/google/zxing/client/android/n;->a:Ljava/lang/String;
return-object v0
.end method
.method public final declared-synchronized a()V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/google/zxing/client/android/n;->d()V
new-instance v0, Lcom/google/zxing/client/android/o;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/o;-><init>(Lcom/google/zxing/client/android/n;B)V
iput-object v0, p0, Lcom/google/zxing/client/android/n;->e:Lcom/google/zxing/client/android/o;
iget-object v0, p0, Lcom/google/zxing/client/android/n;->c:Lcom/google/zxing/client/android/b/a/a;
iget-object v1, p0, Lcom/google/zxing/client/android/n;->e:Lcom/google/zxing/client/android/o;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Lcom/google/zxing/client/android/b/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_18
monitor-exit p0
return-void
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b()V
.registers 3
invoke-virtual {p0}, Lcom/google/zxing/client/android/n;->d()V
iget-object v0, p0, Lcom/google/zxing/client/android/n;->b:Landroid/app/Activity;
iget-object v1, p0, Lcom/google/zxing/client/android/n;->d:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public final c()V
.registers 5
iget-object v0, p0, Lcom/google/zxing/client/android/n;->b:Landroid/app/Activity;
iget-object v1, p0, Lcom/google/zxing/client/android/n;->d:Landroid/content/BroadcastReceiver;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/google/zxing/client/android/n;->a()V
return-void
.end method
.method public final declared-synchronized d()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/n;->e:Lcom/google/zxing/client/android/o;
if-eqz v0, :cond_c
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/n;->e:Lcom/google/zxing/client/android/o;
:cond_c
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-void
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method