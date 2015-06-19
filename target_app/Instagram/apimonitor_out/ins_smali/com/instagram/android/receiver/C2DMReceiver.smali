.class public Lcom/instagram/android/receiver/C2DMReceiver;
.super Lcom/instagram/common/q/b/a;
.source "C2DMReceiver.java"
.field private a:Landroid/os/Handler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/q/b/a;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
invoke-static {p1}, Lcom/instagram/common/q/b/f;->a(Landroid/content/Context;)Lcom/instagram/common/q/b/e;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/q/b/e;->h()Lcom/instagram/common/q/b/g;
move-result-object v0
invoke-static {p1, p2, v0}, Lcom/instagram/android/c2dm/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/common/q/b/g;)V
return-void
.end method
.method protected final a(Landroid/content/Intent;)V
.registers 4
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "data"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/receiver/C2DMReceiver;->a:Landroid/os/Handler;
invoke-virtual {v0, p1}, Lcom/instagram/android/c2dm/c;->a(Landroid/content/Intent;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/instagram/android/receiver/C2DMReceiver; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/instagram/common/q/b/a;->onCreate()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/receiver/C2DMReceiver;->a:Landroid/os/Handler;
const-string v1, " - Lcom/instagram/android/receiver/C2DMReceiver; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method