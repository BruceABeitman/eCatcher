.class  Lco/vine/android/ExploreFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ExploreFragment.java"
.field final synthetic this$0:Lco/vine/android/ExploreFragment;
.method constructor <init>(Lco/vine/android/ExploreFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ExploreFragment$1;->this$0:Lco/vine/android/ExploreFragment;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v2, "connectivity"
invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_19
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v2
if-eqz v2, :cond_19
iget-object v2, p0, Lco/vine/android/ExploreFragment$1;->this$0:Lco/vine/android/ExploreFragment;
invoke-virtual {v2}, Lco/vine/android/ExploreFragment;->reloadWebView()V
:cond_19
return-void
.end method