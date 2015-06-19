.class  Lcom/fsck/k9/activity/MessageCompose$3;
.super Ljava/lang/Object;
.source "MessageCompose.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Lcom/fsck/k9/activity/MessageCompose;
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
const/4 v1, 0x1
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Lcom/fsck/k9/activity/MessageCompose;
#setter for: Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z
invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$102(Lcom/fsck/k9/activity/MessageCompose;Z)Z
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Lcom/fsck/k9/activity/MessageCompose;
#setter for: Lcom/fsck/k9/activity/MessageCompose;->mSignatureChanged:Z
invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$202(Lcom/fsck/k9/activity/MessageCompose;Z)Z
return-void
.end method