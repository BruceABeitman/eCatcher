.class  Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$1;
.super Landroid/os/Handler;
.source "ZoomControlBarView.java"
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$1;->this$0:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1e
:cond_5
:goto_5
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
return-void
:pswitch_9
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$1;->this$0:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
#getter for: Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mIsAutoSave:Z
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->access$0(Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$1;->this$0:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-static {v0}, Lcom/pinguo/lib/util/ViewUtils;->fadeOutWithInvisiable(Landroid/view/View;)V
goto :goto_5
:pswitch_17
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$1;->this$0:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-static {v0}, Lcom/pinguo/lib/util/ViewUtils;->fadeIn(Landroid/view/View;)V
goto :goto_5
nop
:pswitch_data_1e
.packed-switch 0x1
:pswitch_9
:pswitch_17
.end packed-switch
.end method