.class  Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
.super Landroid/os/Handler;
.source "ChooseFolder.java"
.field private static final MSG_DATA_CHANGED:I = 0x3
.field private static final MSG_PROGRESS:I = 0x2
.field private static final MSG_SET_SELECTED_FOLDER:I = 0x4
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseFolder;
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->this$0:Lcom/fsck/k9/activity/ChooseFolder;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public dataChanged()V
.registers 2
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->sendEmptyMessage(I)Z
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1c
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->this$0:Lcom/fsck/k9/activity/ChooseFolder;
iget v1, p1, Landroid/os/Message;->arg1:I
if-eqz v1, :cond_11
const/4 v1, 0x1
:goto_d
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setProgressBarIndeterminateVisibility(Z)V
goto :goto_5
:cond_11
const/4 v1, 0x0
goto :goto_d
:pswitch_13
iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->this$0:Lcom/fsck/k9/activity/ChooseFolder;
iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->adapter:Landroid/widget/ArrayAdapter;
invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
goto :goto_5
nop
:pswitch_data_1c
.packed-switch 0x2
:pswitch_6
:pswitch_13
.end packed-switch
.end method
.method public progress(Z)V
.registers 4
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, 0x2
iput v1, v0, Landroid/os/Message;->what:I
if-eqz p1, :cond_11
const/4 v1, 0x1
:goto_b
iput v1, v0, Landroid/os/Message;->arg1:I
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->sendMessage(Landroid/os/Message;)Z
return-void
:cond_11
const/4 v1, 0x0
goto :goto_b
.end method
.method public setSelectedFolder(I)V
.registers 4
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, 0x4
iput v1, v0, Landroid/os/Message;->what:I
iput p1, v0, Landroid/os/Message;->arg1:I
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method