.class  Lco/vine/android/ConfirmationFlowVerificationFragment$1;
.super Ljava/lang/Object;
.source "ConfirmationFlowVerificationFragment.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;
.field final synthetic val$confirmationBox:Landroid/widget/EditText;
.method constructor <init>(Lco/vine/android/ConfirmationFlowVerificationFragment;Landroid/widget/EditText;)V
.registers 3
iput-object p1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$1;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;
iput-object p2, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$1;->val$confirmationBox:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$1;->val$confirmationBox:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$1;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;
const/4 v1, 0x1
#calls: Lco/vine/android/ConfirmationFlowVerificationFragment;->toggleDoneAction(Z)V
invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$100(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$1;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;
const/4 v1, 0x0
#calls: Lco/vine/android/ConfirmationFlowVerificationFragment;->toggleDoneAction(Z)V
invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$100(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V
goto :goto_12
.end method