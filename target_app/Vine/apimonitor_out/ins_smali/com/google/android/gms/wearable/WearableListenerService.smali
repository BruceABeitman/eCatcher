.class public abstract Lcom/google/android/gms/wearable/WearableListenerService;
.super Landroid/app/Service;
.implements Lcom/google/android/gms/wearable/DataApi$DataListener;
.implements Lcom/google/android/gms/wearable/MessageApi$MessageListener;
.implements Lcom/google/android/gms/wearable/NodeApi$NodeListener;
.field public static final BIND_LISTENER_INTENT_ACTION:Ljava/lang/String; = "com.google.android.gms.wearable.BIND_LISTENER"
.field private Gz:Landroid/os/IBinder;
.field private volatile aln:I
.field private alo:Landroid/os/Handler;
.field private alp:Ljava/lang/Object;
.field private alq:Z
.field private xN:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->aln:I
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alp:Ljava/lang/Object;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->xN:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/wearable/WearableListenerService;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->ni()V
return-void
.end method
.method static synthetic c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alp:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/wearable/WearableListenerService;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alq:Z
return v0
.end method
.method static synthetic e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alo:Landroid/os/Handler;
return-object v0
.end method
.method private ed(I)Z
.registers 7
const/4 v1, 0x0
const-string v2, "com.google.android.gms"
invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_1a
move v0, v1
:goto_e
array-length v4, v3
if-ge v0, v4, :cond_1a
aget-object v4, v3, v0
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1b
const/4 v1, 0x1
:cond_1a
return v1
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_e
.end method
.method private ni()V
.registers 4
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v0
iget v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->aln:I
if-ne v0, v1, :cond_9
:goto_8
return-void
:cond_9
invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const-string v2, "com.google.android.gms"
invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1e
invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/WearableListenerService;->ed(I)Z
move-result v1
if-eqz v1, :cond_1e
iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->aln:I
goto :goto_8
:cond_1e
new-instance v0, Ljava/lang/SecurityException;
const-string v1, "Caller is not GooglePlayServices"
invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 4
const-string v0, "com.google.android.gms.wearable.BIND_LISTENER"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->Gz:Landroid/os/IBinder;
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onCreate()V
.registers 4
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string v0, "WearableLS"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_28
const-string v0, "WearableLS"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onCreate: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_28
invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->xN:Ljava/lang/String;
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "WearableListenerService"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v1, Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alo:Landroid/os/Handler;
new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$a;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/WearableListenerService$a;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/WearableListenerService$1;)V
iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->Gz:Landroid/os/IBinder;
return-void
.end method
.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
.registers 2
return-void
.end method
.method public onDestroy()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alp:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x1
:try_start_4
iput-boolean v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alq:Z
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alo:Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
monitor-exit v1
:try_end_10
.catchall {:try_start_4 .. :try_end_10} :catchall_14
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
return-void
:catchall_14
move-exception v0
:try_start_15
monitor-exit v1
:try_end_16
.catchall {:try_start_15 .. :try_end_16} :catchall_14
throw v0
.end method
.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
.registers 2
return-void
.end method
.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
.registers 2
return-void
.end method
.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
.registers 2
return-void
.end method