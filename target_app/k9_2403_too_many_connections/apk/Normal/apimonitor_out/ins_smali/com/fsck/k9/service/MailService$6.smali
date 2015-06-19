.class  Lcom/fsck/k9/service/MailService$6;
.super Ljava/lang/Object;
.source "MailService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;
.method constructor <init>(Lcom/fsck/k9/service/MailService;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/service/MailService$6;->this$0:Lcom/fsck/k9/service/MailService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 14
const/4 v10, -0x1
const-string v12, "k9"
const/4 v3, -0x1
iget-object v8, p0, Lcom/fsck/k9/service/MailService$6;->this$0:Lcom/fsck/k9/service/MailService;
invoke-virtual {v8}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;
move-result-object v8
invoke-static {v8}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v8
invoke-virtual {v8}, Lcom/fsck/k9/MessagingController;->getPushers()Ljava/util/Collection;
move-result-object v7
invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_16
:goto_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_2e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/fsck/k9/mail/Pusher;
invoke-interface {v6}, Lcom/fsck/k9/mail/Pusher;->getRefreshInterval()I
move-result v2
if-eq v2, v10, :cond_16
if-lt v2, v3, :cond_2c
if-ne v3, v10, :cond_16
:cond_2c
move v3, v2
goto :goto_16
:cond_2e
sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v8, :cond_4a
const-string v8, "k9"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Pusher refresh interval = "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_4a
if-eq v3, v10, :cond_92
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
int-to-long v10, v3
add-long v4, v8, v10
sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v8, :cond_74
const-string v8, "k9"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Next pusher refresh scheduled for "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
new-instance v9, Ljava/util/Date;
invoke-direct {v9, v4, v5}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_74
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v8, p0, Lcom/fsck/k9/service/MailService$6;->this$0:Lcom/fsck/k9/service/MailService;
invoke-virtual {v8}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;
move-result-object v8
invoke-virtual {v8}, Landroid/app/Application;->getPackageName()Ljava/lang/String;
move-result-object v8
const-string v9, "com.fsck.k9.service.MailService"
invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v8, "com.fsck.k9.intent.action.MAIL_SERVICE_REFRESH_PUSHERS"
invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v8, p0, Lcom/fsck/k9/service/MailService$6;->this$0:Lcom/fsck/k9/service/MailService;
invoke-static {v8, v4, v5, v0}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V
:cond_92
return-void
.end method