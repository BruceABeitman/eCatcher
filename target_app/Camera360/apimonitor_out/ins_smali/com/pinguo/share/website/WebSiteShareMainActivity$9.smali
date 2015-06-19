.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$9;
.super Landroid/os/AsyncTask;
.source "WebSiteShareMainActivity.java"
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
.field private final synthetic val$site:Ljava/lang/String;
.field private final synthetic val$value:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
iput-object p2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->val$value:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->val$site:Ljava/lang/String;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {p0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->doInBackground([Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)[Ljava/lang/Object;
.registers 12
const/4 v1, 0x0
const/4 v0, 0x2
new-array v6, v0, [Ljava/lang/Object;
aget-object v0, p1, v1
aput-object v0, v6, v1
const/4 v8, 0x0
:try_start_9
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->val$value:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->val$site:Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v5}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z
move-result v5
if-eqz v5, :cond_60
const-string/jumbo v5, "1"
:goto_3a
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/share/net/ServiceConnection;->ssoBind(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const/4 v0, 0x0
aget-object v0, p1, v0
invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$32(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/share/bind/BindManager;->getWebSiteInfoBean(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v1
const/4 v2, 0x1
invoke-static {v9, v0, v1, v2}, Lcom/pinguo/share/bind/BindManager;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v8
const/4 v0, 0x1
aput-object v8, v6, v0
:goto_5f
:cond_5f
return-object v6
:cond_60
const-string/jumbo v5, "0"
:try_end_63
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_63} :catch_64
goto :goto_3a
:catch_64
move-exception v7
invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5f
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->onPostExecute([Ljava/lang/Object;)V
return-void
.end method
.method protected onPostExecute([Ljava/lang/Object;)V
.registers 7
const/4 v2, 0x0
aget-object v1, p1, v2
check-cast v1, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
const/4 v2, 0x1
aget-object v0, p1, v2
check-cast v0, Ljava/lang/String;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v2
if-eqz v2, :cond_25
if-eqz v0, :cond_26
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_26
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v2, v0}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->addAdapter()V
invoke-static {v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$13(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
:goto_22
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->cancel()V
:cond_25
return-void
:cond_26
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
const v4, 0x7f08003d
invoke-virtual {v3, v4}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
goto :goto_22
.end method