.class  Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.field final synthetic val$args:[Ljava/lang/Object;
.field final synthetic val$msgResId:I
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;[Ljava/lang/Object;I)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->val$args:[Ljava/lang/Object;
iput p3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->val$msgResId:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 13
const/4 v11, 0x1
const/4 v10, 0x0
const-string v7, "\n"
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v5
if-eqz v5, :cond_d
:goto_c
return-void
:cond_d
invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->getLastCertChain()[Ljava/security/cert/X509Certificate;
move-result-object v0
const-string v3, "Unknown Error"
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->val$args:[Ljava/lang/Object;
aget-object v2, v5, v10
check-cast v2, Ljava/lang/Exception;
if-eqz v2, :cond_37
invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
move-result-object v5
if-eqz v5, :cond_c0
invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v5
if-eqz v5, :cond_b6
invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v3
:goto_37
:cond_37
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;
invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$900(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Landroid/widget/ProgressBar;
move-result-object v5
invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
new-instance v1, Ljava/lang/StringBuffer;
const/16 v5, 0x64
invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V
const/4 v4, 0x0
:goto_48
array-length v5, v0
if-ge v4, v5, :cond_c6
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Certificate chain["
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "]:\n"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Subject: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
aget-object v6, v0, v4
invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\n"
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Issuer: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
aget-object v6, v0, v4
invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\n"
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v4, v4, 0x1
goto :goto_48
:cond_b6
invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v3
goto/16 :goto_37
:cond_c0
invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
goto/16 :goto_37
:cond_c6
new-instance v5, Landroid/app/AlertDialog$Builder;
iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v7, 0x7f0801b5
invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
iget v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->val$msgResId:I
new-array v9, v11, [Ljava/lang/Object;
aput-object v3, v9, v10
invoke-virtual {v7, v8, v9}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v5
invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v7, 0x7f0801b6
invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;
move-result-object v6
new-instance v7, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;
invoke-direct {v7, p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;[Ljava/security/cert/X509Certificate;)V
invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
const v7, 0x7f0801b7
invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;
move-result-object v6
new-instance v7, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$1;
invoke-direct {v7, p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;)V
invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
goto/16 :goto_c
.end method