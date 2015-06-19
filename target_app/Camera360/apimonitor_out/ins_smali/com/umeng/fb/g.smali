.class  Lcom/umeng/fb/g;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/fb/ConversationActivity;
.method constructor <init>(Lcom/umeng/fb/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/umeng/fb/g;->a:Lcom/umeng/fb/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/fb/g; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/fb/g;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
:cond_16
:goto_16
const-string v1, " - Lcom/umeng/fb/g; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_17
iget-object v1, p0, Lcom/umeng/fb/g;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v1, v1, Lcom/umeng/fb/ConversationActivity;->d:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->clear()V
iget-object v1, p0, Lcom/umeng/fb/g;->a:Lcom/umeng/fb/ConversationActivity;
invoke-static {v1}, Lcom/umeng/fb/ConversationActivity;->a(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/umeng/fb/model/Conversation;->addUserReply(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/fb/g;->a:Lcom/umeng/fb/ConversationActivity;
invoke-virtual {v0}, Lcom/umeng/fb/ConversationActivity;->a()V
iget-object v0, p0, Lcom/umeng/fb/g;->a:Lcom/umeng/fb/ConversationActivity;
const-string/jumbo v1, "input_method"
invoke-virtual {v0, v1}, Lcom/umeng/fb/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
if-eqz v0, :cond_16
iget-object v1, p0, Lcom/umeng/fb/g;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v1, v1, Lcom/umeng/fb/ConversationActivity;->d:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
goto :goto_16
.end method