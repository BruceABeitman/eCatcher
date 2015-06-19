.class final Lcom/facebook/b/h;
.super Landroid/os/Handler;
.source "Facebook.java"
.field final synthetic a:Lcom/facebook/b/g;
.method constructor <init>(Lcom/facebook/b/g;)V
.registers 2
iput-object p1, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 8
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v1, "access_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v2, "expires_in"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/16 v4, 0x3e8
mul-long/2addr v2, v4
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
const-string v4, "expires_in"
invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
if-eqz v1, :cond_4d
iget-object v0, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v0, v0, Lcom/facebook/b/g;->e:Lcom/facebook/b/b;
invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v0, v0, Lcom/facebook/b/g;->e:Lcom/facebook/b/b;
invoke-virtual {v0, v2, v3}, Lcom/facebook/b/b;->a(J)V
iget-object v0, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v0, v0, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v0, v0, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;
invoke-interface {v0}, Lcom/facebook/b/f;->a()V
:goto_43
:cond_43
iget-object v0, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v0, v0, Lcom/facebook/b/g;->c:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
return-void
:cond_4d
iget-object v0, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v0, v0, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;
if-eqz v0, :cond_43
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v1, "error"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string v2, "error_code"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7e
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string v2, "error_code"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iget-object v2, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v2, v2, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;
new-instance v2, Lcom/facebook/b/i;
const/4 v3, 0x0
invoke-direct {v2, v0, v3, v1}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
goto :goto_43
:cond_7e
iget-object v1, p0, Lcom/facebook/b/h;->a:Lcom/facebook/b/g;
iget-object v1, v1, Lcom/facebook/b/g;->b:Lcom/facebook/b/f;
new-instance v1, Ljava/lang/Error;
if-eqz v0, :cond_8a
:goto_86
invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
goto :goto_43
:cond_8a
const-string v0, "Unknown service error"
goto :goto_86
.end method