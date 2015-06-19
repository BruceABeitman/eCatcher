.class  Lcom/facebook/katana/MailboxMessagesActivity$1;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic this$0:Lcom/facebook/katana/MailboxMessagesActivity;
.method constructor <init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity$1;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 5
const/16 v0, 0x65
if-ne p2, v0, :cond_9
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$1;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;
#calls: Lcom/facebook/katana/MailboxMessagesActivity;->handleReply()V
invoke-static {v0}, Lcom/facebook/katana/MailboxMessagesActivity;->access$20(Lcom/facebook/katana/MailboxMessagesActivity;)V
:cond_9
const/4 v0, 0x0
return v0
.end method