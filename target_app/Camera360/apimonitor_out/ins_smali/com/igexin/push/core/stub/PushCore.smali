.class public Lcom/igexin/push/core/stub/PushCore;
.super Ljava/lang/Object;
.implements Lcom/igexin/sdk/IPushCore;
.field private a:Lcom/igexin/push/core/f;
.field private b:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
return-void
.end method
.method public onActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.registers 4
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_d
invoke-virtual {v0, p2}, Lcom/igexin/push/core/e/a;->a(Landroid/content/res/Configuration;)V
:cond_d
return-void
.end method
.method public onActivityCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_f
invoke-virtual {v0, p2}, Lcom/igexin/push/core/e/a;->a(Landroid/view/Menu;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onActivityDestroy(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_19
invoke-virtual {v0}, Lcom/igexin/push/core/e/a;->h()V
iget-object v1, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/igexin/push/core/e/b;->a()Lcom/igexin/push/core/e/b;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/e/b;->c(Lcom/igexin/push/core/e/a;)V
:cond_19
return-void
.end method
.method public onActivityKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
.registers 5
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_f
invoke-virtual {v0, p2, p3}, Lcom/igexin/push/core/e/a;->a(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onActivityNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_d
invoke-virtual {v0, p2}, Lcom/igexin/push/core/e/a;->a(Landroid/content/Intent;)V
:cond_d
return-void
.end method
.method public onActivityPause(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/igexin/push/core/e/a;->f()V
:cond_d
return-void
.end method
.method public onActivityRestart(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/igexin/push/core/e/a;->d()V
:cond_d
return-void
.end method
.method public onActivityResume(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/igexin/push/core/e/a;->e()V
:cond_d
return-void
.end method
.method public onActivityStart(Landroid/app/Activity;Landroid/content/Intent;)V
.registers 6
if-eqz p1, :cond_2f
if-eqz p2, :cond_2f
const-string/jumbo v0, "activityid"
invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2f
const-string/jumbo v0, "activityid"
const-wide/16 v1, 0x0
invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-static {}, Lcom/igexin/push/core/e/b;->a()Lcom/igexin/push/core/e/b;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/e/b;->a(Ljava/lang/Long;)Lcom/igexin/push/core/e/a;
move-result-object v0
if-eqz v0, :cond_30
invoke-virtual {v0, p1}, Lcom/igexin/push/core/e/a;->a(Landroid/app/Activity;)V
iget-object v1, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0}, Lcom/igexin/push/core/e/a;->c()V
:goto_2f
:cond_2f
return-void
:cond_30
invoke-virtual {p1}, Landroid/app/Activity;->finish()V
goto :goto_2f
.end method
.method public onActivityStop(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/e/a;
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/igexin/push/core/e/a;->g()V
:cond_d
return-void
.end method
.method public onServiceBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
invoke-static {}, Lcom/igexin/push/core/o;->a()Lcom/igexin/sdk/aidl/c;
move-result-object v0
return-object v0
.end method
.method public onServiceDestroy()V
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/f;
invoke-virtual {v0}, Lcom/igexin/push/core/f;->j()V
return-void
.end method
.method public onServiceStartCommand(Landroid/content/Intent;II)I
.registers 6
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/f;
if-eqz v0, :cond_14
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
sget v1, Lcom/igexin/push/core/a;->c:I
iput v1, v0, Landroid/os/Message;->what:I
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v1, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/f;
invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/os/Message;)Z
:cond_14
const/4 v0, 0x1
return v0
.end method
.method public start(Landroid/content/Context;)Z
.registers 3
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
iput-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/f;
iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/f;
invoke-virtual {v0, p1}, Lcom/igexin/push/core/f;->a(Landroid/content/Context;)Z
const/4 v0, 0x1
return v0
.end method