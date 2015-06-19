.class  Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;
.super Ljava/lang/Object;
.source "ItemInstallButton.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
.method constructor <init>(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/view/ItemInstallButton$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)I
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_1d
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
move-result-object v0
check-cast p1, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onUninstallClick(Landroid/view/View;)V
:cond_1c
:goto_1c
const-string v1, " - Lcom/pinguo/camera360/shop/view/ItemInstallButton$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_32
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
move-result-object v0
check-cast p1, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onInstallingClick(Landroid/view/View;)V
goto :goto_1c
:cond_32
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
#getter for: Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
move-result-object v0
check-cast p1, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onInstalledClick(Landroid/view/View;)V
goto :goto_1c
.end method