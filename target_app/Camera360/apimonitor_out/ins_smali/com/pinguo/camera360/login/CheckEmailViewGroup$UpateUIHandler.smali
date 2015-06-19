.class public Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
.super Landroid/os/Handler;
.source "CheckEmailViewGroup.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
.method public constructor <init>(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
const/4 v3, 0x4
const/4 v4, 0x0
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_f0
:goto_7
:cond_7
return-void
:pswitch_8
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I
move-result v2
if-eq v2, v3, :cond_7
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_7
:pswitch_1e
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I
move-result v2
if-eqz v2, :cond_7
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_7
:pswitch_34
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I
move-result v2
if-eqz v2, :cond_49
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_49
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
const v3, 0x7f020240
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mRotationAnim:Landroid/view/animation/Animation;
invoke-static {v3}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$1(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/view/animation/Animation;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_7
:pswitch_65
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
const v3, 0x7f02034f
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I
move-result v2
if-eqz v2, :cond_7
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_7
:pswitch_91
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
const v3, 0x7f02034b
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I
move-result v2
if-eqz v2, :cond_7
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_7
:pswitch_bd
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I
move-result v2
if-eq v2, v3, :cond_db
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
#getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_db
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;
invoke-virtual {v2}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
check-cast v2, Landroid/app/Activity;
const v3, 0x7f08016c
invoke-direct {v0, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto/16 :goto_7
:pswitch_data_f0
.packed-switch 0x1
:pswitch_8
:pswitch_1e
:pswitch_34
:pswitch_65
:pswitch_91
:pswitch_bd
.end packed-switch
.end method