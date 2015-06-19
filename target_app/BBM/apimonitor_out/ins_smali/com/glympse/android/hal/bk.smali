.class  Lcom/glympse/android/hal/bk;
.super Ljava/lang/Object;
.source "ServiceWrapper.java"
.implements Lcom/glympse/android/hal/GServiceWrapper;
.field private e:Landroid/content/Context;
.field private es:Lcom/glympse/android/hal/e;
.field private et:Lcom/glympse/android/hal/ConnectivityListener;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private T()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/hal/bk;->e:Landroid/content/Context;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/glympse/android/hal/bk;->e:Landroid/content/Context;
const-class v3, Lcom/glympse/android/hal/GlympseService;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method private U()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/hal/bk;->e:Landroid/content/Context;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/glympse/android/hal/bk;->e:Landroid/content/Context;
const-class v3, Lcom/glympse/android/hal/GlympseService;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
return-void
.end method
.method public setActive(Z)V
.registers 4
if-eqz p1, :cond_b
const/4 v0, 0x1
const-string v1, "ServiceWrapper.setActive() - calling local startService()"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/hal/bk;->T()V
:cond_b
return-void
.end method
.method public start(Lcom/glympse/android/api/GGlympse;)V
.registers 4
check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/bk;->e:Landroid/content/Context;
sput-object p1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v0, 0x1
const-string v1, "ServiceWrapper.start() - calling local startService()"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/hal/bk;->T()V
invoke-static {}, Lcom/glympse/android/hal/GlympseService;->initializeNotifications()V
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->isAccountSharingEnabled()Z
move-result v0
if-eqz v0, :cond_2c
new-instance v0, Lcom/glympse/android/hal/e;
invoke-direct {v0}, Lcom/glympse/android/hal/e;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/bk;->es:Lcom/glympse/android/hal/e;
iget-object v0, p0, Lcom/glympse/android/hal/bk;->es:Lcom/glympse/android/hal/e;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/e;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_2c
new-instance v0, Lcom/glympse/android/hal/ConnectivityListener;
invoke-direct {v0}, Lcom/glympse/android/hal/ConnectivityListener;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/bk;->et:Lcom/glympse/android/hal/ConnectivityListener;
iget-object v0, p0, Lcom/glympse/android/hal/bk;->et:Lcom/glympse/android/hal/ConnectivityListener;
iget-object v1, p0, Lcom/glympse/android/hal/bk;->e:Landroid/content/Context;
invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/ConnectivityListener;->start(Landroid/content/Context;Lcom/glympse/android/lib/GGlympsePrivate;)V
invoke-static {}, Lcom/glympse/android/hal/Platform;->getPushType()Ljava/lang/String;
move-result-object v0
const-string v1, "google"
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4a
invoke-static {}, Lcom/glympse/android/hal/GCMReceiver;->register()V
:goto_49
return-void
:try_start_4a
:cond_4a
new-instance v0, Lcom/glympse/android/hal/ADMWrapper;
invoke-direct {v0}, Lcom/glympse/android/hal/ADMWrapper;-><init>()V
iget-object v1, p0, Lcom/glympse/android/hal/bk;->e:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/ADMWrapper;->register(Landroid/content/Context;)V
:try_end_54
.catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_54} :catch_55
goto :goto_49
:catch_55
move-exception v0
goto :goto_49
.end method
.method public stop()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/bk;->et:Lcom/glympse/android/hal/ConnectivityListener;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/hal/bk;->et:Lcom/glympse/android/hal/ConnectivityListener;
invoke-virtual {v0}, Lcom/glympse/android/hal/ConnectivityListener;->stop()V
iput-object v1, p0, Lcom/glympse/android/hal/bk;->et:Lcom/glympse/android/hal/ConnectivityListener;
:cond_c
iget-object v0, p0, Lcom/glympse/android/hal/bk;->es:Lcom/glympse/android/hal/e;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/glympse/android/hal/bk;->es:Lcom/glympse/android/hal/e;
invoke-virtual {v0}, Lcom/glympse/android/hal/e;->stop()V
iput-object v1, p0, Lcom/glympse/android/hal/bk;->es:Lcom/glympse/android/hal/e;
:cond_17
sput-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v0, 0x1
const-string v1, "ServiceWrapper.stopService() - calling local stopService()"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/hal/bk;->U()V
return-void
.end method