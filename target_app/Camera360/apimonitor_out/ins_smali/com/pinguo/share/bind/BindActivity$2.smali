.class  Lcom/pinguo/share/bind/BindActivity$2;
.super Ljava/lang/Object;
.source "BindActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/share/bind/BindActivity;
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/bind/BindActivity$2;)Lcom/pinguo/share/bind/BindActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/bind/BindActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->isCanClick:Z
invoke-static {v2}, Lcom/pinguo/share/bind/BindActivity;->access$5(Lcom/pinguo/share/bind/BindActivity;)Z
move-result v2
if-eqz v2, :cond_95
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
const/4 v3, 0x0
#setter for: Lcom/pinguo/share/bind/BindActivity;->isCanClick:Z
invoke-static {v2, v3}, Lcom/pinguo/share/bind/BindActivity;->access$6(Lcom/pinguo/share/bind/BindActivity;Z)V
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;
move-result-object v2
const/4 v3, 0x5
const-wide/16 v4, 0x5dc
invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
iget-object v3, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;
invoke-static {v3}, Lcom/pinguo/share/bind/BindActivity;->access$8(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/bind/MyBroadCastReceiver;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/bind/BindActivity;->unregisterFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v0
sget-object v2, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;
invoke-virtual {v2}, Lcom/pinguo/share/bind/DispatchBean;->getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v2
aget-object v1, v2, v0
invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_96
new-instance v2, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
iget-object v3, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-direct {v2, v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
const v5, 0x7f080071
invoke-virtual {v4, v5}, Lcom/pinguo/share/bind/BindActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "\r\n\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, v1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v2
const v3, 0x7f08006f
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v2
const v3, 0x7f080070
new-instance v4, Lcom/pinguo/share/bind/BindActivity$2$1;
invoke-direct {v4, p0, v1}, Lcom/pinguo/share/bind/BindActivity$2$1;-><init>(Lcom/pinguo/share/bind/BindActivity$2;Lcom/pinguo/share/website/WebSiteInfoBean;)V
invoke-virtual {v2, v3, v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V
:goto_95
:cond_95
const-string v1, " - Lcom/pinguo/share/bind/BindActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_96
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-static {v2}, Lcom/pinguo/share/bind/BindManager;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/BindManager;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v2, v3}, Lcom/pinguo/share/bind/BindManager;->setBindCallback(Lcom/pinguo/share/bind/BindManager$BindCallback;)V
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
#calls: Lcom/pinguo/share/bind/BindActivity;->webBind(Lcom/pinguo/share/website/WebSiteInfoBean;)V
invoke-static {v2, v1}, Lcom/pinguo/share/bind/BindActivity;->access$9(Lcom/pinguo/share/bind/BindActivity;Lcom/pinguo/share/website/WebSiteInfoBean;)V
invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$10(I)V
goto :goto_95
.end method