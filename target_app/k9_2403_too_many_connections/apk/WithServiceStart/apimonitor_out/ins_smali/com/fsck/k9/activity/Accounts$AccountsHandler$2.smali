.class  Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;
.super Ljava/lang/Object;
.source "Accounts.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$200(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$200(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->notifyDataSetChanged()V
:cond_15
return-void
.end method