.class  Lcom/twidroid/service/f$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/twidroid/service/f;
.method constructor <init>(Lcom/twidroid/service/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/service/f$1;->a:Lcom/twidroid/service/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/service/f$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "StreamingService"
const-string v1, "Service connected"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/service/f$1;->a:Lcom/twidroid/service/f;
check-cast p2, Lcom/twidroid/service/e;
invoke-virtual {p2}, Lcom/twidroid/service/e;->a()Lcom/twidroid/service/StreamingService;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/service/f;->a(Lcom/twidroid/service/f;Lcom/twidroid/service/StreamingService;)Lcom/twidroid/service/StreamingService;
const-string v1, " - Lcom/twidroid/service/f$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/service/f$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/service/f$1;->a:Lcom/twidroid/service/f;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/service/f;->a(Lcom/twidroid/service/f;Lcom/twidroid/service/StreamingService;)Lcom/twidroid/service/StreamingService;
const-string v1, " - Lcom/twidroid/service/f$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method