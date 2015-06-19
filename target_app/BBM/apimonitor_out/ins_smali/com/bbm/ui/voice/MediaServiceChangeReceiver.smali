.class public Lcom/bbm/ui/voice/MediaServiceChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaServiceChangeReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "com.bbm.endcall"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
invoke-static {p1}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/n/b;->a()V
:cond_13
:goto_13
return-void
:cond_14
const-string v0, "com.bbm.mutetoggle"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
invoke-static {p1}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v1
iget-object v0, v1, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;
invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_42
const/4 v0, 0x1
:goto_33
invoke-virtual {v1, v0}, Lcom/bbm/n/b;->a(Z)V
iget-object v0, v1, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;
invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
goto :goto_13
:cond_42
const/4 v0, 0x0
goto :goto_33
.end method