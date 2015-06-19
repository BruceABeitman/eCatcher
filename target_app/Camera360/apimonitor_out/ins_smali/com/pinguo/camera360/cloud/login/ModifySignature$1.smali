.class  Lcom/pinguo/camera360/cloud/login/ModifySignature$1;
.super Ljava/lang/Object;
.source "ModifySignature.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/ModifySignature;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->finish()V
return-void
.end method
.method public onRightBtnClick()V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
const-string/jumbo v2, "input_method"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
#getter for: Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSignatureET:Landroid/widget/EditText;
invoke-static {v1}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->access$0(Lcom/pinguo/camera360/cloud/login/ModifySignature;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_34
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
const v3, 0x7f08017e
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->getString(I)Ljava/lang/String;
move-result-object v2
#calls: Lcom/pinguo/camera360/cloud/login/ModifySignature;->showMessage(Ljava/lang/String;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->access$1(Lcom/pinguo/camera360/cloud/login/ModifySignature;Ljava/lang/String;)V
:goto_33
return-void
:cond_34
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
#getter for: Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSignatureET:Landroid/widget/EditText;
invoke-static {v2}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->access$0(Lcom/pinguo/camera360/cloud/login/ModifySignature;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
#calls: Lcom/pinguo/camera360/cloud/login/ModifySignature;->onModifySignature(Ljava/lang/String;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->access$2(Lcom/pinguo/camera360/cloud/login/ModifySignature;Ljava/lang/String;)V
goto :goto_33
.end method