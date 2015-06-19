.class  Lco/vine/android/HomeTimelineFragment$1;
.super Ljava/lang/Object;
.source "HomeTimelineFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/HomeTimelineFragment;
.method constructor <init>(Lco/vine/android/HomeTimelineFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/HomeTimelineFragment$1;->this$0:Lco/vine/android/HomeTimelineFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/HomeTimelineFragment$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, "InviteBanner"
invoke-static {v1}, Lco/vine/android/util/FlurryUtils;->trackVisitFindFriends(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lco/vine/android/HomeTimelineFragment$1;->this$0:Lco/vine/android/HomeTimelineFragment;
invoke-virtual {v1}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lco/vine/android/FindFriendsActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lco/vine/android/HomeTimelineFragment$1;->this$0:Lco/vine/android/HomeTimelineFragment;
invoke-virtual {v1}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lco/vine/android/HomeTimelineFragment$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method