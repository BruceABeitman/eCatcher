.class  Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;
.super Ljava/lang/Object;
.source "AccountSetupOutgoing.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
#calls: Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V
invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
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