.class  Lco/vine/android/RecordingFragment$15;
.super Ljava/lang/Object;
.source "RecordingFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment$15;->this$0:Lco/vine/android/RecordingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment$15;->this$0:Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->doOneFrame()V
iget-object v0, p0, Lco/vine/android/RecordingFragment$15;->this$0:Lco/vine/android/RecordingFragment;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$1608(Lco/vine/android/RecordingFragment;)I
iget-object v0, p0, Lco/vine/android/RecordingFragment$15;->this$0:Lco/vine/android/RecordingFragment;
#calls: Lco/vine/android/RecordingFragment;->doStopMotion()V
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$1700(Lco/vine/android/RecordingFragment;)V
return-void
.end method