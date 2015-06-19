.class public final Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;
.super Landroid/os/Handler;
.source "PGSsoActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
.method public constructor <init>(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
const/4 v4, 0x0
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_70
:goto_6
:cond_6
return-void
:pswitch_7
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-nez v1, :cond_6
:cond_1b
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
new-instance v2, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v3, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
invoke-direct {v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
#setter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1, v2}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$1(Lcom/pinguo/camera360/login/ui/PGSsoActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_6
:pswitch_4c
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_69
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_69
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
#getter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_69
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;
const/4 v2, 0x0
#setter for: Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1, v2}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->access$1(Lcom/pinguo/camera360/login/ui/PGSsoActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
goto :goto_6
:pswitch_data_70
.packed-switch 0x1
:pswitch_7
:pswitch_4c
.end packed-switch
.end method