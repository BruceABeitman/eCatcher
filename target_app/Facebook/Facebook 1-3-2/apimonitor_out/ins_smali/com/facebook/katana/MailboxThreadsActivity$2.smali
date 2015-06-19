.class  Lcom/facebook/katana/MailboxThreadsActivity$2;
.super Ljava/lang/Object;
.source "MailboxThreadsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/MailboxThreadsActivity;
.method constructor <init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity$2;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity$2;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/MailboxThreadsActivity;->access$19(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$2;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$2;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-static {v2}, Lcom/facebook/katana/MailboxThreadsActivity;->access$13(Lcom/facebook/katana/MailboxThreadsActivity;)I
move-result v2
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsActivity$2;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-static {v3}, Lcom/facebook/katana/MailboxThreadsActivity;->access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/MailboxThreadsAdapter;->getMarkedThreads()[J
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method