.class  Lcom/fsck/k9/service/MailService$1;
.super Ljava/lang/Object;
.source "MailService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;
.method constructor <init>(Lcom/fsck/k9/service/MailService;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/service/MailService$1;->this$0:Lcom/fsck/k9/service/MailService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 16
const/4 v12, -0x1
const-string v14, "k9"
const/4 v10, -0x1
iget-object v11, p0, Lcom/fsck/k9/service/MailService$1;->this$0:Lcom/fsck/k9/service/MailService;
invoke-static {v11}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v11
invoke-virtual {v11}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v1
array-length v7, v1
const/4 v6, 0x0
:goto_10
if-ge v6, v7, :cond_29
aget-object v0, v1, v6
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I
move-result v11
if-eq v11, v12, :cond_26
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I
move-result v11
if-lt v11, v10, :cond_22
if-ne v10, v12, :cond_26
:cond_22
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I
move-result v10
:cond_26
add-int/lit8 v6, v6, 0x1
goto :goto_10
:cond_29
if-ne v10, v12, :cond_57
sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v11, :cond_51
const-string v11, "k9"
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "No next check scheduled for package "
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
iget-object v12, p0, Lcom/fsck/k9/service/MailService$1;->this$0:Lcom/fsck/k9/service/MailService;
invoke-virtual {v12}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;
move-result-object v12
invoke-virtual {v12}, Landroid/app/Application;->getPackageName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_51
iget-object v11, p0, Lcom/fsck/k9/service/MailService$1;->this$0:Lcom/fsck/k9/service/MailService;
#calls: Lcom/fsck/k9/service/MailService;->cancel()V
invoke-static {v11}, Lcom/fsck/k9/service/MailService;->access$000(Lcom/fsck/k9/service/MailService;)V
:goto_56
return-void
:cond_57
const v11, 0xea60
mul-int/2addr v11, v10
int-to-long v2, v11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
add-long v8, v11, v2
:try_start_62
sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v11, :cond_97
const-string v11, "k9"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "Next check for package "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
iget-object v13, p0, Lcom/fsck/k9/service/MailService$1;->this$0:Lcom/fsck/k9/service/MailService;
invoke-virtual {v13}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;
move-result-object v13
invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, " scheduled for "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
new-instance v13, Ljava/util/Date;
invoke-direct {v13, v8, v9}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_97
.catch Ljava/lang/Exception; {:try_start_62 .. :try_end_97} :catch_b6
:cond_97
:goto_97
new-instance v5, Landroid/content/Intent;
invoke-direct {v5}, Landroid/content/Intent;-><init>()V
iget-object v11, p0, Lcom/fsck/k9/service/MailService$1;->this$0:Lcom/fsck/k9/service/MailService;
invoke-virtual {v11}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;
move-result-object v11
invoke-virtual {v11}, Landroid/app/Application;->getPackageName()Ljava/lang/String;
move-result-object v11
const-string v12, "com.fsck.k9.service.MailService"
invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v11, "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"
invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v11, p0, Lcom/fsck/k9/service/MailService$1;->this$0:Lcom/fsck/k9/service/MailService;
invoke-static {v11, v8, v9, v5}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V
goto :goto_56
:catch_b6
move-exception v11
move-object v4, v11
const-string v11, "k9"
const-string v11, "Exception while logging"
invoke-static {v14, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_97
.end method