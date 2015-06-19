.class  Lco/vine/android/player/OldSdkVideoView$4;
.super Ljava/lang/Object;
.source "OldSdkVideoView.java"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.field final synthetic this$0:Lco/vine/android/player/OldSdkVideoView;
.method constructor <init>(Lco/vine/android/player/OldSdkVideoView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompletion(Landroid/media/MediaPlayer;)V
.registers 4
const/4 v1, 0x5
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
#setter for: Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
invoke-static {v0, v1}, Lco/vine/android/player/OldSdkVideoView;->access$502(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
#setter for: Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
invoke-static {v0, v1}, Lco/vine/android/player/OldSdkVideoView;->access$1502(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
:cond_1c
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1600(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1600(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
move-result-object v0
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$4;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-interface {v0, v1}, Lco/vine/android/player/VideoViewInterface$OnCompletionListener;->onCompletion(Lco/vine/android/player/VideoViewInterface;)V
:cond_2f
return-void
.end method