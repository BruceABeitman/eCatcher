.class  Lcom/facebook/katana/MailboxThreadsActivity$3;
.super Ljava/lang/Object;
.source "MailboxThreadsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/MailboxThreadsActivity;
.method constructor <init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-static {v2}, Lcom/facebook/katana/MailboxThreadsActivity;->access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/MailboxThreadsAdapter;->getMarkedThreads()[J
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v2}, Lcom/facebook/katana/MailboxThreadsActivity;->access$19(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
iget-object v4, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-static {v4}, Lcom/facebook/katana/MailboxThreadsActivity;->access$13(Lcom/facebook/katana/MailboxThreadsActivity;)I
move-result v4
invoke-virtual {v2, v3, v1, v4}, Lcom/facebook/katana/binding/AppSession;->mailboxDeleteThread(Landroid/content/Context;[JI)Ljava/lang/String;
move-result-object v0
array-length v2, v1
if-ne v2, v5, :cond_2b
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#setter for: Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadReqId:Ljava/lang/String;
invoke-static {v2, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->access$17(Lcom/facebook/katana/MailboxThreadsActivity;Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-virtual {v2, v5}, Lcom/facebook/katana/MailboxThreadsActivity;->showDialog(I)V
:goto_2a
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2b
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#setter for: Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadsReqId:Ljava/lang/String;
invoke-static {v2, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->access$18(Lcom/facebook/katana/MailboxThreadsActivity;Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$3;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
const/4 v3, 0x2
invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->showDialog(I)V
goto :goto_2a
.end method