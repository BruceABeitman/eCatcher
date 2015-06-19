.class  Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;
.super Ljava/lang/Object;
.source "DetailInstallButton.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
.method constructor <init>(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/view/DetailInstallButton$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_1b
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onUninstallClick(Landroid/view/View;)V
:goto_1a
:cond_1a
const-string v1, " - Lcom/pinguo/camera360/shop/view/DetailInstallButton$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_2e
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onInstallingClick(Landroid/view/View;)V
goto :goto_1a
:cond_2e
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onInstalledClick(Landroid/view/View;)V
goto :goto_1a
.end method