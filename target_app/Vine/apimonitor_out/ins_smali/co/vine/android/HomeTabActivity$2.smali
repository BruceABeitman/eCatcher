.class  Lco/vine/android/HomeTabActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "HomeTabActivity.java"
.field final synthetic this$0:Lco/vine/android/HomeTabActivity;
.method constructor <init>(Lco/vine/android/HomeTabActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/HomeTabActivity$2;->this$0:Lco/vine/android/HomeTabActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
iget-object v2, p0, Lco/vine/android/HomeTabActivity$2;->this$0:Lco/vine/android/HomeTabActivity;
#getter for: Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-static {v2}, Lco/vine/android/HomeTabActivity;->access$300(Lco/vine/android/HomeTabActivity;)Lco/vine/android/widget/tabs/TabsAdapter;
move-result-object v2
const/4 v3, 0x2
invoke-virtual {v2, v3}, Lco/vine/android/widget/tabs/TabsAdapter;->getTab(I)Lco/vine/android/widget/tabs/TabInfo;
move-result-object v1
if-eqz v1, :cond_1a
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v2, v0, Lco/vine/android/ExploreFragment;
if-eqz v2, :cond_1a
check-cast v0, Lco/vine/android/ExploreFragment;
invoke-virtual {v0}, Lco/vine/android/ExploreFragment;->reloadWebView()V
:cond_1a
return-void
.end method