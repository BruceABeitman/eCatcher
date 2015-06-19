.class public Lcom/igexin/sdk/PushActivity;
.super Landroid/app/Activity;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0, p1}, Lcom/igexin/sdk/IPushCore;->onActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
:cond_18
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/igexin/sdk/PushActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/igexin/sdk/PushActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/igexin/sdk/PushActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_17
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0, p1}, Lcom/igexin/sdk/IPushCore;->onActivityCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z
move-result v0
:goto_16
move v2, v0
const-string v1, " - Lcom/igexin/sdk/PushActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_17
const/4 v0, 0x1
goto :goto_16
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0}, Lcom/igexin/sdk/IPushCore;->onActivityDestroy(Landroid/app/Activity;)V
:cond_18
const-string v1, " - Lcom/igexin/sdk/PushActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_1a
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0, p1, p2}, Lcom/igexin/sdk/IPushCore;->onActivityKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_19
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V
invoke-virtual {p0, p1}, Lcom/igexin/sdk/PushActivity;->setIntent(Landroid/content/Intent;)V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_1b
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0, p1}, Lcom/igexin/sdk/IPushCore;->onActivityNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
:cond_1b
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0}, Lcom/igexin/sdk/IPushCore;->onActivityPause(Landroid/app/Activity;)V
:cond_18
const-string v1, " - Lcom/igexin/sdk/PushActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onRestart()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushActivity; onRestart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onRestart()V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0}, Lcom/igexin/sdk/IPushCore;->onActivityRestart(Landroid/app/Activity;)V
:cond_18
const-string v1, " - Lcom/igexin/sdk/PushActivity; onRestart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0}, Lcom/igexin/sdk/IPushCore;->onActivityResume(Landroid/app/Activity;)V
:cond_18
const-string v1, " - Lcom/igexin/sdk/PushActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_1c
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-virtual {p0}, Lcom/igexin/sdk/PushActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-interface {v0, p0, v1}, Lcom/igexin/sdk/IPushCore;->onActivityStart(Landroid/app/Activity;Landroid/content/Intent;)V
:cond_1c
const-string v1, " - Lcom/igexin/sdk/PushActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
invoke-interface {v0, p0}, Lcom/igexin/sdk/IPushCore;->onActivityStop(Landroid/app/Activity;)V
:cond_18
const-string v1, " - Lcom/igexin/sdk/PushActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method