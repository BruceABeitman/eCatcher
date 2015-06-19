.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$2;
.super Lcom/pinguo/share/bind/MyBroadCastReceiver;
.source "WebSiteShareMainActivity.java"
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$2;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {p0}, Lcom/pinguo/share/bind/MyBroadCastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "rannum"
const-wide/16 v4, 0x0
invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v1
const-string/jumbo v3, "FetchCloudBindInfoService.MyBroadCastReceiver"
invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_21
iget-wide v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$2;->curRan:J
cmp-long v3, v1, v3
if-nez v3, :cond_21
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$2;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->addAdapter()V
invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$13(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
:cond_21
return-void
.end method