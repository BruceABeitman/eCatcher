.class  Lcom/fsck/k9/activity/Accounts$AccountsHandler$1;
.super Ljava/lang/Object;
.source "Accounts.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$1;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$1;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
#calls: Lcom/fsck/k9/activity/Accounts$AccountsHandler;->setViewTitle()V
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->access$100(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
return-void
.end method