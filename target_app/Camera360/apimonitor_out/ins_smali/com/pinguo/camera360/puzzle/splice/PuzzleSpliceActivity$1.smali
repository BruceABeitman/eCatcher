.class  Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;
.super Landroid/os/Handler;
.source "PuzzleSpliceActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const/4 v2, 0x0
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_48
:goto_6
:cond_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_6
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$0(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->isShown()Z
move-result v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$0(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_6
:pswitch_26
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f0802a1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_6
:pswitch_37
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f0802a2
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_6
:pswitch_data_48
.packed-switch 0x64
:pswitch_7
:pswitch_26
:pswitch_37
.end packed-switch
.end method