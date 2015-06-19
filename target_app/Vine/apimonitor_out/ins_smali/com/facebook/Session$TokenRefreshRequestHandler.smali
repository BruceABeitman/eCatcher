.class  Lcom/facebook/Session$TokenRefreshRequestHandler;
.super Landroid/os/Handler;
.source "Session.java"
.field private refreshRequestWeakReference:Ljava/lang/ref/WeakReference;
.field private sessionWeakReference:Ljava/lang/ref/WeakReference;
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V
.registers 4
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->sessionWeakReference:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->refreshRequestWeakReference:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "access_token"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->sessionWeakReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/Session;
if-eqz v1, :cond_1d
if-eqz v2, :cond_1d
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/facebook/Session;->extendTokenCompleted(Landroid/os/Bundle;)V
:cond_1d
iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->refreshRequestWeakReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Session$TokenRefreshRequest;
if-eqz v0, :cond_31
invoke-static {}, Lcom/facebook/Session;->access$600()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
#calls: Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V
invoke-static {v0}, Lcom/facebook/Session$TokenRefreshRequest;->access$800(Lcom/facebook/Session$TokenRefreshRequest;)V
:cond_31
return-void
.end method