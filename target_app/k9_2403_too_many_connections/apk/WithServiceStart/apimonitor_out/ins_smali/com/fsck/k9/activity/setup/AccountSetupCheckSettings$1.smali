.class  Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;
.super Ljava/lang/Thread;
.source "AccountSetupCheckSettings.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 14
const/4 v10, 0x0
const/4 v9, 0x1
const-string v12, "k9"
const-string v11, "Error while testing settings"
const/4 v2, 0x0
const/16 v5, 0xa
invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
:try_start_c
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-eqz v5, :cond_15
:cond_14
:goto_14
return-void
:cond_15
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-eqz v5, :cond_41
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V
:try_end_22
.catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_c .. :try_end_22} :catch_23
.catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_c .. :try_end_22} :catch_aa
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_22} :catch_ff
goto :goto_14
:catch_23
move-exception v5
move-object v0, v5
const-string v5, "k9"
const-string v5, "Error while testing settings"
invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v6, 0x7f08012c
new-array v7, v9, [Ljava/lang/Object;
invoke-virtual {v0}, Lcom/fsck/k9/mail/AuthenticationFailedException;->getMessage()Ljava/lang/String;
move-result-object v8
if-nez v8, :cond_12b
const-string v8, ""
:goto_3b
aput-object v8, v7, v10
#calls: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V
invoke-static {v5, v6, v7}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
goto :goto_14
:try_start_41
:cond_41
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckIncoming:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$200(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-eqz v5, :cond_93
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v6, 0x7f0800c8
#calls: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V
invoke-static {v5, v6}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I)V
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-virtual {v6}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;
move-result-object v6
invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v2
invoke-virtual {v2}, Lcom/fsck/k9/mail/Store;->checkSettings()V
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;
move-result-object v5
invoke-static {v5}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v6}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;
move-result-object v6
const/4 v7, 0x1
const/4 v8, 0x0
invoke-virtual {v5, v6, v7, v8}, Lcom/fsck/k9/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/MessagingListener;)V
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;
move-result-object v5
invoke-static {v5}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v6}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;
move-result-object v6
const-string v7, "INBOX"
const/4 v8, 0x0
invoke-virtual {v5, v6, v7, v8}, Lcom/fsck/k9/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
:cond_93
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-nez v5, :cond_14
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-eqz v5, :cond_c1
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V
:try_end_a8
.catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_41 .. :try_end_a8} :catch_23
.catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_41 .. :try_end_a8} :catch_aa
.catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_a8} :catch_ff
goto/16 :goto_14
:catch_aa
move-exception v5
move-object v1, v5
const-string v5, "k9"
const-string v5, "Error while testing settings"
invoke-static {v12, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v6, 0x7f08012d
new-array v7, v9, [Ljava/lang/Object;
aput-object v1, v7, v10
#calls: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->acceptKeyDialog(I[Ljava/lang/Object;)V
invoke-static {v5, v6, v7}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$700(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
goto/16 :goto_14
:try_start_c1
:cond_c1
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckOutgoing:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-eqz v5, :cond_e8
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v6, 0x7f0800c9
#calls: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V
invoke-static {v5, v6}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I)V
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/fsck/k9/mail/Transport;->getInstance(Ljava/lang/String;)Lcom/fsck/k9/mail/Transport;
move-result-object v4
invoke-virtual {v4}, Lcom/fsck/k9/mail/Transport;->close()V
invoke-virtual {v4}, Lcom/fsck/k9/mail/Transport;->open()V
invoke-virtual {v4}, Lcom/fsck/k9/mail/Transport;->close()V
:cond_e8
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-nez v5, :cond_14
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-eqz v5, :cond_11e
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V
:try_end_fd
.catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_c1 .. :try_end_fd} :catch_23
.catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_c1 .. :try_end_fd} :catch_aa
.catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_fd} :catch_ff
goto/16 :goto_14
:catch_ff
move-exception v5
move-object v3, v5
const-string v5, "k9"
const-string v5, "Error while testing settings"
invoke-static {v12, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v6, 0x7f08012e
new-array v7, v9, [Ljava/lang/Object;
invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v8
if-nez v8, :cond_131
const-string v8, ""
:goto_117
aput-object v8, v7, v10
#calls: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V
invoke-static {v5, v6, v7}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
goto/16 :goto_14
:cond_11e
:try_start_11e
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const/4 v6, -0x1
invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setResult(I)V
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V
:try_end_129
.catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_11e .. :try_end_129} :catch_23
.catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_11e .. :try_end_129} :catch_aa
.catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_129} :catch_ff
goto/16 :goto_14
:cond_12b
invoke-virtual {v0}, Lcom/fsck/k9/mail/AuthenticationFailedException;->getMessage()Ljava/lang/String;
move-result-object v8
goto/16 :goto_3b
:cond_131
invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v8
goto :goto_117
.end method