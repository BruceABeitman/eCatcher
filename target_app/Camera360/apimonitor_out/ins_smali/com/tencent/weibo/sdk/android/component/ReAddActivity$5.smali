.class  Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;
.super Ljava/lang/Object;
.source "ReAddActivity.java"
.implements Landroid/text/TextWatcher;
.field private selectionEnd:I
.field private selectionStart:I
.field private temp:Ljava/lang/CharSequence;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 6
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$3(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I
move-result v1
iput v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->selectionStart:I
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$3(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I
move-result v1
iput v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->selectionEnd:I
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->temp:Ljava/lang/CharSequence;
invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
move-result v1
const/16 v2, 0x8c
if-le v1, v2, :cond_4d
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
const-string/jumbo v2, "\u6700\u591a\u53ef\u8f93\u5165140\u5b57\u7b26"
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
iget v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->selectionStart:I
add-int/lit8 v1, v1, -0x1
iget v2, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->selectionEnd:I
invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
iget v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->selectionStart:I
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$3(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$3(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V
:goto_4c
return-void
:cond_4d
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$4(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-interface {p1}, Landroid/text/Editable;->length()I
move-result v2
rsub-int v2, v2, 0x8c
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_4c
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;->temp:Ljava/lang/CharSequence;
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method