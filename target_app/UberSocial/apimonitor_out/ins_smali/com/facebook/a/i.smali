.class  Lcom/facebook/a/i;
.super Landroid/os/Handler;
.source "SourceFile"
.field  a:Ljava/lang/ref/WeakReference;
.field  b:Ljava/lang/ref/WeakReference;
.method constructor <init>(Lcom/facebook/a/e;Lcom/facebook/a/j;)V
.registers 4
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/facebook/a/i;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/facebook/a/i;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 9
iget-object v0, p0, Lcom/facebook/a/i;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/a/e;
iget-object v1, p0, Lcom/facebook/a/i;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/a/j;
if-eqz v0, :cond_14
if-nez v1, :cond_15
:cond_14
:goto_14
return-void
:cond_15
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string v3, "access_token"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "expires_in"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v3
const-wide/16 v5, 0x3e8
mul-long/2addr v3, v5
if-eqz v2, :cond_61
invoke-virtual {v0, v2}, Lcom/facebook/a/e;->b(Ljava/lang/String;)V
invoke-virtual {v0, v3, v4}, Lcom/facebook/a/e;->a(J)V
invoke-static {v0}, Lcom/facebook/a/e;->b(Lcom/facebook/a/e;)Lcom/facebook/aw;
move-result-object v0
if-eqz v0, :cond_41
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/ae;->a(Lcom/facebook/aw;Landroid/os/Bundle;)V
:cond_41
iget-object v0, v1, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
if-eqz v0, :cond_59
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
const-string v2, "expires_in"
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
iget-object v2, v1, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
invoke-interface {v2, v0}, Lcom/facebook/a/g;->a(Landroid/os/Bundle;)V
:goto_59
:cond_59
if-eqz v1, :cond_14
iget-object v0, v1, Lcom/facebook/a/j;->c:Landroid/content/Context;
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
goto :goto_14
:cond_61
iget-object v0, v1, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
if-eqz v0, :cond_59
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v2, "error"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string v3, "error_code"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_91
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string v3, "error_code"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
iget-object v3, v1, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
new-instance v4, Lcom/facebook/a/k;
const/4 v5, 0x0
invoke-direct {v4, v0, v5, v2}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
invoke-interface {v3, v4}, Lcom/facebook/a/g;->a(Lcom/facebook/a/k;)V
goto :goto_59
:cond_91
iget-object v2, v1, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
new-instance v3, Ljava/lang/Error;
if-eqz v0, :cond_9e
:goto_97
invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
invoke-interface {v2, v3}, Lcom/facebook/a/g;->a(Ljava/lang/Error;)V
goto :goto_59
:cond_9e
const-string v0, "Unknown service error"
goto :goto_97
.end method