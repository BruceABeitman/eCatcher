.class  Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.super Landroid/os/Handler;
.source "Accounts.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method static synthetic access$100(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->setViewTitle()V
return-void
.end method
.method private setViewTitle()V
.registers 6
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
iget-object v1, v1, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;
iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
const v4, 0x7f08000a
invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I
invoke-static {v4}, Lcom/fsck/k9/activity/Accounts;->access$000(Lcom/fsck/k9/activity/Accounts;)I
move-result v4
invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/activity/ActivityListener;->formatHeader(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/Accounts;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
.registers 14
iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
new-instance v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;
move-object v1, p0
move-object v2, p1
move-wide v3, p2
move-wide v5, p4
invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;Lcom/fsck/k9/Account;JJ)V
invoke-virtual {v7, v0}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public dataChanged()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public progress(I)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;
invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;I)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public progress(Z)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;
invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;Z)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public refreshTitle()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$1;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$1;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public workingAccount(Lcom/fsck/k9/Account;I)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;
invoke-direct {v1, p0, p2, p1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;ILcom/fsck/k9/Account;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method