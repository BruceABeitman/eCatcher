.class  Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;
.super Ljava/lang/Object;
.source "SdkVideoTimer.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;
.method constructor <init>(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;->this$0:Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;->this$0:Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;
#getter for: Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
invoke-static {v1}, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->access$000(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
move-result-object v1
invoke-interface {v1}, Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getVisibility()I
move-result v1
if-eqz v1, :cond_16
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
:cond_16
return-void
.end method