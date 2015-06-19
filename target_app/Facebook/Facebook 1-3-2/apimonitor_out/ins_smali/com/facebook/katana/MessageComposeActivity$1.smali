.class  Lcom/facebook/katana/MessageComposeActivity$1;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/facebook/katana/MessageComposeActivity;
.field private final synthetic val$userName:Lcom/facebook/katana/MailAutoCompleteTextView;
.method constructor <init>(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/MailAutoCompleteTextView;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/MessageComposeActivity$1;->this$0:Lcom/facebook/katana/MessageComposeActivity;
iput-object p2, p0, Lcom/facebook/katana/MessageComposeActivity$1;->val$userName:Lcom/facebook/katana/MailAutoCompleteTextView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 15
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MessageComposeActivity$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$1;->this$0:Lcom/facebook/katana/MessageComposeActivity;
#getter for: Lcom/facebook/katana/MessageComposeActivity;->mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
invoke-static {v0}, Lcom/facebook/katana/MessageComposeActivity;->access$10(Lcom/facebook/katana/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/katana/DropdownFriendsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/database/Cursor;
const/4 v0, 0x1
invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const/4 v0, 0x2
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v0, 0x3
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v0, 0x4
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v0, 0x5
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
iget-object v8, p0, Lcom/facebook/katana/MessageComposeActivity$1;->this$0:Lcom/facebook/katana/MessageComposeActivity;
new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
#calls: Lcom/facebook/katana/MessageComposeActivity;->addRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
invoke-static {v8, v0}, Lcom/facebook/katana/MessageComposeActivity;->access$12(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/service/api/FacebookUser;)V
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$1;->val$userName:Lcom/facebook/katana/MailAutoCompleteTextView;
const/4 v8, 0x0
invoke-virtual {v0, v8}, Lcom/facebook/katana/MailAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/facebook/katana/MessageComposeActivity$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method