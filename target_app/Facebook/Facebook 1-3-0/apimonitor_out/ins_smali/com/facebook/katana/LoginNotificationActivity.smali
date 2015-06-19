.class public Lcom/facebook/katana/LoginNotificationActivity;
.super Landroid/app/Activity;
.source "LoginNotificationActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/facebook/katana/LoginNotificationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/facebook/katana/LoginNotificationActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v3
new-instance v2, Landroid/content/Intent;
invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
if-eqz v3, :cond_1e
const-class v0, Lcom/facebook/katana/PasswordDialogActivity;
:goto_14
invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-virtual {p0, v2}, Lcom/facebook/katana/LoginNotificationActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/LoginNotificationActivity;->finish()V
const-string v1, " - Lcom/facebook/katana/LoginNotificationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1e
const-class v0, Lcom/facebook/katana/LoginActivity;
goto :goto_14
.end method