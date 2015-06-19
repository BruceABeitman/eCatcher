.class  Lcom/fsck/k9/activity/setup/AccountSetupNames$1;
.super Ljava/lang/Object;
.source "AccountSetupNames.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupNames;
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupNames;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupNames;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupNames;
#calls: Lcom/fsck/k9/activity/setup/AccountSetupNames;->validateFields()V
invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupNames;)V
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method