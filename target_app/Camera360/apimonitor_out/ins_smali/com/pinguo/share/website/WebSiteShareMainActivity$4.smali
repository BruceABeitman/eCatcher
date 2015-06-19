.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$4;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
return-object v0
.end method
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/website/WebSiteShareMainActivity$4; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
check-cast v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
invoke-virtual {v0, p3}, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/share/website/WebSiteInfoBean;
iget-object v2, v1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
if-eqz v2, :cond_19
iget-object v2, v1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_1f
:cond_19
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->goToBind()V
invoke-static {v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$9(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
:goto_1e
:cond_1e
const-string v1, " - Lcom/pinguo/share/website/WebSiteShareMainActivity$4; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v6
:cond_1f
invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z
move-result v2
if-eqz v2, :cond_1e
new-instance v2, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {v2, v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
const v5, 0x7f080071
invoke-virtual {v4, v5}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getString(I)Ljava/lang/String;
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
new-instance v4, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;
invoke-direct {v4, p0, v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;Lcom/pinguo/share/website/WebSiteInfoBean;)V
invoke-virtual {v2, v3, v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V
goto :goto_1e
.end method