.class final Lcom/facebook/ag;
.super Landroid/os/Handler;
.source "SourceFile"
.field private a:Ljava/lang/ref/WeakReference;
.field private b:Ljava/lang/ref/WeakReference;
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/af;)V
.registers 4
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/facebook/ag;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/facebook/ag;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v1, "access_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/facebook/ag;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Session;
if-eqz v0, :cond_1d
if-eqz v1, :cond_1d
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Landroid/os/Bundle;)V
:cond_1d
iget-object v0, p0, Lcom/facebook/ag;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/af;
if-eqz v0, :cond_31
invoke-static {}, Lcom/facebook/Session;->m()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
invoke-static {v0}, Lcom/facebook/af;->a(Lcom/facebook/af;)V
:cond_31
return-void
.end method