.class public Lcom/igexin/push/core/e;
.super Landroid/os/Handler;
.field private static a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/e;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->c:I
if-ne v0, v1, :cond_92
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/Intent;
if-eqz v0, :cond_2b
const-string/jumbo v1, "action"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2b
const-string/jumbo v1, "action"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2c
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->a(Landroid/content/Intent;)V
:cond_2b
:goto_2b
return-void
:cond_2c
const-string/jumbo v2, "com.igexin.action.initialize.slave"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->b(Landroid/content/Intent;)V
goto :goto_2b
:cond_3d
const-string/jumbo v2, "com.igexin.sdk.action.refreshls"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_52
sget-boolean v1, Lcom/igexin/push/a/j;->r:Z
if-eqz v1, :cond_2b
invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/b/c;->b(Landroid/content/Intent;)V
goto :goto_2b
:cond_52
const-string/jumbo v2, "com.igexin.sdk.action.pushmanager"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6a
const-string/jumbo v1, "bundle"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->a(Landroid/os/Bundle;)V
goto :goto_2b
:cond_6a
const-string/jumbo v2, "android.intent.action.USER_PRESENT"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_81
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sput-wide v0, Lcom/igexin/push/core/g;->M:J
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->x()V
goto :goto_2b
:cond_81
const-string/jumbo v2, "com.igexin.sdk.action.extdownloadsuccess"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2b
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->d(Landroid/content/Intent;)V
goto :goto_2b
:cond_92
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->d:I
if-ne v0, v1, :cond_a4
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/Intent;
invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/b/c;->a(Landroid/content/Intent;)V
goto :goto_2b
:cond_a4
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->e:I
if-ne v0, v1, :cond_b7
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/Intent;
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->c(Landroid/content/Intent;)V
goto/16 :goto_2b
:cond_b7
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->f:I
if-ne v0, v1, :cond_ca
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/Intent;
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->c(Landroid/content/Intent;)V
goto/16 :goto_2b
:cond_ca
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->g:I
if-eq v0, v1, :cond_2b
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->h:I
if-ne v0, v1, :cond_f8
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/os/Bundle;
const-string/jumbo v1, "taskid"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "messageid"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "actionid"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v3
invoke-virtual {v3, v1, v2, v0}, Lcom/igexin/push/core/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
goto/16 :goto_2b
:cond_f8
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->i:I
if-ne v0, v1, :cond_10b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/igexin/push/core/bean/f;
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/f;)V
goto/16 :goto_2b
:cond_10b
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/igexin/push/core/a;->j:I
if-ne v0, v1, :cond_2b
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->s()V
goto/16 :goto_2b
.end method