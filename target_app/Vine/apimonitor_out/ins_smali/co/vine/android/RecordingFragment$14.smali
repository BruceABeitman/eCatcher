.class  Lco/vine/android/RecordingFragment$14;
.super Ljava/lang/Object;
.source "RecordingFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment$14;->this$0:Lco/vine/android/RecordingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Lco/vine/android/RecordingFragment$14;->this$0:Lco/vine/android/RecordingFragment;
invoke-virtual {v1}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
:cond_b
return-void
.end method