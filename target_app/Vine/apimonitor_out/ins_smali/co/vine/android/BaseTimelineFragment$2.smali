.class  Lco/vine/android/BaseTimelineFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "BaseTimelineFragment.java"
.field final synthetic this$0:Lco/vine/android/BaseTimelineFragment;
.method constructor <init>(Lco/vine/android/BaseTimelineFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/BaseTimelineFragment$2;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
if-eqz p2, :cond_8
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_e
:cond_8
const-string v1, "Something wrong has happened"
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:goto_d
return-void
:cond_e
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
sget-object v2, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$2;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v1, v0}, Lco/vine/android/widget/GenericTimelineAdapter;->toggleMute(Z)V
goto :goto_d
.end method