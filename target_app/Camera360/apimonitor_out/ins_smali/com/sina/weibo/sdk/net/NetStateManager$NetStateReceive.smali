.class public Lcom/sina/weibo/sdk/net/NetStateManager$NetStateReceive;
.super Landroid/content/BroadcastReceiver;
.source "NetStateManager.java"
.field final synthetic this$0:Lcom/sina/weibo/sdk/net/NetStateManager;
.method public constructor <init>(Lcom/sina/weibo/sdk/net/NetStateManager;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/net/NetStateManager$NetStateReceive;->this$0:Lcom/sina/weibo/sdk/net/NetStateManager;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
invoke-static {p1}, Lcom/sina/weibo/sdk/net/NetStateManager;->access$0(Landroid/content/Context;)V
const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2e
const-string/jumbo v2, "wifi"
invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/WifiManager;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v2
if-eqz v2, :cond_2a
const/4 v2, -0x1
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v3
if-ne v2, v3, :cond_2e
:cond_2a
sget-object v2, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->Mobile:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;
sput-object v2, Lcom/sina/weibo/sdk/net/NetStateManager;->CUR_NETSTATE:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;
:cond_2e
return-void
.end method