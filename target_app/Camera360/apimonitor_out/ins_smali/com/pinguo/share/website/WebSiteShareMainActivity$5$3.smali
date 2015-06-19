.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"
.implements Landroid/content/DialogInterface$OnKeyListener;
.field final synthetic this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
const/4 v1, 0x4
if-ne p2, v1, :cond_34
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;
invoke-virtual {v1}, Lcom/pinguo/share/ui/ShareProcessBar;->isShowing()Z
move-result v1
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;
invoke-virtual {v1}, Lcom/pinguo/share/ui/ShareProcessBar;->dismiss()V
:cond_27
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v1
#setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShowDialog:Z
invoke-static {v1, v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$22(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V
invoke-static {}, Lcom/pinguo/share/net/NetConnection;->quitFile()V
const/4 v0, 0x1
:cond_34
move v2, v0
const-string v1, " - Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method