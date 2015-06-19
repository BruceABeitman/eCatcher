.class public Lcom/facebook/internal/SessionTracker;
.super Ljava/lang/Object;
.source "SessionTracker.java"
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
.field private final callback:Lcom/facebook/Session$StatusCallback;
.field private isTracking:Z
.field private final receiver:Landroid/content/BroadcastReceiver;
.field private session:Lcom/facebook/Session;
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z
new-instance v0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;
invoke-direct {v0, p0, p2}, Lcom/facebook/internal/SessionTracker$CallbackWrapper;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/Session$StatusCallback;)V
iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
iput-object p3, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
new-instance v0, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/internal/SessionTracker$1;)V
iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;
invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
if-eqz p4, :cond_22
invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->startTracking()V
:cond_22
return-void
.end method
.method static synthetic access$100(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session$StatusCallback;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
return-object v0
.end method
.method static synthetic access$200(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
return-object v0
.end method
.method private addBroadcastReceiver()V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public getOpenSession()Lcom/facebook/Session;
.registers 3
invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z
move-result v1
if-eqz v1, :cond_d
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public getSession()Lcom/facebook/Session;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
if-nez v0, :cond_9
invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
goto :goto_8
.end method
.method public isTracking()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z
return v0
.end method
.method public isTrackingActiveSession()Z
.registers 2
iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public setSession(Lcom/facebook/Session;)V
.registers 5
if-nez p1, :cond_23
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
if-eqz v1, :cond_22
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-virtual {v1, v2}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V
invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;
move-result-object v1
if-eqz v1, :cond_22
invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;
move-result-object v1
iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V
:goto_22
:cond_22
return-void
:cond_23
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
if-nez v1, :cond_43
invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_32
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V
:cond_32
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:goto_39
iput-object p1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V
goto :goto_22
:cond_43
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-virtual {v1, v2}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V
goto :goto_39
.end method
.method public startTracking()V
.registers 3
iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V
:cond_c
invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;
move-result-object v0
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V
:cond_1b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z
goto :goto_4
.end method
.method public stopTracking()V
.registers 4
iget-boolean v1, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z
if-nez v1, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_10
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V
:cond_10
iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z
goto :goto_4
.end method