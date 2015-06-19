.class  Lcom/fsck/k9/activity/MessageCompose$1;
.super Landroid/os/Handler;
.source "MessageCompose.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
const/4 v3, 0x1
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_56
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
:goto_9
return-void
:pswitch_a
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
invoke-virtual {v0, v3}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V
goto :goto_9
:pswitch_10
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V
goto :goto_9
:pswitch_17
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
#calls: Lcom/fsck/k9/activity/MessageCompose;->updateTitle()V
invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$000(Lcom/fsck/k9/activity/MessageCompose;)V
goto :goto_9
:pswitch_1d
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
const v2, 0x7f08009d
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_9
:pswitch_30
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
const v2, 0x7f0800b4
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_9
:pswitch_43
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;
const v2, 0x7f0800b3
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_9
:pswitch_data_56
.packed-switch 0x1
:pswitch_a
:pswitch_10
:pswitch_17
:pswitch_1d
:pswitch_30
:pswitch_43
.end packed-switch
.end method