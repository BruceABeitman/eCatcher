.class  Lcom/pinguo/camera360/guide/GuideViewFifth$1;
.super Landroid/os/Handler;
.source "GuideViewFifth.java"
.field final synthetic this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
.method constructor <init>(Lcom/pinguo/camera360/guide/GuideViewFifth;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 8
const-wide/16 v4, 0xc8
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
iget v2, p1, Landroid/os/Message;->what:I
packed-switch v2, :pswitch_data_7c
:cond_a
:goto_a
return-void
:pswitch_b
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$0(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v2
if-eqz v2, :cond_a
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
iget-object v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;
invoke-static {v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$0(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v3
#calls: Lcom/pinguo/camera360/guide/GuideViewFifth;->doAlphaAnimation(Landroid/view/View;)V
invoke-static {v2, v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$1(Lcom/pinguo/camera360/guide/GuideViewFifth;Landroid/view/View;)V
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v2, 0x2
iput v2, v0, Landroid/os/Message;->what:I
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$2(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/os/Handler;
move-result-object v2
invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_a
:pswitch_30
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$3(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v2
if-eqz v2, :cond_a
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
iget-object v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;
invoke-static {v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$3(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v3
#calls: Lcom/pinguo/camera360/guide/GuideViewFifth;->doAlphaAnimation(Landroid/view/View;)V
invoke-static {v2, v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$1(Lcom/pinguo/camera360/guide/GuideViewFifth;Landroid/view/View;)V
new-instance v1, Landroid/os/Message;
invoke-direct {v1}, Landroid/os/Message;-><init>()V
const/4 v2, 0x3
iput v2, v1, Landroid/os/Message;->what:I
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$2(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/os/Handler;
move-result-object v2
invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_a
:pswitch_55
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$4(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v2
if-eqz v2, :cond_a
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$5(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v2
if-eqz v2, :cond_a
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
iget-object v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;
invoke-static {v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$4(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v3
#calls: Lcom/pinguo/camera360/guide/GuideViewFifth;->doAlphaAnimation(Landroid/view/View;)V
invoke-static {v2, v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$1(Lcom/pinguo/camera360/guide/GuideViewFifth;Landroid/view/View;)V
iget-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
iget-object v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth$1;->this$0:Lcom/pinguo/camera360/guide/GuideViewFifth;
#getter for: Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;
invoke-static {v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$5(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
move-result-object v3
#calls: Lcom/pinguo/camera360/guide/GuideViewFifth;->doAlphaAnimation(Landroid/view/View;)V
invoke-static {v2, v3}, Lcom/pinguo/camera360/guide/GuideViewFifth;->access$1(Lcom/pinguo/camera360/guide/GuideViewFifth;Landroid/view/View;)V
goto :goto_a
:pswitch_data_7c
.packed-switch 0x1
:pswitch_b
:pswitch_30
:pswitch_55
.end packed-switch
.end method