.class  Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;
.super Ljava/lang/Object;
.source "Accounts.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.field final synthetic val$progress:I
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;I)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
iput p2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;->val$progress:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x2
iget v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;->val$progress:I
invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V
return-void
.end method