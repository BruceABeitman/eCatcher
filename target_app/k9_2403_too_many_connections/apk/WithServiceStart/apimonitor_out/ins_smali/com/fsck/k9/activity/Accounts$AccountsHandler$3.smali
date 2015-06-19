.class  Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;
.super Ljava/lang/Object;
.source "Accounts.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$res:I
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;ILcom/fsck/k9/Account;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
iput p2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;->val$res:I
iput-object p3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 8
const/4 v6, 0x0
iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
iget v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;->val$res:I
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
invoke-virtual {v2}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v2
invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method