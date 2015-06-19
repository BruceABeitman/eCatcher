.class  Lcom/facebook/katana/MailboxMessagesActivity$5;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/MailboxMessagesActivity;
.method constructor <init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxMessagesActivity$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;
#calls: Lcom/facebook/katana/MailboxMessagesActivity;->handleReply()V
invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$20(Lcom/facebook/katana/MailboxMessagesActivity;)V
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;
const v2, 0x7f0b0064
invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;
const-string v2, "input_method"
invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method