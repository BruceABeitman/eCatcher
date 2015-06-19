.class final Lcom/mologiq/analytics/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field  a:Z
.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mologiq/analytics/g;->a:Z
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
iput-object v0, p0, Lcom/mologiq/analytics/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;
return-void
.end method
.method synthetic constructor <init>(Lcom/mologiq/analytics/g;)V
.registers 2
invoke-direct {p0}, Lcom/mologiq/analytics/g;-><init>()V
return-void
.end method
.method public a()Landroid/os/IBinder;
.registers 2
iget-boolean v0, p0, Lcom/mologiq/analytics/g;->a:Z
if-eqz v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mologiq/analytics/g;->a:Z
iget-object v0, p0, Lcom/mologiq/analytics/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/IBinder;
return-object v0
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/mologiq/analytics/g; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/mologiq/analytics/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
:goto_5
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/mologiq/analytics/g; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/mologiq/analytics/g; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/mologiq/analytics/g; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method