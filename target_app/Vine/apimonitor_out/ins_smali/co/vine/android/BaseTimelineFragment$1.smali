.class  Lco/vine/android/BaseTimelineFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseTimelineFragment.java"
.field final synthetic this$0:Lco/vine/android/BaseTimelineFragment;
.method constructor <init>(Lco/vine/android/BaseTimelineFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/BaseTimelineFragment$1;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
if-eqz p2, :cond_23
const-string v1, "co.vine.android.service.mergePostFeed"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_23
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string v2, "post"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lco/vine/android/api/VinePost;
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$1;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
check-cast v1, Lco/vine/android/widget/FeedAdapter;
invoke-virtual {v1, v0}, Lco/vine/android/widget/FeedAdapter;->mergeMyPost(Lco/vine/android/api/VinePost;)V
:cond_23
return-void
.end method