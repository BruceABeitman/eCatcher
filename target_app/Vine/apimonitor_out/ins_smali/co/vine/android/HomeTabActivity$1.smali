.class  Lco/vine/android/HomeTabActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeTabActivity.java"
.field final synthetic this$0:Lco/vine/android/HomeTabActivity;
.method constructor <init>(Lco/vine/android/HomeTabActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
const/4 v3, 0x0
const-string v2, "messages_count"
invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const-string v2, "notifications_count"
invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
iget-object v2, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;
#setter for: Lco/vine/android/HomeTabActivity;->mActivityCount:I
invoke-static {v2, v1}, Lco/vine/android/HomeTabActivity;->access$002(Lco/vine/android/HomeTabActivity;I)I
iget-object v2, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;
#setter for: Lco/vine/android/HomeTabActivity;->mMessageCount:I
invoke-static {v2, v0}, Lco/vine/android/HomeTabActivity;->access$102(Lco/vine/android/HomeTabActivity;I)I
iget-object v2, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;
#calls: Lco/vine/android/HomeTabActivity;->invalidateMessagesBadge()V
invoke-static {v2}, Lco/vine/android/HomeTabActivity;->access$200(Lco/vine/android/HomeTabActivity;)V
iget-object v2, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;
invoke-virtual {v2}, Lco/vine/android/HomeTabActivity;->invalidateActivityBadge()V
return-void
.end method