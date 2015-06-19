.class  Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;
.super Lcom/facebook/katana/UserTask;
.source "HelpfulHintsActivity.java"
.field private final mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private final mShowUngroupedContacts:Z
.field private final mSyncFriends:Z
.field private final mUsername:Ljava/lang/String;
.field final synthetic this$0:Lcom/facebook/katana/HelpfulHintsActivity;
.method public constructor <init>(Lcom/facebook/katana/HelpfulHintsActivity;Lcom/facebook/katana/binding/AppSession;ZZ)V
.registers 6
iput-object p1, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->this$0:Lcom/facebook/katana/HelpfulHintsActivity;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
invoke-direct {p0, v0}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V
iput-object p2, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {p2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mUsername:Ljava/lang/String;
iput-boolean p3, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mSyncFriends:Z
iput-boolean p4, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mShowUngroupedContacts:Z
return-void
.end method
.method protected doInBackground()V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->this$0:Lcom/facebook/katana/HelpfulHintsActivity;
iget-object v1, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mUsername:Ljava/lang/String;
iget-boolean v2, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mSyncFriends:Z
iget-boolean v3, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mShowUngroupedContacts:Z
invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->storeSessionInfo(Landroid/content/Context;Ljava/lang/String;ZZ)V
iget-object v0, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->this$0:Lcom/facebook/katana/HelpfulHintsActivity;
#getter for: Lcom/facebook/katana/HelpfulHintsActivity;->mAddAccountMode:Z
invoke-static {v0}, Lcom/facebook/katana/HelpfulHintsActivity;->access$9(Lcom/facebook/katana/HelpfulHintsActivity;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->this$0:Lcom/facebook/katana/HelpfulHintsActivity;
invoke-virtual {v0}, Lcom/facebook/katana/HelpfulHintsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mUsername:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->addAccountComplete(Landroid/content/Intent;Ljava/lang/String;)V
:cond_1e
return-void
.end method
.method protected onPostExecute()V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->this$0:Lcom/facebook/katana/HelpfulHintsActivity;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->syncFriends(Landroid/content/Context;)Ljava/lang/String;
return-void
.end method