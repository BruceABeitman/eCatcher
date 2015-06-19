.class  Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;
.super Landroid/os/Handler;
.source "Camera360FeedbackActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
.method constructor <init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
const/4 v4, 0x0
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_8a
:goto_6
:pswitch_6
:cond_6
return-void
:pswitch_7
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#calls: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->updateFeedbackUI()V
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$0(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)V
goto :goto_6
:pswitch_d
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-nez v1, :cond_6
:cond_21
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
new-instance v2, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
invoke-direct {v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
#setter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1, v2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$2(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
const/4 v2, 0x6
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_6
:pswitch_53
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_6
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_6
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
const/4 v2, 0x0
#setter for: Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1, v2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->access$2(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
goto :goto_6
:pswitch_77
iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
const v2, 0x7f08023e
invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
const/16 v1, 0x11
invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto/16 :goto_6
:pswitch_data_8a
.packed-switch 0x0
:pswitch_7
:pswitch_6
:pswitch_d
:pswitch_53
:pswitch_77
.end packed-switch
.end method