.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$3;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/website/WebSiteShareMainActivity$3; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/website/WebSiteInfoBean;
iget-object v3, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
if-eqz v3, :cond_14
iget-object v3, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_1a
:cond_14
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->goToBind()V
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$9(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
:cond_19
:goto_19
const-string v1, " - Lcom/pinguo/share/website/WebSiteShareMainActivity$3; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z
move-result v3
if-eqz v3, :cond_40
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v3
invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z
move-result v4
if-eqz v4, :cond_3e
:goto_2c
invoke-static {v0, v3, v1}, Lcom/pinguo/share/bind/BindManager;->changeActivate(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Z
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$8(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->notifyDataSetChanged()V
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->showAtCount()V
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$14(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
goto :goto_19
:cond_3e
move v1, v2
goto :goto_2c
:cond_40
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->bindPressed:Z
invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$15(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z
move-result v3
if-nez v3, :cond_19
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;
invoke-static {v4}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$16(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/bind/MyBroadCastReceiver;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->unregisterFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
new-instance v4, Landroid/content/Intent;
const-string/jumbo v5, "com.pinguo.camera360.share.bind.FetchCloudBindInfoService"
invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v4}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->stopService(Landroid/content/Intent;)Z
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->bindPressed:Z
invoke-static {v3, v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;
move-result-object v2
const-wide/16 v3, 0x5dc
invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
iget-object v2, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
#setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$18(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/bind/BindManager;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/BindManager;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-virtual {v1, v2}, Lcom/pinguo/share/bind/BindManager;->setBindCallback(Lcom/pinguo/share/bind/BindManager$BindCallback;)V
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/bind/BindManager;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/BindManager;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;
move-result-object v3
iget-object v4, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z
move-result v5
invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pinguo/share/bind/BindManager;->startWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
goto/16 :goto_19
.end method