.class  Lcom/fsck/k9/service/MailService$5;
.super Ljava/lang/Object;
.source "MailService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;
.method constructor <init>(Lcom/fsck/k9/service/MailService;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/service/MailService$5;->this$0:Lcom/fsck/k9/service/MailService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 8
const-string v6, "k9"
:try_start_2
sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v4, :cond_d
const-string v4, "k9"
const-string v5, "Refreshing pushers"
invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
iget-object v4, p0, Lcom/fsck/k9/service/MailService$5;->this$0:Lcom/fsck/k9/service/MailService;
invoke-virtual {v4}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;
move-result-object v4
invoke-static {v4}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v4
invoke-virtual {v4}, Lcom/fsck/k9/MessagingController;->getPushers()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_38
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/fsck/k9/mail/Pusher;
invoke-interface {v2}, Lcom/fsck/k9/mail/Pusher;->refresh()V
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f
goto :goto_1f
:catch_2f
move-exception v4
move-object v0, v4
const-string v4, "k9"
const-string v4, "Exception while refreshing pushers"
invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_38
return-void
.end method